-- Tooltip.lua
local eventFrame = CreateFrame("Frame", nil, UIParent)

local CLASS_COLORS = {
    ["Death Knight"] = {0.77, 0.12, 0.23},
    ["Druid"]        = {1.00, 0.49, 0.04},
    ["Hunter"]       = {0.67, 0.83, 0.45},
    ["Mage"]         = {0.25, 0.78, 0.92},
    ["Paladin"]      = {0.96, 0.55, 0.73},
    ["Priest"]       = {1.00, 1.00, 1.00},
    ["Rogue"]        = {1.00, 0.96, 0.41},
    ["Shaman"]       = {0.00, 0.44, 0.87},
    ["Warlock"]      = {0.53, 0.53, 0.93},
    ["Warrior"]      = {0.78, 0.61, 0.43},
}

local highlight_colors = {
    ["purple"]    = {0.80, 0.30, 1.00}, ["green"] =     {0.10, 1.00, 0.10},
    ["red"]       = {1.00, 0.20, 0.20}, ["lightblue"] = {0.30, 0.80, 1.00},
    ["yellow"]    = {1.00, 0.82, 0.00}, ["orange"] =    {1.00, 0.50, 0.00},
    ["pink"]      = {1.00, 0.40, 0.70}, ["cyan"] =      {0.00, 1.00, 1.00}
}

local source_hex_colors = {
    ["purple"]    = "CC4CFF", ["green"]     = "19FF19",
    ["red"]       = "FF3333", ["lightblue"] = "4CCCFF",
    ["yellow"]    = "FFD100", ["orange"]    = "FF7F00",
    ["pink"]      = "FF66B2", ["cyan"]      = "00FFFF",
    ["white"]     = "FFFFFF",
}

local RAID_ICON_STRINGS = {}
for i = 1, 8 do
    local col = (i - 1) % 4
    local row = math.floor((i - 1) / 4)
    local l, r = col * 64, (col + 1) * 64
    local t, b = row * 64, (row + 1) * 64
    RAID_ICON_STRINGS[i] = string.format("|TInterface\\TargetingFrame\\UI-RaidTargetingIcons:14:14:0:0:256:256:%d:%d:%d:%d|t", l, r, t, b)
end

local DARK_BACKDROP = {
    bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 2, right = 2, top = 2, bottom = 2 }
}

local DEFAULT_BACKDROP = {
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 5, right = 5, top = 5, bottom = 5 }
}

local function GetItemSources(itemId, translatedId)
    local sources = BisTooltip_ItemSources and BisTooltip_ItemSources[itemId]
    if not sources and translatedId and BisTooltip_ItemSources then
        sources = BisTooltip_ItemSources[translatedId]
    end
    return sources
end

local function StyleTooltip(tooltip, isForcedItem)
    if not tooltip or not tooltip.GetItem then return end

    local darkEnabled = BisTooltipAddon.db and BisTooltipAddon.db.char and BisTooltipAddon.db.char.dark_tooltips

    local isItem = isForcedItem
    if isItem == nil then
        local _, link = tooltip:GetItem()
        isItem = (link ~= nil) or tooltip.BisIsCompareItem
    end

    if isItem and darkEnabled then
        if not tooltip.BisStyledDark then
            tooltip.BisStyledDark = true
            tooltip:SetBackdrop(DARK_BACKDROP)
        end
        tooltip:SetBackdropColor(0, 0, 0, 0.92)
    else
        if tooltip.BisStyledDark then
            tooltip.BisStyledDark = nil
            tooltip:SetBackdrop(DEFAULT_BACKDROP)
            local c = TOOLTIP_DEFAULT_BACKGROUND_COLOR
            if c then
                tooltip:SetBackdropColor(c.r, c.g, c.b, 1)
            else
                tooltip:SetBackdropColor(0.09, 0.09, 0.19, 1)
            end
        end
    end
end

local function OnTooltipCleared(tooltip)
    if not tooltip then return end
    tooltip.BisTooltipRendered = nil
    tooltip.BisIsCompareItem = nil
    StyleTooltip(tooltip, false)
end

