-- Config.lua
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local AceGUI = LibStub("AceGUI-3.0")
local LDB = LibStub("LibDataBroker-1.1", true)
local LDBIcon = LDB and LibStub("LibDBIcon-1.0", true)
local icon_loaded = false
local icon_name = "BisRenewedIcon"
local CURRENT_DB_VERSION = 9

local keyToClassSpec = {}

local function updateMapIconButton()
    local icon_lib = LibStub("LibDBIcon-1.0", true)
    if not icon_lib or not icon_lib:IsRegistered(icon_name) then return end
    if BisTooltipAddon.db.profile.minimap.hide then
        icon_lib:Hide(icon_name)
    else
        icon_lib:Show(icon_name)
    end
end

local function GetPlayerClassIndex()
    local _, englishClass = UnitClass("player")
    if BisTooltip_ClassData and englishClass then
        for i = 1, #BisTooltip_ClassData do
            local cleanName = BisTooltip_ClassData[i].name:gsub("%s+", ""):upper()
            if cleanName == englishClass then
                return i
            end
        end
    end
    return 1
end

local db_defaults = {
    profile = {
        class_index = nil, spec_index = 1, phase_index = 1,
        filter_specs = {}, highlight_spec = {},
        highlight_color = "purple", use_class_colors = true,
        filter_class_names = false,
        minimap = { hide = false }, tooltip_with_ctrl = false,
        show_sources = true, source_color = "green",
        show_item_states = true, dark_tooltips = false,
        show_item_borders = true, frame_pos = nil, scroll_status = {},
        show_ilvl = false, ilvl_color = "white",
        favorites = {}, favorites_pos = nil, fav_counter = 0, favorite_icon = 1,
        favorite_color = "yellow", fav_scroll_status = {}
    }
}

