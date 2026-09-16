-- Config.lua
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local AceGUI = LibStub("AceGUI-3.0")
local LDB = LibStub("LibDataBroker-1.1", true)
local LDBIcon = LDB and LibStub("LibDBIcon-1.0", true)
local icon_loaded = false
local icon_name = "BisTooltipIcon"

local keyToClassSpec = {}

local function GetPlayerClassIndex()
    local playerClass = UnitClass("player")
    if BisTooltip_ClassData then
        for i = 1, #BisTooltip_ClassData do
            if BisTooltip_ClassData[i].name == playerClass then
                return i
            end
        end
    end
    return 1
end

local db_defaults = {
    char = {
        class_index = nil, spec_index = 1, phase_index = 1,
        filter_specs = {}, highlight_spec = {},
        highlight_color = "purple", use_class_colors = true,
        filter_class_names = false,
        minimap = { hide = false }, tooltip_with_ctrl = false,
        show_sources = true, source_color = "green",
        show_item_states = true, dark_tooltips = false,
        show_item_borders = true, frame_pos = nil, scroll_status = {},
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
                BisTooltipAddon.db.char.minimap.hide = not val
                if LDBIcon then
                    if val then
                        LDBIcon:Show(icon_name)
                    else
                        LDBIcon:Hide(icon_name)
                    end
                end
            end,
            get = function(info) return not BisTooltipAddon.db.char.minimap.hide end
        },

        show_item_borders = {
            name = "Show Item Borders",
            order = 3,
            desc = "Toggle display of a colored border around equipped and banked items in the main window",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.char.show_item_borders = val
                if BisTooltipAddon.reloadData then BisTooltipAddon:reloadData() end
            end,
            get = function(info) return BisTooltipAddon.db.char.show_item_borders end
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
                BisTooltipAddon.db.char.tooltip_with_ctrl = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.char.tooltip_with_ctrl end
        },

        show_item_states = {
            name = "Show Bags/Bank Item Status",
            order = 12,
            desc = "Show a line that says whenever an item is already in your bags or bank",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.char.show_item_states = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info)
                if BisTooltipAddon.db.char.show_item_states == nil then return true end
                return BisTooltipAddon.db.char.show_item_states
            end
        },

        filter_class_names = {
            name = "Hide Class Names",
            order = 13,
            desc = "Removes class names from item tooltips, leaving only spec name",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.char.filter_class_names = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.char.filter_class_names end
        },

        use_class_colors = {
            name = "Use Class Colors",
            order = 14,
            desc = "Colorize class/spec text with class colors",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.char.use_class_colors = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info)
                if BisTooltipAddon.db.char.use_class_colors == nil then return true end
                return BisTooltipAddon.db.char.use_class_colors
            end
        },

        dark_tooltips = {
            name = "Dark Tooltips",
            order = 15,
            desc = "Changes the tooltip background to a solid black color",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.char.dark_tooltips = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.char.dark_tooltips end
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
                    BisTooltipAddon.db.char.highlight_spec = {}
                else
                    local entry = keyToClassSpec[key]
                    if entry then
                        BisTooltipAddon.db.char.highlight_spec = {
                            key = key,
                            class_name = entry.class,
                            spec_name = entry.spec
                        }
                    end
                end
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.char.highlight_spec.key or "none" end
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
                BisTooltipAddon.db.char.highlight_color = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.char.highlight_color or "class" end
        },

        show_sources = {
            name = "Show Item Sources",
            order = 18,
            desc = "Shows item drop source in tooltips",
            type = "toggle",
            width = "full",
            set = function(info, val)
                BisTooltipAddon.db.char.show_sources = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info)
                if BisTooltipAddon.db.char.show_sources == nil then return true end
                return BisTooltipAddon.db.char.show_sources
            end
        },

        source_color = {
            name = "Source Color",
            order = 19,
            desc = "Changes the text color of the item's drop source",
            type = "select",
            width = "full",
            disabled = function() return BisTooltipAddon.db.char.show_sources == false end,
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
                BisTooltipAddon.db.char.source_color = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info) return BisTooltipAddon.db.char.source_color or "green" end
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
                BisTooltipAddon.db.char.favorite_icon = val
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
                return BisTooltipAddon.db.char.favorite_icon or 1
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
                BisTooltipAddon.db.char.favorite_color = val
                if BisTooltipAddon.ClearTooltipCache then
                    BisTooltipAddon:ClearTooltipCache()
                end
            end,
            get = function(info)
                return BisTooltipAddon.db.char.favorite_color or "yellow"
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
                if not BisTooltipAddon.db.char.filter_specs[class_name] then BisTooltipAddon.db.char.filter_specs[class_name] = {} end
                BisTooltipAddon.db.char.filter_specs[class_name][spec_name] = val
                if BisTooltipAddon.ClearTooltipCache then BisTooltipAddon:ClearTooltipCache() end
            end,
            get = function(info, key)
                local entry = keyToClassSpec[key]
                if not entry then return false end
                local class_name = entry.class
                local spec_name = entry.spec
                if not BisTooltipAddon.db.char.filter_specs[class_name] then return false end
                return BisTooltipAddon.db.char.filter_specs[class_name][spec_name] or false
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
                local option_val = "|T" .. BisTooltip_SpecIcons[class.name][spec] .. ":16|t " .. class.name .. " " .. spec
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