local function ProcessTooltip(tooltip, link)
    local tt = tooltip or (this ~= nil and this) or GameTooltip
    if not tt or not tt.GetItem then return end

    StyleTooltip(tt, true)

    local db = BisTooltipAddon.db and BisTooltipAddon.db.char
    if not db then return end

    if db.tooltip_with_ctrl and not IsControlKeyDown() then return end

    if not link then
        _, link = tt:GetItem()
    end
    if not link then return end

    local itemId = tonumber(string.match(link, "item:(%d+)"))
    if not itemId then return end

    if not GetItemInfo(itemId) then return end

    if tt.BisTooltipRendered == itemId then return end
    tt.BisTooltipRendered = itemId

    local translated_id = nil
    if BisTooltip_FactionMap and BisTooltip_FactionMap[itemId] then
        translated_id = BisTooltip_FactionMap[itemId]
    elseif BisTooltip_AliToHorde and BisTooltip_AliToHorde[itemId] then
        translated_id = BisTooltip_AliToHorde[itemId]
    end

    local itemBisData = BisTooltipAddon.ReverseLookup and (BisTooltipAddon.ReverseLookup[itemId] or (translated_id and BisTooltipAddon.ReverseLookup[translated_id]))

    if itemBisData then
        local isAltDown = IsAltKeyDown()
        local highlightSpec = db.highlight_spec
        local filterSpecs = db.filter_specs
        local useClassColors = db.use_class_colors
        local filterClassNames = db.filter_class_names
        local selectedColor = db.highlight_color or "class"
        local hlRGB = (selectedColor ~= "class") and (highlight_colors[selectedColor] or highlight_colors["purple"])

        for i = 1, #itemBisData do
            local data = itemBisData[i]
            local dClass = data.class
            local dSpec = data.spec
            local isHighlighted = (highlightSpec.spec_name == dSpec and highlightSpec.class_name == dClass)
            local isFiltered = not isHighlighted and not isAltDown and filterSpecs[dClass] and filterSpecs[dClass][dSpec]

            if not isFiltered then
                local fData = BisTooltipAddon.FormattedNames[dClass]
                local fSpec = fData and fData[dSpec]
                local lineText

                if fSpec then
                    lineText = filterClassNames and fSpec.withoutClass or fSpec.withClass
                else
                    lineText = dClass .. " " .. dSpec
                end

                local r1, g1, b1, r2, g2, b2
                if isHighlighted then
                    if hlRGB then
                        r1, g1, b1 = hlRGB[1], hlRGB[2], hlRGB[3]
                    else
                        local cColor = CLASS_COLORS[dClass] or {0.8, 0.8, 0.8}
                        r1, g1, b1 = cColor[1], cColor[2], cColor[3]
                    end
                    r2, g2, b2 = r1, g1, b1
                else
                    r2, g2, b2 = 0.65, 0.65, 0.65
                    if useClassColors then
                        local cColor = CLASS_COLORS[dClass] or {0.65, 0.65, 0.65}
                        r1, g1, b1 = cColor[1], cColor[2], cColor[3]
                    else
                        r1, g1, b1 = 0.65, 0.65, 0.65
                    end
                end

                tt:AddDoubleLine(lineText, data.rightText, r1, g1, b1, r2, g2, b2)
            end
        end
    end

    local showSources = (db.show_sources == nil) or db.show_sources
    local sources = showSources and GetItemSources(itemId, translated_id)
    if sources then
        local colorKey = db.source_color or "green"
        local hexColor = source_hex_colors[colorKey] or "19FF19"
        local icon = "|TInterface\\Icons\\INV_Misc_Bag_10:14:14:0:0:64:64:5:59:5:59|t"

        if type(sources) == "table" then
            for _, src in ipairs(sources) do
                tt:AddLine(string.format("%s |cFF%s%s|r", icon, hexColor, src), 1, 1, 1, true)
            end
        elseif type(sources) == "string" then
            tt:AddLine(string.format("%s |cFF%s%s|r", icon, hexColor, sources), 1, 1, 1, true)
        end
    end

    if BisTooltipAddon.IsFavorite and (BisTooltipAddon:IsFavorite(itemId) or (translated_id and BisTooltipAddon:IsFavorite(translated_id))) then
        local markIndex = (db and db.favorite_icon) or 1
        if markIndex < 1 or markIndex > 8 then markIndex = 1 end
        local iconStr = RAID_ICON_STRINGS[markIndex] or RAID_ICON_STRINGS[1]
        local colorKey = (db and db.favorite_color) or "yellow"
        local hexColor = source_hex_colors[colorKey] or "FFD100"
        tt:AddLine(string.format("%s |cFF%sFavorite|r", iconStr, hexColor), 1, 1, 1, true)
    end

    local showItemStates = (db.show_item_states == nil) or db.show_item_states
    if showItemStates and itemBisData then
        local state = BisTooltipAddon:GetItemState(itemId)
        if state == 1 or state == 3 then
            local owner = tt:GetOwner()
            local inBagUI = false
            local inBankUI = false

            if owner then
                local ownerName = (owner.GetName and owner:GetName()) and string.lower(owner:GetName()) or ""
                local parent = owner.GetParent and owner:GetParent()
                local parentName = (parent and parent.GetName and parent:GetName()) or ""

                if parentName:find("^ContainerFrame%d+") then
                    local bagID = parent.GetID and parent:GetID()
                    if bagID then
                        if bagID >= 0 and bagID <= 4 then
                            inBagUI = true
                        elseif bagID == -1 or (bagID >= 5 and bagID <= 11) then
                            inBankUI = true
                        end
                    end
                end

                if ownerName:find("bank") then
                    inBankUI = true
                elseif not inBankUI and (ownerName:find("inventory") or ownerName:find("bagnon") or ownerName:find("bag")) then
                    inBagUI = true
                end
            end

            local skip = false
            if state == 1 and inBagUI then skip = true end
            if state == 3 and inBankUI then skip = true end

            if not skip then
                if state == 1 then
                    tt:AddLine("|TInterface\\Icons\\inv_misc_bag_08:14:14:0:0:64:64:5:59:5:59|t |cFFFFFF00In Bags|r", 1, 1, 1, true)
                elseif state == 3 then
                    tt:AddLine("|TInterface\\Icons\\inv_box_01:14:14:0:0:64:64:5:59:5:59|t |cFFFFFF00In Bank|r", 1, 1, 1, true)
                end
            end
        end
    end

    tt:Show()
