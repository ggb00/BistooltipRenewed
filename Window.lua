-- Window.lua
local addonName, addonTable = ...
local AceGUI = LibStub("AceGUI-3.0")

local class = nil
local spec = nil
local phase = nil
local class_index = nil
local spec_index = nil
local phase_index = nil

local class_options = {}
local class_options_to_class = {}
local spec_options = {}
local spec_options_to_spec = {}
local spec_frame = nil
local main_frame = nil
local classDropdown = nil
local specDropdown = nil
local phaseDropDown = nil

local favorites_frame = nil
local favorites_scroll = nil
local FAVORITES_WINDOW_FRAME_NAME = "BisTooltipRenewed_FavoritesWindow"
local isSpecialFavFrameRegistered = false
local displayed_fav_widgets = {}
local fav_widget_pool = {}

local function IsPlayerHorde()
    return UnitFactionGroup("player") == "Horde"
end

local missing_widgets = {}
local fetch_attempts = {}
local displayed_item_widgets = {}
local scanner = CreateFrame("GameTooltip", "BisTooltipScanner", UIParent, "GameTooltipTemplate")
local item_fetch_frame = CreateFrame("Frame")
local fetch_timer = 0
local MAX_FETCH_ATTEMPTS = 10

local checkmark_path = "Interface\\AddOns\\" .. addonName .. "\\checkmark-16.tga"
local MAIN_WINDOW_FRAME_NAME = "BisTooltipRenewed_MainWindow"
local isSpecialFrameRegistered = false

local EMPTY_TABLE = {}

StaticPopupDialogs["BISTOOLTIP_CONFIRM_CLEAR_FAVORITES"] = {
    text = "Are you sure you want to remove all items from your Favorites?",
    button1 = YES,
    button2 = NO,
    OnAccept = function()
        if BisTooltipAddon.db and BisTooltipAddon.db.char then
            wipe(BisTooltipAddon.db.char.favorites)
            BisTooltipAddon.db.char.fav_counter = 0
            if BisTooltipAddon.db.char.fav_scroll_status then
                BisTooltipAddon.db.char.fav_scroll_status.scrollvalue = 0
            end
        end
        if BisTooltipAddon.RefreshFavoritesWindow then
            BisTooltipAddon:RefreshFavoritesWindow()
        end
        if BisTooltipAddon.RefreshItemStateVisuals then
            BisTooltipAddon.RefreshItemStateVisuals()
        end
    end,
    OnShow = function(self)
        self:SetFrameStrata("TOOLTIP")
        local text = _G[self:GetName() .. "Text"]
        if text then
            text:SetJustifyH("CENTER")
        end
    end,
    OnHide = function(self)
        self:SetFrameStrata("DIALOG")
    end,
    timeout = 0,
    whileDead = 1,
    hideOnEscape = 1,
    preferredIndex = 3,
}

local function SetupSeparatorHeading(sep)
    sep:SetText("")
    sep:SetFullWidth(true)
    if sep.left then
        sep.left:SetTexture("Interface\\Tooltips\\UI-Tooltip-Border")
        sep.left:SetTexCoord(0.81, 0.94, 0.5, 1)
        sep.left:SetVertexColor(1, 1, 1, 1)
        sep.left:SetDrawLayer("ARTWORK")
    end
    if sep.right then sep.right:Hide() end
end

local function HandleItemTooltip(widget, item_id)
    GameTooltip:SetOwner(widget.frame, "ANCHOR_NONE")
    GameTooltip:SetPoint("TOPRIGHT", widget.frame, "TOPRIGHT", 220, -13)

    local _, link = GetItemInfo(item_id)
    local validLink = link or ("item:" .. item_id .. ":0:0:0:0:0:0:0")

    GameTooltip:SetHyperlink(validLink)

    if BisTooltipAddon:IsFavorite(item_id) then
        GameTooltip:AddLine("|cff888888(Right-click to remove from Favorites)|r")
    else
        GameTooltip:AddLine("|cff888888<Right-click to add to Favorites>|r")
    end

    GameTooltip:Show()
    if IsShiftKeyDown() or IsModifiedClick("COMPAREITEMS") or (GetCVarBool and GetCVarBool("alwaysCompareItems")) then
        GameTooltip_ShowCompareItem(GameTooltip)
    end
end