local configTable = {
    type = "group",
    args = {
        header_general = {
            name = "General",
            type = "header",
            order = 1,
        },

        minimap_icon = {
            name = "Show Minimap Icon",
            order = 2,
            desc = "Toggle display of the minimap icon\n(Requires Reload)",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.profile.minimap.hide = not val
                updateMapIconButton()
            end,
            get = function(info) return not BisTooltipAddon.db.profile.minimap.hide end
        },

        show_item_borders = {
            name = "Show Item Borders",
            order = 3,
            desc = "Toggle display of a colored border around equipped and banked items in the addon window",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.profile.show_item_borders = val
                if BisTooltipAddon.RefreshItemStateVisuals then BisTooltipAddon.RefreshItemStateVisuals() end
            end,
            get = function(info) return BisTooltipAddon.db.profile.show_item_borders end
        },

        show_ilvl = {
            name = "Show iLvL",
            order = 4,
            desc = "Display item level on item icons in the addon window",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.profile.show_ilvl = val
                if BisTooltipAddon.RefreshItemStateVisuals then BisTooltipAddon.RefreshItemStateVisuals() end
            end,
            get = function(info)
                if BisTooltipAddon.db.profile.show_ilvl == nil then return false end
                return BisTooltipAddon.db.profile.show_ilvl
            end
        },

        ilvl_color = {
            name = "iLvL Color",
            order = 5,
            desc = "Changes the text color of the item level on icons",
            type = "select",
            width = "full",
            disabled = function() return BisTooltipAddon.db.profile.show_ilvl == false end,
            values = {
                ["purple"]    = "Purple",
                ["green"]     = "Green",
                ["red"]       = "Red",
                ["lightblue"] = "Light Blue",
                ["yellow"]    = "Yellow",
                ["orange"]    = "Orange",
                ["pink"]      = "Pink",
                ["cyan"]      = "Cyan",
                ["white"]     = "White"
            },
            set = function(info, val)
                BisTooltipAddon.db.profile.ilvl_color = val
                if BisTooltipAddon.RefreshItemStateVisuals then BisTooltipAddon.RefreshItemStateVisuals() end
            end,
            get = function(info)
                return BisTooltipAddon.db.profile.ilvl_color or "white"
            end
        },

        header_tooltips = {
            name = "Tooltips",
            type = "header",
            order = 10,
        },

        tooltip_with_ctrl = {
            name = "Show Item Tooltips only with Ctrl",
            order = 11,
            desc = "Only show tooltips when holding down Ctrl key",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.profile.tooltip_with_ctrl = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.profile.tooltip_with_ctrl end
        },

        show_item_states = {
            name = "Show Bags/Bank Item Status",
            order = 12,
            desc = "Show a line that says whenever an item is already in your bags or bank",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.profile.show_item_states = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info)
                if BisTooltipAddon.db.profile.show_item_states == nil then return true end
                return BisTooltipAddon.db.profile.show_item_states
            end
        },

        filter_class_names = {
            name = "Hide Class Names",
            order = 13,
            desc = "Removes class names from item tooltips, leaving only spec name",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.profile.filter_class_names = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.profile.filter_class_names end
        },

        use_class_colors = {
            name = "Use Class Colors",
            order = 14,
            desc = "Colorize class/spec text with class colors",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.profile.use_class_colors = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info)
                if BisTooltipAddon.db.profile.use_class_colors == nil then return true end
                return BisTooltipAddon.db.profile.use_class_colors
            end
        },

        dark_tooltips = {
            name = "Dark Tooltips",
            order = 15,
            desc = "Changes the tooltip background to a solid black color",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.profile.dark_tooltips = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.profile.dark_tooltips end
        },

        highlight_spec = {
            name = "Highlight Spec",
            order = 16,
            desc = "Highlights selected spec in item tooltips",
            type = "select",
            values = {},
            width = "full",
            set = function(info, key)
                if key == "none" then
                    BisTooltipAddon.db.profile.highlight_spec = {}
                else
                    local entry = keyToClassSpec[key]
                    if entry then
                        BisTooltipAddon.db.profile.highlight_spec = {
                            key = key,
                            class_name = entry.class,
                            spec_name = entry.spec
                        }
                    end
                end
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info)
                return (BisTooltipAddon.db.profile.highlight_spec and BisTooltipAddon.db.profile.highlight_spec.key) or "none"
            end
        },

        highlight_color = {
            name = "Highlight Color",
            order = 17,
            desc = "Changes the text color of your highlighted spec",
            type = "select",
            width = "full",
            values = {
                ["class"]     = "Match Class Color",
                ["purple"]    = "Purple",
                ["green"]     = "Green",
                ["red"]       = "Red",
                ["lightblue"] = "Light Blue",
                ["yellow"]    = "Yellow",
                ["orange"]    = "Orange",
                ["pink"]      = "Pink",
                ["cyan"]      = "Cyan"
            },
            set = function(info, val)
                BisTooltipAddon.db.profile.highlight_color = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.profile.highlight_color or "class" end
        },

        show_sources = {
            name = "Show Item Sources",
            order = 18,
            desc = "Shows item drop source in tooltips",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.profile.show_sources = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info)
                if BisTooltipAddon.db.profile.show_sources == nil then return true end
                return BisTooltipAddon.db.profile.show_sources
            end
        },

        source_color = {
            name = "Source Color",
            order = 19,
            desc = "Changes the text color of the item's drop source",
            type = "select",
            width = "full",
            disabled = function() return BisTooltipAddon.db.profile.show_sources == false end,
            values = {
                ["purple"]    = "Purple",
                ["green"]     = "Green",
                ["red"]       = "Red",
                ["lightblue"] = "Light Blue",
                ["yellow"]    = "Yellow",
                ["orange"]    = "Orange",
                ["pink"]      = "Pink",
                ["cyan"]      = "Cyan",
                ["white"]     = "White"
            },
            set = function(info, val)
                BisTooltipAddon.db.profile.source_color = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.profile.source_color or "green" end
        },

        header_favorites = {
            name = "Favorites",
            type = "header",
            order = 20,
        },

        favorite_icon = {
            name = "Favorite Icon",
            order = 21,
            desc = "Choose which raid target mark to use for favorited items",
            type = "select",
            width = "full",
            values = {
                [1] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:14:14:0:0:256:256:0:64:0:64|t Star",
                [2] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:14:14:0:0:256:256:64:128:0:64|t Circle",
                [3] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:14:14:0:0:256:256:128:192:0:64|t Diamond",
                [4] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:14:14:0:0:256:256:192:256:0:64|t Triangle",
                [5] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:14:14:0:0:256:256:0:64:64:128|t Moon",
                [6] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:14:14:0:0:256:256:64:128:64:128|t Square",
                [7] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:14:14:0:0:256:256:128:192:64:128|t Cross",
                [8] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:14:14:0:0:256:256:192:256:64:128|t Skull",
            },
            set = function(info, val)
                BisTooltipAddon.db.profile.favorite_icon = val
                if BisTooltipAddon.RefreshItemStateVisuals then
                    BisTooltipAddon.RefreshItemStateVisuals()
                end
                if BisTooltipAddon.RefreshFavoritesWindow then
                    BisTooltipAddon:RefreshFavoritesWindow()
                end
                if BisTooltipAddon.ClearTooltipCache then
                    BisTooltipAddon:ClearTooltipCache()
                end
            end,
            get = function(info)
                return BisTooltipAddon.db.profile.favorite_icon or 1
            end
        },

        favorite_color = {
            name = "Favorite Text Color",
            order = 22,
            desc = "Changes the text color of the 'Favorite' indicator in tooltips",
            type = "select",
            width = "full",
            values = {
                ["purple"]    = "Purple",
                ["green"]     = "Green",
                ["red"]       = "Red",
                ["lightblue"] = "Light Blue",
                ["yellow"]    = "Yellow",
                ["orange"]    = "Orange",
                ["pink"]      = "Pink",
                ["cyan"]      = "Cyan",
                ["white"]     = "White"
            },
            set = function(info, val)
                BisTooltipAddon.db.profile.favorite_color = val
                if BisTooltipAddon.ClearTooltipCache then
                    BisTooltipAddon:ClearTooltipCache()
                end
            end,
            get = function(info)
                return BisTooltipAddon.db.profile.favorite_color or "yellow"
            end
        },

        filter_specs = {
            name = "Hide Specs (Hold Alt to show)",
            order = 30,
            desc = "Removes checked specs from item tooltips",
            type = "multiselect",
            values = {},
            set = function(info, key, val)
                local entry = keyToClassSpec[key]
                if not entry then return end
                local class_name = entry.class
                local spec_name = entry.spec
                if type(BisTooltipAddon.db.profile.filter_specs[class_name]) ~= "table" then BisTooltipAddon.db.profile.filter_specs[class_name] = {} end
                BisTooltipAddon.db.profile.filter_specs[class_name][spec_name] = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info, key)
                local entry = keyToClassSpec[key]
                if not entry then return false end
                local class_name = entry.class
                local spec_name = entry.spec
                local fs = BisTooltipAddon.db and BisTooltipAddon.db.profile and BisTooltipAddon.db.profile.filter_specs
                if not fs or type(fs[class_name]) ~= "table" then return false end
                return fs[class_name][spec_name] or false
            end
        }
    }
}