end

local function OnTooltipSetItem(tooltip)
    local tt = tooltip or (this ~= nil and this) or GameTooltip
    if tt and tt.GetItem then
        ProcessTooltip(tt, nil)
    end
end

local function HookSetInventoryItem(tooltip, unit, slot)
    if unit and slot then
        local link = GetInventoryItemLink(unit, slot)
        if link then
            ProcessTooltip(tooltip, link)
        end
    end
end

local function ShouldCompareItems()
    return IsShiftKeyDown() or IsModifiedClick("COMPAREITEMS") or (GetCVarBool and GetCVarBool("alwaysCompareItems"))
end

local function HideShoppingTooltips()
    if ShoppingTooltip1 then ShoppingTooltip1:Hide() end
    if ShoppingTooltip2 then ShoppingTooltip2:Hide() end
    if ShoppingTooltip3 then ShoppingTooltip3:Hide() end
    if ItemRefShoppingTooltip1 then ItemRefShoppingTooltip1:Hide() end
    if ItemRefShoppingTooltip2 then ItemRefShoppingTooltip2:Hide() end
    if AtlasLootTooltip2 then AtlasLootTooltip2:Hide() end
end

local function RefreshTooltip(tt)
    if not tt or not tt:IsShown() or not tt.GetItem then return end
    local _, link = tt:GetItem()
    if not link then return end

    tt.BisTooltipRendered = nil

    local owner = tt:GetOwner()
    if owner and owner:IsShown() and owner.GetScript and owner:GetScript("OnEnter") then
        local oldThis = this
        this = owner
        local success = pcall(owner:GetScript("OnEnter"), owner)
        this = oldThis
        if not success then
            tt:ClearLines()
            tt:SetHyperlink(link)
        end
    else
        tt:ClearLines()
        tt:SetHyperlink(link)
    end
end

local function HookAtlasLoot()
    if AtlasLootTooltip and not AtlasLootTooltip.BisHooked then
        AtlasLootTooltip.BisHooked = true
        if not AtlasLootTooltip.shoppingTooltips then
            AtlasLootTooltip.shoppingTooltips = { ShoppingTooltip1, ShoppingTooltip2, ShoppingTooltip3 }
        end
        AtlasLootTooltip:HookScript("OnShow", StyleTooltip)
        AtlasLootTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
        AtlasLootTooltip:HookScript("OnTooltipCleared", OnTooltipCleared)
    end
    if AtlasLootTooltip2 and not AtlasLootTooltip2.BisHooked then
        AtlasLootTooltip2.BisHooked = true
        AtlasLootTooltip2:HookScript("OnShow", StyleTooltip)
        AtlasLootTooltip2:HookScript("OnTooltipSetItem", OnTooltipSetItem)
        AtlasLootTooltip2:HookScript("OnTooltipCleared", OnTooltipCleared)
    end
end