local function ApplyItemStateVisuals(widget, item_id, is_missing)
    local markIndex = (BisTooltipAddon.db and BisTooltipAddon.db.char and BisTooltipAddon.db.char.favorite_icon) or 1
    if markIndex < 1 or markIndex > 8 then markIndex = 1 end

    if is_missing then
        widget.image:SetVertexColor(1, 1, 1, 1)
        widget.frame.bisCheckMark:Hide()
        if widget.frame.bisBorder then widget.frame.bisBorder:Hide() end
        if widget.frame.bisStarMark then
            if BisTooltipAddon:IsFavorite(item_id) then
                widget.frame.bisStarMark:SetTexture("Interface\\TargetingFrame\\UI-RaidTargetingIcons")
                SetRaidTargetIconTexture(widget.frame.bisStarMark, markIndex)
                widget.frame.bisStarMark:Show()
            else
                widget.frame.bisStarMark:Hide()
            end
        end
        return
    end

    if widget.frame.bisStarMark then
        if BisTooltipAddon:IsFavorite(item_id) then
            widget.frame.bisStarMark:SetTexture("Interface\\TargetingFrame\\UI-RaidTargetingIcons")
            SetRaidTargetIconTexture(widget.frame.bisStarMark, markIndex)
            widget.frame.bisStarMark:Show()
        else
            widget.frame.bisStarMark:Hide()
        end
    end

    local state = BisTooltipAddon:GetItemState(item_id)
    local show_borders = BisTooltipAddon.db.char.show_item_borders

    if state == 2 then
        widget.image:SetVertexColor(0.35, 0.35, 0.35, 1)
        widget.frame.bisCheckMark:SetTexture(checkmark_path)
        widget.frame.bisCheckMark:SetTexCoord(0, 1, 0, 1)
        widget.frame.bisCheckMark:SetWidth(32)
        widget.frame.bisCheckMark:SetHeight(32)
        widget.frame.bisCheckMark:ClearAllPoints()
        widget.frame.bisCheckMark:SetPoint("CENTER", 4, -8)
        widget.frame.bisCheckMark:Show()

        if widget.frame.bisBorder then
            if show_borders then
                widget.frame.bisBorder:SetVertexColor(0, 1, 0, 0.7)
                widget.frame.bisBorder:Show()
            else
                widget.frame.bisBorder:Hide()
            end
        end

    elseif state == 1 or state == 3 then
        widget.image:SetVertexColor(0.35, 0.35, 0.35, 1)
        local iconTexture = (state == 3) and "Interface\\Icons\\inv_box_01" or "Interface\\Icons\\inv_misc_bag_08"
        widget.frame.bisCheckMark:SetTexture(iconTexture)
        widget.frame.bisCheckMark:SetTexCoord(0.08, 0.92, 0.08, 0.92)
        widget.frame.bisCheckMark:SetWidth(16)
        widget.frame.bisCheckMark:SetHeight(16)
        widget.frame.bisCheckMark:ClearAllPoints()
        widget.frame.bisCheckMark:SetPoint("BOTTOMRIGHT", -2, 6)
        widget.frame.bisCheckMark:Show()

        if widget.frame.bisBorder then
            if show_borders then
                widget.frame.bisBorder:SetVertexColor(1, 1, 0, 0.7)
                widget.frame.bisBorder:Show()
            else
                widget.frame.bisBorder:Hide()
            end
        end

    else
        widget.image:SetVertexColor(1, 1, 1, 1)
        widget.frame.bisCheckMark:Hide()
        if widget.frame.bisBorder then widget.frame.bisBorder:Hide() end
    end
end

local function RefreshItemStateVisuals()
    if main_frame and main_frame.frame:IsShown() then
        for i = 1, #displayed_item_widgets do
            local entry = displayed_item_widgets[i]
            if entry.widget and entry.widget.frame then
                ApplyItemStateVisuals(entry.widget, entry.item_id, false)
            end
        end
    end
    if favorites_frame and favorites_frame.frame:IsShown() then
        for i = 1, #displayed_fav_widgets do
            local entry = displayed_fav_widgets[i]
            if entry.widget and entry.widget.frame then
                ApplyItemStateVisuals(entry.widget, entry.item_id, false)
            end
        end
    end
end
BisTooltipAddon.RefreshItemStateVisuals = RefreshItemStateVisuals

function BisTooltipAddon:IsWindowOpen()
    return (main_frame and main_frame.frame and main_frame.frame:IsShown())
        or (favorites_frame and favorites_frame.frame and favorites_frame.frame:IsShown())
end

local function ProcessMissingItems(self, elapsed)
    fetch_timer = fetch_timer + elapsed
    if fetch_timer <= 0.25 then return end
    fetch_timer = 0

    local hasRemaining = false
    local resolvedAny = false

    for item_id, widgets in pairs(missing_widgets) do
        local itemName, _, _, _, _, _, _, _, _, itemIcon, _, _, _, bindType = GetItemInfo(item_id)

        if itemName then
            resolvedAny = true
            for _, widget in ipairs(widgets) do
                if widget and widget.frame and widget.frame:IsShown() then
                    widget:SetImage(itemIcon)
                    if bindType == 2 then widget.frame.bisBoeMark:Show() else widget.frame.bisBoeMark:Hide() end
                    ApplyItemStateVisuals(widget, item_id, false)
                end
            end
            missing_widgets[item_id] = nil
            fetch_attempts[item_id] = nil
        else
            local attempts = (fetch_attempts[item_id] or 0) + 1
            fetch_attempts[item_id] = attempts

            if attempts >= MAX_FETCH_ATTEMPTS then
                missing_widgets[item_id] = nil
            else
                hasRemaining = true
                scanner:SetOwner(UIParent, "ANCHOR_NONE")
                scanner:SetHyperlink("item:" .. item_id .. ":0:0:0:0:0:0:0")
                scanner:ClearLines()
            end
        end
    end

    if not hasRemaining then
        item_fetch_frame:SetScript("OnUpdate", nil)
    end

    if resolvedAny and favorites_frame and favorites_frame.frame:IsShown() then
        BisTooltipAddon:RefreshFavoritesWindow()
    end
end

local function StartItemFetch()
    if next(missing_widgets) then
        item_fetch_frame:SetScript("OnUpdate", ProcessMissingItems)
    else
        item_fetch_frame:SetScript("OnUpdate", nil)
    end
end

item_fetch_frame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
item_fetch_frame:SetScript("OnEvent", function()
    if next(missing_widgets) then
        fetch_timer = 0.25
        item_fetch_frame:SetScript("OnUpdate", ProcessMissingItems)
    end
end)