local function buildFilterSpecOptions()
    local filter_specs_options = {}
    local highlight_specs_options = {["none"] = "None" }
    wipe(keyToClassSpec)
    if BisTooltip_ClassData then
        for ci, class in ipairs(BisTooltip_ClassData) do
            for si, spec in ipairs(class.specs) do
                local icon = BisTooltip_SpecIcons and BisTooltip_SpecIcons[class.name] and BisTooltip_SpecIcons[class.name][spec]
                local iconStr = icon and ("|T" .. icon .. ":16:16:0:0|t ") or ""
                local option_val = iconStr .. class.name .. " " .. spec
                local option_key = ci .. ":" .. si
                filter_specs_options[option_key] = option_val
                highlight_specs_options[option_key] = option_val
                keyToClassSpec[option_key] = { class = class.name, spec = spec }
            end
        end
    end
    configTable.args.filter_specs.values = filter_specs_options
    configTable.args.highlight_spec.values = highlight_specs_options
end

local function DeepCopyTable(src)
    if type(src) ~= "table" then return src end
    local copy = {}
    for k, v in pairs(src) do
        if type(v) == "table" then
            copy[k] = DeepCopyTable(v)
        else
            copy[k] = v
        end
    end
    return copy
end

local function migrateAddonDB()
    local legacyChar = BisTooltipAddon.db.char
    if legacyChar and not legacyChar.migratedToProfile and next(legacyChar) then
        for k, v in pairs(legacyChar) do
            if k == "favorites" and type(v) == "table" then
                BisTooltipAddon.db.profile.favorites = BisTooltipAddon.db.profile.favorites or {}
                for itemID, orderVal in pairs(v) do
                    local existingOrder = BisTooltipAddon.db.profile.favorites[itemID] or 0
                    local legacyOrder = type(orderVal) == "number" and orderVal or 0
                    BisTooltipAddon.db.profile.favorites[itemID] = (existingOrder > legacyOrder) and existingOrder or legacyOrder
                end
            elseif k == "fav_counter" and type(v) == "number" then
                local currentCounter = BisTooltipAddon.db.profile.fav_counter or 0
                BisTooltipAddon.db.profile.fav_counter = (currentCounter > v) and currentCounter or v
            elseif k == "filter_specs" and type(v) == "table" then
                BisTooltipAddon.db.profile.filter_specs = BisTooltipAddon.db.profile.filter_specs or {}
                for class, specs in pairs(v) do
                    if type(specs) == "table" then
                        BisTooltipAddon.db.profile.filter_specs[class] = BisTooltipAddon.db.profile.filter_specs[class] or {}
                        for spec, isFiltered in pairs(specs) do
                            if BisTooltipAddon.db.profile.filter_specs[class][spec] == nil then
                                BisTooltipAddon.db.profile.filter_specs[class][spec] = isFiltered
                            end
                        end
                    end
                end
            elseif k ~= "migratedToProfile" and BisTooltipAddon.db.profile[k] == nil then
                BisTooltipAddon.db.profile[k] = DeepCopyTable(v)
            end
        end
        legacyChar.migratedToProfile = true
    end

    local dbVersion = tonumber(BisTooltipAddon.db.profile.version)
    if not dbVersion or dbVersion < CURRENT_DB_VERSION then
        if type(BisTooltipAddon.db.profile.highlight_spec) ~= "table" then BisTooltipAddon.db.profile.highlight_spec = {} end
        if type(BisTooltipAddon.db.profile.filter_specs) ~= "table" then BisTooltipAddon.db.profile.filter_specs = {} end
        if not BisTooltipAddon.db.profile.class_index then BisTooltipAddon.db.profile.class_index = GetPlayerClassIndex() end
        if not BisTooltipAddon.db.profile.spec_index then BisTooltipAddon.db.profile.spec_index = 1 end
        if not BisTooltipAddon.db.profile.phase_index then BisTooltipAddon.db.profile.phase_index = 1 end

        if type(BisTooltipAddon.db.profile.fav_scroll_status) == "table" then
            BisTooltipAddon.db.profile.fav_scroll_status.scrollvalue = 0
        end
        BisTooltipAddon.db.profile.version = CURRENT_DB_VERSION
    end

    if not BisTooltipAddon.db.profile.class_index then
        BisTooltipAddon.db.profile.class_index = GetPlayerClassIndex()
    end

    if BisTooltipAddon.db.profile.show_sources == nil then BisTooltipAddon.db.profile.show_sources = true end
    if BisTooltipAddon.db.profile.show_item_states == nil then BisTooltipAddon.db.profile.show_item_states = true end
    if BisTooltipAddon.db.profile.filter_class_names == nil then BisTooltipAddon.db.profile.filter_class_names = false end
    if BisTooltipAddon.db.profile.tooltip_with_ctrl == nil then BisTooltipAddon.db.profile.tooltip_with_ctrl = false end

    if type(BisTooltipAddon.db.profile.minimap) ~= "table" then
        BisTooltipAddon.db.profile.minimap = { hide = false }
    end

    if type(BisTooltipAddon.db.profile.scroll_status) ~= "table" then BisTooltipAddon.db.profile.scroll_status = {} end
    if not BisTooltipAddon.db.profile.highlight_color then BisTooltipAddon.db.profile.highlight_color = "purple" end
    if BisTooltipAddon.db.profile.use_class_colors == nil then BisTooltipAddon.db.profile.use_class_colors = true end
    if not BisTooltipAddon.db.profile.source_color then BisTooltipAddon.db.profile.source_color = "green" end
    if BisTooltipAddon.db.profile.dark_tooltips == nil then BisTooltipAddon.db.profile.dark_tooltips = false end
    if BisTooltipAddon.db.profile.show_item_borders == nil then BisTooltipAddon.db.profile.show_item_borders = true end
    if BisTooltipAddon.db.profile.show_ilvl == nil then BisTooltipAddon.db.profile.show_ilvl = false end
    if not BisTooltipAddon.db.profile.ilvl_color then BisTooltipAddon.db.profile.ilvl_color = "white" end

    if type(BisTooltipAddon.db.profile.favorites) ~= "table" then BisTooltipAddon.db.profile.favorites = {} end

    local favIcon = tonumber(BisTooltipAddon.db.profile.favorite_icon)
    if not favIcon or favIcon < 1 or favIcon > 8 then
        BisTooltipAddon.db.profile.favorite_icon = 1
    else
        BisTooltipAddon.db.profile.favorite_icon = favIcon
    end

    if not BisTooltipAddon.db.profile.favorite_color then BisTooltipAddon.db.profile.favorite_color = "yellow" end
    BisTooltipAddon.db.profile.fav_counter = tonumber(BisTooltipAddon.db.profile.fav_counter) or 0
    if type(BisTooltipAddon.db.profile.fav_scroll_status) ~= "table" then BisTooltipAddon.db.profile.fav_scroll_status = {} end