local function UpdateComparison(tt)
    if not tt or not tt:IsShown() or not tt.GetItem then return end
    local _, link = tt:GetItem()
    if not link then return end

    if not ShouldCompareItems() then
        local owner = tt:GetOwner()
        if owner and owner:IsShown() and owner.GetScript and owner:GetScript("OnEnter") then
            RefreshTooltip(tt)
        end
        HideShoppingTooltips()
        return
    end

    local owner = tt:GetOwner()
    if owner and owner:IsShown() and owner.GetScript and owner:GetScript("OnEnter") then
        RefreshTooltip(tt)
    end

    local compareVisible = false
    if tt.shoppingTooltips and tt.shoppingTooltips[1] and tt.shoppingTooltips[1]:IsShown() then
        compareVisible = true
    elseif tt == AtlasLootTooltip and AtlasLootTooltip2 and AtlasLootTooltip2:IsShown() then
        compareVisible = true
    end

    if not compareVisible then
        if not tt.shoppingTooltips then
            if tt == ItemRefTooltip then
                tt.shoppingTooltips = { ItemRefShoppingTooltip1, ItemRefShoppingTooltip2 }
            else
                tt.shoppingTooltips = { ShoppingTooltip1, ShoppingTooltip2, ShoppingTooltip3 }
            end
        end
        GameTooltip_ShowCompareItem(tt)
    end
end

local function UpdateTooltipOnModifier(tt)
    if not tt or not tt:IsShown() then return end
    RefreshTooltip(tt)
    if ShouldCompareItems() then
        local compareVisible = false
        if tt.shoppingTooltips and tt.shoppingTooltips[1] and tt.shoppingTooltips[1]:IsShown() then
            compareVisible = true
        elseif tt == AtlasLootTooltip and AtlasLootTooltip2 and AtlasLootTooltip2:IsShown() then
            compareVisible = true
        end

        if not compareVisible then
            if not tt.shoppingTooltips then
                if tt == ItemRefTooltip then
                    tt.shoppingTooltips = { ItemRefShoppingTooltip1, ItemRefShoppingTooltip2 }
                else
                    tt.shoppingTooltips = { ShoppingTooltip1, ShoppingTooltip2, ShoppingTooltip3 }
                end
            end
            GameTooltip_ShowCompareItem(tt)
        end
    end
end

function BisTooltipAddon:ClearTooltipCache()
    UpdateTooltipOnModifier(GameTooltip)
    UpdateTooltipOnModifier(AtlasLootTooltip)
    UpdateTooltipOnModifier(ItemRefTooltip)
end