local function createItemFrame(item_id, size)
    if item_id < 0 then
        local empty_icon = AceGUI:Create("Icon")
        empty_icon:SetImageSize(size, size)
        empty_icon.frame:EnableMouse(false)

        if empty_icon.frame.bisCheckMark then empty_icon.frame.bisCheckMark:Hide() end
        if empty_icon.frame.bisBoeMark then empty_icon.frame.bisBoeMark:Hide() end
        if empty_icon.frame.bisBorder then empty_icon.frame.bisBorder:Hide() end
        if empty_icon.frame.bisStarMark then empty_icon.frame.bisStarMark:Hide() end
        empty_icon:SetImage("")

        return empty_icon
    end

    local item_frame = AceGUI:Create("Icon")
    item_frame:SetImageSize(size, size)

    item_frame.frame:EnableMouse(true)
    item_frame.frame:RegisterForClicks("LeftButtonUp", "RightButtonUp")

    if not item_frame.frame.bisBorder then
        item_frame.frame.bisBorder = item_frame.frame:CreateTexture(nil, "ARTWORK")
        item_frame.frame.bisBorder:SetTexture("Interface\\Buttons\\CheckButtonHilight")
        item_frame.frame.bisBorder:SetBlendMode("ADD")
        item_frame.frame.bisBorder:SetAllPoints(item_frame.image)
        item_frame.frame.bisBorder:Hide()
    end
    item_frame.frame.bisBorder:SetDrawLayer("ARTWORK", 1)

    if not item_frame.frame.bisCheckMark then
        item_frame.frame.bisCheckMark = item_frame.frame:CreateTexture(nil, "OVERLAY")
    end
    item_frame.frame.bisCheckMark:SetDrawLayer("OVERLAY", 1)

    if not item_frame.frame.bisBoeMark then
        item_frame.frame.bisBoeMark = item_frame.frame:CreateTexture(nil, "OVERLAY")
        item_frame.frame.bisBoeMark:SetWidth(12)
        item_frame.frame.bisBoeMark:SetHeight(12)
        item_frame.frame.bisBoeMark:SetPoint("TOPRIGHT", -2, -5)
        item_frame.frame.bisBoeMark:SetTexture("Interface\\Icons\\INV_Misc_Coin_01")
    end
    item_frame.frame.bisBoeMark:SetDrawLayer("OVERLAY", 2)

    if not item_frame.frame.bisStarMark then
        item_frame.frame.bisStarMark = item_frame.frame:CreateTexture(nil, "OVERLAY")
        item_frame.frame.bisStarMark:SetTexture("Interface\\TargetingFrame\\UI-RaidTargetingIcons")
    end
    item_frame.frame.bisStarMark:SetDrawLayer("OVERLAY", 3)
    local starSize = (size < 30) and 10 or 14
    item_frame.frame.bisStarMark:SetWidth(starSize)
    item_frame.frame.bisStarMark:SetHeight(starSize)
    item_frame.frame.bisStarMark:ClearAllPoints()
    item_frame.frame.bisStarMark:SetPoint("TOPLEFT", item_frame.image, "TOPLEFT", -2, 2)

    item_frame:SetCallback("OnClick", function(widget, _, button)
        if button == "RightButton" then
            BisTooltipAddon:ToggleFavorite(item_id)
            if widget.frame and widget.frame:IsShown() and GameTooltip:IsOwned(widget.frame) then
                HandleItemTooltip(widget, item_id)
            else
                GameTooltip:Hide()
            end
            return
        end

        local _, link = GetItemInfo(item_id)
        local validLink = link or ("item:" .. item_id .. ":0:0:0:0:0:0:0")
        if IsModifiedClick() then
            HandleModifiedItemClick(validLink)
        else
            SetItemRef(validLink, validLink, "LeftButton")
        end
    end)

    item_frame:SetCallback("OnEnter", function(widget)
        HandleItemTooltip(widget, item_id)
    end)

    item_frame:SetCallback("OnLeave", function() GameTooltip:Hide() end)

    local itemName, _, _, _, _, _, _, _, _, itemIcon, _, _, _, bindType = GetItemInfo(item_id)

    if not itemName then
        item_frame:SetImage("Interface\\Icons\\INV_Misc_QuestionMark")
        item_frame.frame.bisBoeMark:Hide()
        ApplyItemStateVisuals(item_frame, item_id, true)

        if not missing_widgets[item_id] then missing_widgets[item_id] = {} end
        table.insert(missing_widgets[item_id], item_frame)
        StartItemFetch()
        return item_frame
    end

    item_frame:SetImage(itemIcon)
    if bindType == 2 then item_frame.frame.bisBoeMark:Show() else item_frame.frame.bisBoeMark:Hide() end
    ApplyItemStateVisuals(item_frame, item_id, false)

    return item_frame
end

local function createSpellFrame(spell_id, size)
    if spell_id < 0 then
        local empty_spell = AceGUI:Create("Icon")
        empty_spell:SetImageSize(size, size)
        empty_spell.frame:EnableMouse(false)

        if empty_spell.frame.bisCheckMark then empty_spell.frame.bisCheckMark:Hide() end
        if empty_spell.frame.bisBoeMark then empty_spell.frame.bisBoeMark:Hide() end
        if empty_spell.frame.bisBorder then empty_spell.frame.bisBorder:Hide() end
        if empty_spell.frame.bisStarMark then empty_spell.frame.bisStarMark:Hide() end
        empty_spell:SetImage("")

        return empty_spell
    end

    local spell_frame = AceGUI:Create("Icon")
    spell_frame:SetImageSize(size, size)

    spell_frame.frame:EnableMouse(true)
    spell_frame.image:SetVertexColor(1, 1, 1, 1)

    if spell_frame.frame.bisCheckMark then spell_frame.frame.bisCheckMark:Hide() end
    if spell_frame.frame.bisBoeMark then spell_frame.frame.bisBoeMark:Hide() end
    if spell_frame.frame.bisBorder then spell_frame.frame.bisBorder:Hide() end
    if spell_frame.frame.bisStarMark then spell_frame.frame.bisStarMark:Hide() end

    local name, _, icon = GetSpellInfo(spell_id)
    if not name then return spell_frame end

    spell_frame:SetImage(icon)
    local link = GetSpellLink(spell_id) or ("\124cffffd000\124Hspell:" .. spell_id .. "\124h[" .. name .. "]\124h\124r")

    spell_frame:SetCallback("OnClick", function()
        if link then
            if IsModifiedClick() then
                HandleModifiedItemClick(link)
            else
                SetItemRef(link, link, "LeftButton")
            end
        end
    end)

    spell_frame:SetCallback("OnEnter", function()
        GameTooltip:SetOwner(spell_frame.frame, "ANCHOR_NONE")
        GameTooltip:SetPoint("TOPRIGHT", spell_frame.frame, "TOPRIGHT", 220, -13)
        GameTooltip:ClearLines()

        if name == "Rune of the Stoneskin Gargoyle" or name == "Rune of Razorice" or name == "Rune of the Fallen Crusader" then
            GameTooltip:AddLine("|T" .. icon .. ":16|t " .. name, 1, 1, 1)
        elseif link then
            GameTooltip:SetHyperlink(link)
        end

        GameTooltip:Show()
    end)
    spell_frame:SetCallback("OnLeave", function() GameTooltip:Hide() end)

    return spell_frame