end

function BisTooltipAddon:openConfigDialog()
    if InterfaceOptionsFrame:IsShown() then
        InterfaceOptionsFrame:Hide()
    else
        InterfaceOptionsFrame_OpenToCategory(BisTooltipAddon.AceAddonName)
        InterfaceOptionsFrame_OpenToCategory(BisTooltipAddon.AceAddonName)
    end
end

function BisTooltipAddon:addMapIcon()
    if not icon_loaded then
        local LDB = LibStub("LibDataBroker-1.1", true)
        local LDBIcon = LDB and LibStub("LibDBIcon-1.0", true)
        if LDB then
            icon_loaded = true
            local PC_MinimapBtn = LDB:NewDataObject(icon_name, {
                type = "launcher", text = "BiS-Tooltip Renewed", icon = "interface/icons/inv_weapon_glave_01.blp",
                OnClick = function(_, button)
                    if button == "LeftButton" then
                        if IsShiftKeyDown() then
                            BisTooltipAddon:ToggleFavoritesFrame()
                        else
                            BisTooltipAddon:createMainFrame()
                        end
                    elseif button == "RightButton" then
                        BisTooltipAddon:openConfigDialog()
                    end
                end,
                OnTooltipShow = function(tt)
                    tt:AddLine(BisTooltipAddon.AddonNameAndVersion)
                    tt:AddLine("|cffffff00Left click|r to open the BiS lists window")
                    tt:AddLine("|cffffff00Shift + Left click|r to open Favorites list")
                    tt:AddLine("|cffffff00Right click|r to open addon configuration window")
                end
            })

            if LDBIcon then
                LDBIcon:Register(icon_name, PC_MinimapBtn, BisTooltipAddon.db.profile.minimap)
            end
        end
    end