function BisTooltipAddon:initBisTooltip()
    GameTooltip:HookScript("OnShow", StyleTooltip)
    ItemRefTooltip:HookScript("OnShow", StyleTooltip)
    if ShoppingTooltip1 then ShoppingTooltip1:HookScript("OnShow", StyleTooltip) end
    if ShoppingTooltip2 then ShoppingTooltip2:HookScript("OnShow", StyleTooltip) end
    if ShoppingTooltip3 then ShoppingTooltip3:HookScript("OnShow", StyleTooltip) end
    if ItemRefShoppingTooltip1 then ItemRefShoppingTooltip1:HookScript("OnShow", StyleTooltip) end
    if ItemRefShoppingTooltip2 then ItemRefShoppingTooltip2:HookScript("OnShow", StyleTooltip) end

    GameTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
    ItemRefTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
    if ShoppingTooltip1 then ShoppingTooltip1:HookScript("OnTooltipSetItem", OnTooltipSetItem) end
    if ShoppingTooltip2 then ShoppingTooltip2:HookScript("OnTooltipSetItem", OnTooltipSetItem) end
    if ShoppingTooltip3 then ShoppingTooltip3:HookScript("OnTooltipSetItem", OnTooltipSetItem) end
    if ItemRefShoppingTooltip1 then ItemRefShoppingTooltip1:HookScript("OnTooltipSetItem", OnTooltipSetItem) end
    if ItemRefShoppingTooltip2 then ItemRefShoppingTooltip2:HookScript("OnTooltipSetItem", OnTooltipSetItem) end

    GameTooltip:HookScript("OnTooltipCleared", OnTooltipCleared)
    ItemRefTooltip:HookScript("OnTooltipCleared", OnTooltipCleared)
    if ShoppingTooltip1 then ShoppingTooltip1:HookScript("OnTooltipCleared", OnTooltipCleared) end
    if ShoppingTooltip2 then ShoppingTooltip2:HookScript("OnTooltipCleared", OnTooltipCleared) end
    if ShoppingTooltip3 then ShoppingTooltip3:HookScript("OnTooltipCleared", OnTooltipCleared) end
    if ItemRefShoppingTooltip1 then ItemRefShoppingTooltip1:HookScript("OnTooltipCleared", OnTooltipCleared) end
    if ItemRefShoppingTooltip2 then ItemRefShoppingTooltip2:HookScript("OnTooltipCleared", OnTooltipCleared) end

    hooksecurefunc(GameTooltip, "SetInventoryItem", HookSetInventoryItem)
    if ItemRefTooltip then hooksecurefunc(ItemRefTooltip, "SetInventoryItem", HookSetInventoryItem) end
    if ShoppingTooltip1 then hooksecurefunc(ShoppingTooltip1, "SetInventoryItem", HookSetInventoryItem) end
    if ShoppingTooltip2 then hooksecurefunc(ShoppingTooltip2, "SetInventoryItem", HookSetInventoryItem) end
    if ShoppingTooltip3 then hooksecurefunc(ShoppingTooltip3, "SetInventoryItem", HookSetInventoryItem) end
    if ItemRefShoppingTooltip1 then hooksecurefunc(ItemRefShoppingTooltip1, "SetInventoryItem", HookSetInventoryItem) end
    if ItemRefShoppingTooltip2 then hooksecurefunc(ItemRefShoppingTooltip2, "SetInventoryItem", HookSetInventoryItem) end

    if ItemRefTooltip and not ItemRefTooltip.shoppingTooltips then
        ItemRefTooltip.shoppingTooltips = { ItemRefShoppingTooltip1, ItemRefShoppingTooltip2 }
    end

    hooksecurefunc("GameTooltip_ShowCompareItem", function(tooltip)
        local t = tooltip or GameTooltip
        local s1, s2, s3

        if t.shoppingTooltips then
            s1, s2, s3 = t.shoppingTooltips[1], t.shoppingTooltips[2], t.shoppingTooltips[3]
        elseif t == ItemRefTooltip then
            s1, s2 = ItemRefShoppingTooltip1, ItemRefShoppingTooltip2
        else
            s1, s2, s3 = ShoppingTooltip1, ShoppingTooltip2, ShoppingTooltip3
        end

        if s1 and s1:IsShown() then s1.BisIsCompareItem = true; StyleTooltip(s1, true) end
        if s2 and s2:IsShown() then s2.BisIsCompareItem = true; StyleTooltip(s2, true) end
        if s3 and s3:IsShown() then s3.BisIsCompareItem = true; StyleTooltip(s3, true) end
        if AtlasLootTooltip2 and AtlasLootTooltip2:IsShown() then
            if not AtlasLootTooltip2.BisHooked then HookAtlasLoot() end
            AtlasLootTooltip2.BisIsCompareItem = true
            StyleTooltip(AtlasLootTooltip2, true)
        end
    end)

    HookAtlasLoot()

    eventFrame:RegisterEvent("PLAYER_LOGIN")
    eventFrame:RegisterEvent("ADDON_LOADED")
    eventFrame:RegisterEvent("MODIFIER_STATE_CHANGED")
    eventFrame:SetScript("OnEvent", function(_, event, key)
        if event == "ADDON_LOADED" or event == "PLAYER_LOGIN" then
            HookAtlasLoot()
            return
        end

        if event == "MODIFIER_STATE_CHANGED" then
            if key == "LALT" or key == "RALT" or key == "LCTRL" or key == "RCTRL" then
                local db = BisTooltipAddon.db and BisTooltipAddon.db.char
                local isCtrl = (key == "LCTRL" or key == "RCTRL")
                if isCtrl and not (db and db.tooltip_with_ctrl) then
                    return
                end

                UpdateTooltipOnModifier(GameTooltip)
                UpdateTooltipOnModifier(AtlasLootTooltip)

                if ItemRefTooltip:IsShown() then
                    local focus = GetMouseFocus()
                    if focus and (focus == ItemRefTooltip or focus:GetParent() == ItemRefTooltip) then
                        UpdateTooltipOnModifier(ItemRefTooltip)
                    end
                end
            elseif key == "LSHIFT" or key == "RSHIFT" then
                UpdateComparison(GameTooltip)
                UpdateComparison(AtlasLootTooltip)

                if ItemRefTooltip:IsShown() then
                    local focus = GetMouseFocus()
                    if focus and (focus == ItemRefTooltip or focus:GetParent() == ItemRefTooltip) then
                        UpdateComparison(ItemRefTooltip)
                    end
                end
            end
        end
    end)
end