end

local function createEnhancementsFrame(enhancements)
    local frame = AceGUI:Create("SimpleGroup")
    frame:SetLayout("Table")
    frame:SetWidth(75)
    frame:SetHeight(18)

    frame:SetUserData("table", {
        columns = {16, 16, 16, 16},
        spaceV = 0, spaceH = 2, align = "MIDDLE"
    })

    frame:SetFullWidth(false)
    frame:SetFullHeight(false)
    frame:SetAutoAdjustHeight(false)

    for _, enhancement in ipairs(enhancements) do
        local size = 16
        if enhancement.type == "item" then
            frame:AddChild(createItemFrame(enhancement.id, size))
        elseif enhancement.type == "spell" then
            frame:AddChild(createSpellFrame(enhancement.id, size))
        end
    end
    return frame
end

local function drawItemSlot(slot)
    local f = AceGUI:Create("Label")
    f:SetText(slot.slot_name)
    f:SetFont("Fonts\\FRIZQT__.TTF", 14, "")
    f:SetWidth(85)
    f.label:SetJustifyH("LEFT")
    spec_frame:AddChild(f)

    local enhs = EMPTY_TABLE
    local enh_class = BisTooltip_Enhancements and BisTooltip_Enhancements[class]
    if enh_class and enh_class[spec] and enh_class[spec][phase] then
        enhs = enh_class[spec][phase][slot.slot_name] or EMPTY_TABLE
    end

    spec_frame:AddChild(createEnhancementsFrame(enhs))

    local count = 0
    for _, original_item_id in ipairs(slot) do
        if count >= 6 then break end

        local display_id = original_item_id

        if IsPlayerHorde() and BisTooltip_AliToHorde and BisTooltip_AliToHorde[original_item_id] then
            display_id = BisTooltip_AliToHorde[original_item_id]
        elseif not IsPlayerHorde() and BisTooltip_FactionMap and BisTooltip_FactionMap[original_item_id] then
            display_id = BisTooltip_FactionMap[original_item_id]
        end

        local item_widget = createItemFrame(display_id, 40)
        if display_id > 0 then
            table.insert(displayed_item_widgets, { widget = item_widget, item_id = display_id })
        end
        spec_frame:AddChild(item_widget)
        count = count + 1
    end

    for i = count + 1, 6 do
        spec_frame:AddChild(createItemFrame(-1, 40))
    end
end

local function drawTableHeader(frame)
    local color = 0.6

    local f = AceGUI:Create("Label")
    f:SetText("Slot")
    f:SetFont("Fonts\\FRIZQT__.TTF", 14, "")
    f:SetColor(color, color, color)
    f:SetWidth(85)
    f.label:SetJustifyH("LEFT")
    frame:AddChild(f)

    local eLabel = AceGUI:Create("Label")
    eLabel:SetText("Enchants")
    eLabel:SetFont("Fonts\\FRIZQT__.TTF", 11, "")
    eLabel:SetColor(color, color, color)
    eLabel:SetWidth(75)
    eLabel.label:SetJustifyH("LEFT")
    frame:AddChild(eLabel)

    local headerTexts = {"BIS", "Alt 1", "Alt 2", "Alt 3", "Alt 4", "Alt 5"}
    for i = 1, 6 do
        local topLabel = AceGUI:Create("Label")
        topLabel:SetText(headerTexts[i])
        topLabel:SetColor(color, color, color)
        topLabel:SetWidth(44)
        topLabel.label:SetJustifyH("CENTER")
        frame:AddChild(topLabel)
    end
end

local function drawSpecData()
    BisTooltipAddon.db.char.class_index = class_index
    BisTooltipAddon.db.char.spec_index = spec_index
    BisTooltipAddon.db.char.phase_index = phase_index

    local targetScroll = 0
    if BisTooltipAddon.db.char.scroll_status and BisTooltipAddon.db.char.scroll_status.scrollvalue then
        targetScroll = BisTooltipAddon.db.char.scroll_status.scrollvalue
    end

    wipe(displayed_item_widgets)
    wipe(missing_widgets)
    wipe(fetch_attempts)
    item_fetch_frame:SetScript("OnUpdate", nil)

    spec_frame:ReleaseChildren()
    drawTableHeader(spec_frame)

    local list_class = BisTooltip_ItemLists and (BisTooltip_ItemLists[class] or BisTooltip_ItemLists[string.gsub(class, "%s+", "")])
    if not spec or not phase or not list_class or not list_class[spec] then return end
    local slots = list_class[spec][phase]
    if not slots then return end

    for _, slot in ipairs(slots) do drawItemSlot(slot) end

    if targetScroll > 0 then
        spec_frame:SetScroll(targetScroll)
    end
end

local function buildClassDict()
    if #class_options > 0 or not BisTooltip_ClassData or type(BisTooltip_ClassData) ~= "table" then return end
    class_options = {}
    for ci, class_data in ipairs(BisTooltip_ClassData) do
        local option_name = class_data.name
        table.insert(class_options, option_name)
        class_options_to_class[option_name] = { name = class_data.name, i = ci }
    end
end

local function buildSpecsDict(class_i)
    if not BisTooltip_ClassData or type(BisTooltip_ClassData) ~= "table" then return end
    spec_options = {}
    spec_options_to_spec = {}
    local class_data = BisTooltip_ClassData[class_i]
    for si, spec_name in ipairs(class_data.specs) do
        local icon = BisTooltip_SpecIcons[class_data.name] and BisTooltip_SpecIcons[class_data.name][spec_name]
        local iconStr = icon and ("|T" .. icon .. ":14|t ") or ""
        local option_name = iconStr .. spec_name

        table.insert(spec_options, option_name)
        spec_options_to_spec[option_name] = spec_name
    end