end

local function OnProfileChanged()
    local icon_lib = LibStub("LibDBIcon-1.0", true)
    if icon_lib and icon_lib:IsRegistered(icon_name) and icon_lib.Refresh then
        icon_lib:Refresh(icon_name, BisTooltipAddon.db.profile.minimap)
    end
    if BisTooltipAddon.reloadData then
        BisTooltipAddon:reloadData()
    end
    if BisTooltipAddon.RefreshFavoritesWindow then
        BisTooltipAddon:RefreshFavoritesWindow()
    end
    if BisTooltipAddon.RefreshItemStateVisuals then
        BisTooltipAddon:RefreshItemStateVisuals()
    end
    if BisTooltipAddon.ClearTooltipCache then
        BisTooltipAddon:ClearTooltipCache()
    end
    updateMapIconButton()
end

function BisTooltipAddon:initConfig()
    BisTooltipAddon.db = LibStub("AceDB-3.0"):New("BisTooltipRenewedDB", db_defaults, "Default")
    migrateAddonDB()
    buildFilterSpecOptions()
    configTable.name = BisTooltipAddon.AddonNameAndVersion or "BiS-Tooltip Renewed"
    LibStub("AceConfig-3.0"):RegisterOptionsTable(BisTooltipAddon.AceAddonName, configTable)
    AceConfigDialog:AddToBlizOptions(BisTooltipAddon.AceAddonName, BisTooltipAddon.AceAddonName)

    local AceDBOptions = LibStub("AceDBOptions-3.0", true)
    if AceDBOptions then
        local profileOptions = AceDBOptions:GetOptionsTable(BisTooltipAddon.db)
        local profileAppName = BisTooltipAddon.AceAddonName .. " Profiles"
        LibStub("AceConfig-3.0"):RegisterOptionsTable(profileAppName, profileOptions)
        AceConfigDialog:AddToBlizOptions(profileAppName, "Profiles", BisTooltipAddon.AceAddonName)
    end

    BisTooltipAddon.db.RegisterCallback(BisTooltipAddon, "OnProfileChanged", OnProfileChanged)
    BisTooltipAddon.db.RegisterCallback(BisTooltipAddon, "OnProfileCopied", OnProfileChanged)
    BisTooltipAddon.db.RegisterCallback(BisTooltipAddon, "OnProfileReset", OnProfileChanged)

    BisTooltipAddon.db.char = BisTooltipAddon.db.profile
end