local function migrateAddonDB()
    if not BisTooltipAddon.db.char.version or BisTooltipAddon.db.char.version < 8.1 then
        BisTooltipAddon.db.char.version = 8.1
        if not BisTooltipAddon.db.char.highlight_spec then BisTooltipAddon.db.char.highlight_spec = {} end
        if not BisTooltipAddon.db.char.filter_specs then BisTooltipAddon.db.char.filter_specs = {} end
        BisTooltipAddon.db.char.class_index = GetPlayerClassIndex()
        if not BisTooltipAddon.db.char.spec_index then BisTooltipAddon.db.char.spec_index = 1 end
        if not BisTooltipAddon.db.char.phase_index then BisTooltipAddon.db.char.phase_index = 1 end
    end

    if not BisTooltipAddon.db.char.class_index then
        BisTooltipAddon.db.char.class_index = GetPlayerClassIndex()
    end

    if BisTooltipAddon.db.char.show_sources == nil then BisTooltipAddon.db.char.show_sources = true end
    if BisTooltipAddon.db.char.show_item_states == nil then BisTooltipAddon.db.char.show_item_states = true end

    if BisTooltipAddon.db.char.minimap == nil then
        BisTooltipAddon.db.char.minimap = { hide = false }
    end

    if not BisTooltipAddon.db.char.scroll_status then BisTooltipAddon.db.char.scroll_status = {} end
    if not BisTooltipAddon.db.char.highlight_color then BisTooltipAddon.db.char.highlight_color = "purple" end
    if BisTooltipAddon.db.char.use_class_colors == nil then BisTooltipAddon.db.char.use_class_colors = true end
    if not BisTooltipAddon.db.char.source_color then BisTooltipAddon.db.char.source_color = "green" end
    if BisTooltipAddon.db.char.dark_tooltips == nil then BisTooltipAddon.db.char.dark_tooltips = false end
    if BisTooltipAddon.db.char.show_item_borders == nil then BisTooltipAddon.db.char.show_item_borders = true end

    if not BisTooltipAddon.db.char.favorites then BisTooltipAddon.db.char.favorites = {} end
    if not BisTooltipAddon.db.char.favorite_icon or BisTooltipAddon.db.char.favorite_icon > 8 then BisTooltipAddon.db.char.favorite_icon = 1 end
    if not BisTooltipAddon.db.char.favorite_color then BisTooltipAddon.db.char.favorite_color = "yellow" end
    if not BisTooltipAddon.db.char.fav_counter then BisTooltipAddon.db.char.fav_counter = 0 end
    if not BisTooltipAddon.db.char.fav_scroll_status then BisTooltipAddon.db.char.fav_scroll_status = {} end
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
                LDBIcon:Register(icon_name, PC_MinimapBtn, BisTooltipAddon.db.char.minimap)
            end
        end
    end
end

function BisTooltipAddon:initConfig()
    BisTooltipAddon.db = LibStub("AceDB-3.0"):New("BisTooltipRenewedDB", db_defaults, "Default")
    migrateAddonDB()
    buildFilterSpecOptions()
    LibStub("AceConfig-3.0"):RegisterOptionsTable(BisTooltipAddon.AceAddonName, configTable)
    AceConfigDialog:AddToBlizOptions(BisTooltipAddon.AceAddonName, BisTooltipAddon.AceAddonName)
end