end

local function loadData()
    class_index = BisTooltipAddon.db.char.class_index or 1
    spec_index = BisTooltipAddon.db.char.spec_index or 1
    phase_index = BisTooltipAddon.db.char.phase_index or 1

    if not class_options[class_index] then class_index = 1 end
    if class_options[class_index] then
        class = class_options_to_class[class_options[class_index]].name
        buildSpecsDict(class_index)
    else
        class = nil; spec = nil; return
    end

    if not spec_options[spec_index] then spec_index = 1 end
    if spec_options[spec_index] then
        spec = spec_options_to_spec[spec_options[spec_index]]
    end

    phase = BisTooltip_PhaseData[phase_index] or BisTooltip_PhaseData[1]
end

local function drawDropdowns()
    local dropDownGroup = AceGUI:Create("SimpleGroup")
    dropDownGroup:SetLayout("Table")
    dropDownGroup:SetUserData("table", { columns = {42, 110, 180, 70}, space = 4, align = "BOTTOM" })
    main_frame:AddChild(dropDownGroup)

    local spacerLeft = AceGUI:Create("Label")
    spacerLeft:SetText(" ")
    dropDownGroup:AddChild(spacerLeft)

    classDropdown = AceGUI:Create("Dropdown")
    specDropdown = AceGUI:Create("Dropdown")
    phaseDropDown = AceGUI:Create("Dropdown")
    specDropdown:SetDisabled(true)

    phaseDropDown:SetCallback("OnValueChanged", function(_, _, key)
        phase_index = key
        phase = BisTooltip_PhaseData[key]
        if BisTooltipAddon.db.char.scroll_status then BisTooltipAddon.db.char.scroll_status.scrollvalue = 0 end
        drawSpecData()
    end)

    specDropdown:SetCallback("OnValueChanged", function(_, _, key)
        spec_index = key
        spec = spec_options_to_spec[spec_options[key]]
        if BisTooltipAddon.db.char.scroll_status then BisTooltipAddon.db.char.scroll_status.scrollvalue = 0 end
        drawSpecData()
    end)

    classDropdown:SetCallback("OnValueChanged", function(_, _, key)
        class_index = key
        class = class_options_to_class[class_options[key]].name
        specDropdown:SetDisabled(false)
        buildSpecsDict(key)
        specDropdown:SetList(spec_options)
        specDropdown:SetValue(1)
        spec_index = 1
        spec = spec_options_to_spec[spec_options[1]]
        if BisTooltipAddon.db.char.scroll_status then BisTooltipAddon.db.char.scroll_status.scrollvalue = 0 end
        drawSpecData()
    end)

    classDropdown:SetList(class_options)
    local phase_opts = {}
    for i, p in ipairs(BisTooltip_PhaseData) do phase_opts[i] = p end
    phaseDropDown:SetList(phase_opts)

    dropDownGroup:AddChild(classDropdown)
    dropDownGroup:AddChild(specDropdown)
    dropDownGroup:AddChild(phaseDropDown)

    local fillerFrame = AceGUI:Create("Label")
    fillerFrame:SetText(" ")
    fillerFrame:SetHeight(5)
    main_frame:AddChild(fillerFrame)

    classDropdown:SetValue(class_index)
    if class_index then
        buildSpecsDict(class_index)
        specDropdown:SetList(spec_options)
        specDropdown:SetDisabled(false)
    end
    specDropdown:SetValue(spec_index)
    phaseDropDown:SetValue(phase_index)
end

local function createSpecFrame()
    local frame = AceGUI:Create("ScrollFrame")
    frame:SetLayout("Table")

    frame:SetUserData("table", {
        columns = {{width = 95}, {width = 75}, {width = 42}, {width = 42}, {width = 42}, {width = 42}, {width = 42}, {width = 42}},
        space = 3, align = "middle"
    })

    frame:SetFullWidth(true)
    frame:SetHeight(420)
    frame:SetAutoAdjustHeight(false)

    BisTooltipAddon.db.char.scroll_status = BisTooltipAddon.db.char.scroll_status or {}
    frame:SetStatusTable(BisTooltipAddon.db.char.scroll_status)

    main_frame:AddChild(frame)
    spec_frame = frame
end

function BisTooltipAddon:RefreshFavoritesWindow()
    if not favorites_frame or not favorites_frame.frame:IsShown() or not favorites_scroll then return end

    for i = 1, #displayed_fav_widgets do
        fav_widget_pool[#fav_widget_pool + 1] = displayed_fav_widgets[i]
    end
    wipe(displayed_fav_widgets)

    local targetScroll = 0
    if BisTooltipAddon.db.char.fav_scroll_status and BisTooltipAddon.db.char.fav_scroll_status.scrollvalue then
        targetScroll = BisTooltipAddon.db.char.fav_scroll_status.scrollvalue
    end

    favorites_scroll:ReleaseChildren()

    local favList = {}
    local favData = self.db and self.db.char and self.db.char.favorites
    if favData then
        for itemID, orderVal in pairs(favData) do
            if orderVal then table.insert(favList, tonumber(itemID)) end
        end
    end

    if #favList == 0 then
        local emptyLabel = AceGUI:Create("Label")
        emptyLabel:SetText("\n\n|cffffd100No favorite items yet.|r\n\nRight-click any item in the BiS list to add it to your Favorites!")
        emptyLabel:SetFont("Fonts\\FRIZQT__.TTF", 14, "")
        emptyLabel:SetFullWidth(true)
        emptyLabel.label:SetJustifyH("CENTER")
        favorites_scroll:AddChild(emptyLabel)
    else
        table.sort(favList, function(a, b)
            local orderA = (favData and type(favData[a]) == "number") and favData[a] or 0
            local orderB = (favData and type(favData[b]) == "number") and favData[b] or 0
            return orderA > orderB
        end)

        for _, itemID in ipairs(favList) do
            local row = AceGUI:Create("SimpleGroup")
            row:SetLayout("Table")
            row:SetFullWidth(true)
            row:SetUserData("table", { columns = {42, 330, 26}, space = 4, align = "middle" })

            local itemWidget = createItemFrame(itemID, 36)
            local entry = table.remove(fav_widget_pool) or {}
            entry.widget = itemWidget
            entry.item_id = itemID
            displayed_fav_widgets[#displayed_fav_widgets + 1] = entry
            row:AddChild(itemWidget)

            local itemName, _, itemRarity, _, _, _, itemSubType, _, equipSlot = GetItemInfo(itemID)
            local infoGroup = AceGUI:Create("SimpleGroup")
            infoGroup:SetLayout("List")
            infoGroup:SetWidth(330)

            local nameLabel = AceGUI:Create("InteractiveLabel")
            if itemName then
                local r, g, b = GetItemQualityColor(itemRarity or 1)
                nameLabel:SetText(itemName)
                nameLabel:SetColor(r, g, b)
            else
                nameLabel:SetText("Item #" .. itemID)
                nameLabel:SetColor(0.75, 0.75, 0.75)
            end
            nameLabel:SetFont("Fonts\\FRIZQT__.TTF", 13, "")
            nameLabel:SetFullWidth(true)

            local nameHeight = math.max(14, nameLabel.label:GetStringHeight() or 14)
            nameLabel:SetHeight(nameHeight)

            nameLabel:SetCallback("OnClick", function()
                local _, link = GetItemInfo(itemID)
                local validLink = link or ("item:" .. itemID .. ":0:0:0:0:0:0:0")
                if IsModifiedClick() then
                    HandleModifiedItemClick(validLink)
                else
                    SetItemRef(validLink, validLink, "LeftButton")
                end
            end)
            nameLabel:SetCallback("OnEnter", function(widget) HandleItemTooltip(widget, itemID) end)
            nameLabel:SetCallback("OnLeave", function() GameTooltip:Hide() end)
            infoGroup:AddChild(nameLabel)

            local slotText = (equipSlot and _G[equipSlot]) or itemSubType
            if slotText and slotText ~= "" then
                local spacer = AceGUI:Create("Label")
                spacer:SetText(" ")
                spacer:SetHeight(6)
                spacer:SetFullWidth(true)
                infoGroup:AddChild(spacer)

                local subLabel = AceGUI:Create("Label")
                subLabel:SetText(slotText)
                subLabel:SetFont("Fonts\\FRIZQT__.TTF", 10, "")
                subLabel:SetColor(0.75, 0.75, 0.75)
                subLabel:SetFullWidth(true)
                subLabel:SetHeight(12)
                infoGroup:AddChild(subLabel)
            end

            row:AddChild(infoGroup)

            local removeBtn = AceGUI:Create("Button")
            removeBtn:SetText("X")
            removeBtn:SetWidth(26)
            if removeBtn.text then
                removeBtn.text:ClearAllPoints()
                removeBtn.text:SetPoint("CENTER", 0, 0)
            end
            removeBtn:SetCallback("OnClick", function()
                BisTooltipAddon:ToggleFavorite(itemID)
                GameTooltip:Hide()
            end)
            removeBtn:SetCallback("OnEnter", function(widget)
                GameTooltip:SetOwner(widget.frame, "ANCHOR_RIGHT")
                GameTooltip:AddLine("Remove from Favorites", 1, 1, 1)
                GameTooltip:Show()
            end)
            removeBtn:SetCallback("OnLeave", function() GameTooltip:Hide() end)
            row:AddChild(removeBtn)

            favorites_scroll:AddChild(row)
        end
    end

    if targetScroll > 0 then
        favorites_scroll:SetScroll(targetScroll)
    end

    if favorites_frame.clearBtn then
        favorites_frame.clearBtn:SetDisabled(#favList == 0)
    end
end

function BisTooltipAddon:OpenFavoritesFrame()
    if favorites_frame and favorites_frame.frame:IsShown() then return end

    if not favorites_frame then
        favorites_frame = AceGUI:Create("Window")
        favorites_frame:SetWidth(460)
        favorites_frame:SetHeight(570)
        favorites_frame:EnableResize(false)
        favorites_frame:SetTitle("BiS-Tooltip Renewed - Favorites List")

        local pos = BisTooltipAddon.db.char.favorites_pos
        if pos and pos.x and pos.y then
            favorites_frame.frame:ClearAllPoints()
            favorites_frame.frame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", pos.x, pos.y)
        elseif main_frame and main_frame.frame:IsShown() then
            favorites_frame.frame:ClearAllPoints()
            favorites_frame.frame:SetPoint("TOPLEFT", main_frame.frame, "TOPRIGHT", 10, 0)
        end

        _G[FAVORITES_WINDOW_FRAME_NAME] = favorites_frame.frame
        if not isSpecialFavFrameRegistered then
            tinsert(UISpecialFrames, FAVORITES_WINDOW_FRAME_NAME)
            isSpecialFavFrameRegistered = true
        end

        favorites_frame.frame:HookScript("OnHide", function()
            StaticPopup_Hide("BISTOOLTIP_CONFIRM_CLEAR_FAVORITES")
        end)

        hooksecurefunc(favorites_frame.frame, "StopMovingOrSizing", function(self)
            local x = self:GetLeft()
            local y = self:GetTop()
            if not x or not y then return end

            local screenW = UIParent:GetRight()
            local screenH = UIParent:GetTop()
            local w = self:GetWidth()
            local h = self:GetHeight()

            local clamped = false
            if x < 0 then x = 0; clamped = true end
            if y > screenH then y = screenH; clamped = true end
            if x + w > screenW then x = screenW - w; clamped = true end
            if y - h < 0 then y = h; clamped = true end

            BisTooltipAddon.db.char.favorites_pos = { x = x, y = y }

            if clamped then
                self:ClearAllPoints()
                self:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", x, y)
            end
        end)

        if not favorites_frame.frame.darkOverlay then
            favorites_frame.frame.darkOverlay = favorites_frame.frame:CreateTexture(nil, "BACKGROUND", nil, -1)
            favorites_frame.frame.darkOverlay:SetPoint("TOPLEFT", favorites_frame.frame, "TOPLEFT", 8, -24)
            favorites_frame.frame.darkOverlay:SetPoint("BOTTOMRIGHT", favorites_frame.frame, "BOTTOMRIGHT", -8, 8)
            favorites_frame.frame.darkOverlay:SetTexture(0, 0, 0, 0.60)
        end

        favorites_frame:SetCallback("OnClose", function()
            StaticPopup_Hide("BISTOOLTIP_CONFIRM_CLEAR_FAVORITES")
            BisTooltipAddon:CloseFavoritesFrame()
        end)
        favorites_frame:SetLayout("List")

        favorites_scroll = AceGUI:Create("ScrollFrame")
        favorites_scroll:SetLayout("Flow")
        favorites_scroll:SetFullWidth(true)
        favorites_scroll:SetHeight(457)
        favorites_scroll:SetAutoAdjustHeight(false)

        BisTooltipAddon.db.char.fav_scroll_status = BisTooltipAddon.db.char.fav_scroll_status or {}
        favorites_scroll:SetStatusTable(BisTooltipAddon.db.char.fav_scroll_status)
        favorites_frame:AddChild(favorites_scroll)

        local sep = AceGUI:Create("Heading")
        SetupSeparatorHeading(sep)
        favorites_frame:AddChild(sep)

        local bottomGroup = AceGUI:Create("SimpleGroup")
        bottomGroup:SetLayout("Table")
        bottomGroup:SetFullWidth(true)
        bottomGroup:SetUserData("table", { columns = {153, 120, 153}, space = 0, align = "middle" })

        local spacerL = AceGUI:Create("Label"); spacerL:SetText(" "); bottomGroup:AddChild(spacerL)

        local clearBtn = AceGUI:Create("Button")
        clearBtn:SetText("Clear All")
        clearBtn:SetWidth(120)
        clearBtn:SetCallback("OnClick", function()
            StaticPopup_Show("BISTOOLTIP_CONFIRM_CLEAR_FAVORITES")
        end)
        clearBtn:SetCallback("OnEnter", function(widget)
            GameTooltip:SetOwner(widget.frame, "ANCHOR_TOP")
            GameTooltip:AddLine("Clear All Favorites", 1, 1, 1)
            GameTooltip:AddLine("Remove all saved items from your character's Favorites list.", 1, 0.82, 0, 1)
            GameTooltip:Show()
        end)
        clearBtn:SetCallback("OnLeave", function() GameTooltip:Hide() end)
        bottomGroup:AddChild(clearBtn)
        favorites_frame.clearBtn = clearBtn

        local spacerR = AceGUI:Create("Label"); spacerR:SetText(" "); bottomGroup:AddChild(spacerR)

        favorites_frame:AddChild(bottomGroup)

        sep.frame:ClearAllPoints()
        sep.frame:SetPoint("BOTTOMLEFT", favorites_frame.frame, "BOTTOMLEFT", 17, 50)
        sep.frame:SetPoint("BOTTOMRIGHT", favorites_frame.frame, "BOTTOMRIGHT", -17, 50)

        bottomGroup.frame:ClearAllPoints()
        bottomGroup.frame:SetPoint("BOTTOMLEFT", favorites_frame.frame, "BOTTOMLEFT", 17, 14)
        bottomGroup.frame:SetPoint("BOTTOMRIGHT", favorites_frame.frame, "BOTTOMRIGHT", -17, 14)
    end

    favorites_frame:Show()
    self:RefreshFavoritesWindow()
end

function BisTooltipAddon:CloseFavoritesFrame()
    StaticPopup_Hide("BISTOOLTIP_CONFIRM_CLEAR_FAVORITES")
    if favorites_frame and favorites_frame.frame:IsShown() then
        favorites_frame:Hide()
    end
end

function BisTooltipAddon:ToggleFavoritesFrame()
    if favorites_frame and favorites_frame.frame:IsShown() then
        self:CloseFavoritesFrame()
    else
        self:OpenFavoritesFrame()
    end
end

function BisTooltipAddon:reloadData()
    buildClassDict()
    loadData()

    if main_frame then
        local phase_opts = {}
        for i, p in ipairs(BisTooltip_PhaseData) do phase_opts[i] = p end
        phaseDropDown:SetList(phase_opts)
        classDropdown:SetList(class_options)
        specDropdown:SetList(spec_options)

        classDropdown:SetValue(class_index)
        specDropdown:SetValue(spec_index)
        phaseDropDown:SetValue(phase_index)
        drawSpecData()
    end
end

function BisTooltipAddon:createMainFrame()
    if main_frame then
        if main_frame.frame:IsShown() then
            BisTooltipAddon:closeMainFrame()
        else
            main_frame:Show()
            RefreshItemStateVisuals()
            StartItemFetch()
        end
        return
    end

    buildClassDict()
    loadData()

    main_frame = AceGUI:Create("Window")
    main_frame:SetWidth(505)
    main_frame:SetHeight(570)
    main_frame:EnableResize(false)

    local pos = BisTooltipAddon.db.char.frame_pos
    if pos and pos.x and pos.y then
        main_frame.frame:ClearAllPoints()
        main_frame.frame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", pos.x, pos.y)
    end

    _G[MAIN_WINDOW_FRAME_NAME] = main_frame.frame
    if not isSpecialFrameRegistered then
        tinsert(UISpecialFrames, MAIN_WINDOW_FRAME_NAME)
        isSpecialFrameRegistered = true
    end

    main_frame.frame:HookScript("OnHide", function()
        item_fetch_frame:SetScript("OnUpdate", nil)
        if not (favorites_frame and favorites_frame.frame and favorites_frame.frame:IsShown()) then
            StaticPopup_Hide("BISTOOLTIP_CONFIRM_CLEAR_FAVORITES")
        end
    end)

    hooksecurefunc(main_frame.frame, "StopMovingOrSizing", function(self)
        local x = self:GetLeft()
        local y = self:GetTop()
        if not x or not y then return end

        local screenW = UIParent:GetRight()
        local screenH = UIParent:GetTop()
        local w = self:GetWidth()
        local h = self:GetHeight()

        local clamped = false
        if x < 0 then x = 0; clamped = true end
        if y > screenH then y = screenH; clamped = true end
        if x + w > screenW then x = screenW - w; clamped = true end
        if y - h < 0 then y = h; clamped = true end

        BisTooltipAddon.db.char.frame_pos = { x = x, y = y }

        if clamped then
            self:ClearAllPoints()
            self:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", x, y)
        end
    end)

    if not main_frame.frame.darkOverlay then
        main_frame.frame.darkOverlay = main_frame.frame:CreateTexture(nil, "BACKGROUND", nil, -1)
        main_frame.frame.darkOverlay:SetPoint("TOPLEFT", main_frame.frame, "TOPLEFT", 8, -24)
        main_frame.frame.darkOverlay:SetPoint("BOTTOMRIGHT", main_frame.frame, "BOTTOMRIGHT", -8, 8)
        main_frame.frame.darkOverlay:SetTexture(0, 0, 0, 0.60)
    end

    main_frame:SetCallback("OnClose", function()
        if not (favorites_frame and favorites_frame.frame and favorites_frame.frame:IsShown()) then
            StaticPopup_Hide("BISTOOLTIP_CONFIRM_CLEAR_FAVORITES")
        end
        BisTooltipAddon:closeMainFrame()
    end)
    main_frame:SetLayout("List")
    main_frame:SetTitle(BisTooltipAddon.AddonNameAndVersion)

    drawDropdowns()
    createSpecFrame()
    drawSpecData()

    local sep = AceGUI:Create("Heading")
    SetupSeparatorHeading(sep)
    main_frame:AddChild(sep)

    local buttonContainer = AceGUI:Create("SimpleGroup")
    buttonContainer:SetFullWidth(true)
    buttonContainer:SetLayout("Table")
    buttonContainer:SetUserData("table", { columns = {25, 120, 120, 120}, space = 15, align = "middle" })

    local bSpacer1 = AceGUI:Create("Label"); bSpacer1:SetText(" "); buttonContainer:AddChild(bSpacer1)

    local reloadButton = AceGUI:Create("Button")
    reloadButton:SetText("Reload Items")
    reloadButton:SetWidth(120)
    reloadButton:SetCallback("OnClick", function() BisTooltipAddon:reloadData() end)

    reloadButton:SetCallback("OnEnter", function(widget)
        GameTooltip:SetOwner(widget.frame, "ANCHOR_TOP")
        GameTooltip:AddLine("Reload Items", 1, 1, 1)
        GameTooltip:AddLine("If some items are displaying a '?' icon,\nclick this to force the server to fetch them.\nThis may take a couple of attempts.", 1, 0.82, 0, 1)
        GameTooltip:Show()
    end)
    reloadButton:SetCallback("OnLeave", function() GameTooltip:Hide() end)

    buttonContainer:AddChild(reloadButton)

    local favoritesButton = AceGUI:Create("Button")
    favoritesButton:SetText("Favorites")
    favoritesButton:SetWidth(120)
    favoritesButton:SetCallback("OnClick", function()
        BisTooltipAddon:ToggleFavoritesFrame()
    end)
    favoritesButton:SetCallback("OnEnter", function(widget)
        GameTooltip:SetOwner(widget.frame, "ANCHOR_TOP")
        GameTooltip:AddLine("Favorites", 1, 1, 1)
        GameTooltip:AddLine("Open the Favorites list to view your saved items.", 1, 0.82, 0, 1)
        GameTooltip:Show()
    end)
    favoritesButton:SetCallback("OnLeave", function() GameTooltip:Hide() end)
    buttonContainer:AddChild(favoritesButton)

    local configButton = AceGUI:Create("Button")
    configButton:SetText("Config")
    configButton:SetWidth(120)
    configButton:SetCallback("OnClick", function() BisTooltipAddon:openConfigDialog() end)
    configButton:SetCallback("OnEnter", function(widget)
        GameTooltip:SetOwner(widget.frame, "ANCHOR_TOP")
        GameTooltip:AddLine("Configuration", 1, 1, 1)
        GameTooltip:AddLine("Open addon configuration and filter settings.", 1, 0.82, 0, 1)
        GameTooltip:Show()
    end)
    configButton:SetCallback("OnLeave", function() GameTooltip:Hide() end)
    buttonContainer:AddChild(configButton)

    main_frame:AddChild(buttonContainer)

    sep.frame:ClearAllPoints()
    sep.frame:SetPoint("BOTTOMLEFT", main_frame.frame, "BOTTOMLEFT", 17, 50)
    sep.frame:SetPoint("BOTTOMRIGHT", main_frame.frame, "BOTTOMRIGHT", -17, 50)

    buttonContainer.frame:ClearAllPoints()
    buttonContainer.frame:SetPoint("BOTTOMLEFT", main_frame.frame, "BOTTOMLEFT", 17, 14)
    buttonContainer.frame:SetPoint("BOTTOMRIGHT", main_frame.frame, "BOTTOMRIGHT", -17, 14)
end

function BisTooltipAddon:closeMainFrame()
    if not (favorites_frame and favorites_frame.frame and favorites_frame.frame:IsShown()) then
        StaticPopup_Hide("BISTOOLTIP_CONFIRM_CLEAR_FAVORITES")
    end
    if main_frame and main_frame.frame:IsShown() then
        item_fetch_frame:SetScript("OnUpdate", nil)
        main_frame:Hide()
    end
end

function BisTooltipAddon:initBislists()
    buildClassDict()
    loadData()
end