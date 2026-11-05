-- Window.lua
local addonName = ...
local AceGUI = LibStub("AceGUI-3.0")

local GetItemInfo, GetSpellInfo, GetSpellLink = GetItemInfo, GetSpellInfo, GetSpellLink
local tonumber, tostring, type, ipairs, pairs = tonumber, tostring, type, ipairs, pairs
local wipe, tinsert, max, min = wipe, tinsert, math.max, math.min

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
local favorites_refresh_pending = false

local missing_widgets = {}
local fetch_attempts = {}
local fetch_next_request = {}
local displayed_item_widgets = {}
local scanner = CreateFrame("GameTooltip", "BisTooltipScanner", UIParent, "GameTooltipTemplate")
local item_fetch_frame = CreateFrame("Frame")
local fetch_timer = 0
local fetch_clock = 0
local FETCH_CHECK_INTERVAL = 0.1
local FETCH_REQUEST_INTERVAL = 1
local FETCH_SLOW_INTERVAL = 5
local FETCH_FAST_REQUESTS = 10
local FETCH_MAX_ATTEMPTS = 20

local statusText = nil
local statusTimer = 0
local currentStatusState = "IDLE"
local STATUS_FADE_DURATION = 1.0
local fetch_has_failure = false

local function UpdateStatusDisplay(state)
    if not statusText then return end
    if state == currentStatusState and state == "FETCHING" then
        return
    end
    currentStatusState = state

    if state == "FETCHING" then
        statusTimer = 0
        statusText:SetText("|cffffd100Loading items...|r")
        statusText:SetAlpha(1)
        statusText:Show()
    elseif state == "SUCCESS" then
        statusTimer = STATUS_FADE_DURATION * 2
        statusText:SetText("|cff20ff20All items loaded|r")
        statusText:SetAlpha(1)
        statusText:Show()
    else
        statusTimer = 0
        statusText:SetText("")
        statusText:Hide()
    end
end

local boe_cache = {}
local boe_queue = {}
local boe_frame = CreateFrame("Frame")
local BOE_SCAN_BATCH = 8

local function ScanItemBoe(itemId)
    if not itemId or itemId <= 0 then return false, true end
    if boe_cache[itemId] ~= nil then
        return boe_cache[itemId], true
    end
    scanner:SetOwner(UIParent, "ANCHOR_NONE")
    scanner:ClearLines()
    scanner:SetHyperlink("item:" .. itemId .. ":0:0:0:0:0:0:0")
    local isBoe = false
    local numLines = scanner:NumLines() or 0
    local checkLines = (numLines < 5) and numLines or 5
    for i = 2, checkLines do
        local fontString = _G["BisTooltipScannerTextLeft" .. i]
        local text = fontString and fontString:GetText()
        if text and (text == ITEM_BIND_ON_EQUIP or text:find(ITEM_BIND_ON_EQUIP, 1, true)) then
            isBoe = true
            break
        end
    end
    scanner:ClearLines()
    scanner:Hide()
    if numLines > 0 then
        boe_cache[itemId] = isBoe
        return isBoe, true
    end
    return false, false
end

local function ApplyBoeMark(widget, isBoe)
    if not widget or not widget.frame or not widget.frame.bisBoeMark then return end
    local size = widget.image and widget.image:GetWidth() or 40
    if isBoe and size >= 30 then
        widget.frame.bisBoeMark:Show()
    else
        widget.frame.bisBoeMark:Hide()
    end
end

local function ApplyBoeToItem(itemId, isBoe)
    for i = 1, #displayed_item_widgets do
        local widget = displayed_item_widgets[i]
        if widget and widget.item_id == itemId then
            ApplyBoeMark(widget, isBoe)
        end
    end
    for i = 1, #displayed_fav_widgets do
        local widget = displayed_fav_widgets[i]
        if widget and widget.item_id == itemId then
            ApplyBoeMark(widget, isBoe)
        end
    end
end

local function ProcessBoeQueue()
    local budget = BOE_SCAN_BATCH
    for itemId in pairs(boe_queue) do
        if budget <= 0 then break end
        boe_queue[itemId] = nil
        local isBoe, known = ScanItemBoe(itemId)
        if known then
            ApplyBoeToItem(itemId, isBoe)
        end
        budget = budget - 1
    end
    if not next(boe_queue) then
        boe_frame:SetScript("OnUpdate", nil)
    end
end

local function QueueBoeCheck(itemId)
    if not itemId or itemId <= 0 or boe_cache[itemId] ~= nil then return end
    if boe_queue[itemId] then return end
    boe_queue[itemId] = true
    if not boe_frame:GetScript("OnUpdate") then
        boe_frame:SetScript("OnUpdate", ProcessBoeQueue)
    end
end

local checkmark_path = "Interface\\AddOns\\" .. addonName .. "\\checkmark-16.tga"
local MAIN_WINDOW_FRAME_NAME = "BisTooltipRenewed_MainWindow"
local isSpecialFrameRegistered = false

local PHASE_DROPDOWN_OPTS = nil
local function GetPhaseDropdownOptions()
    if not PHASE_DROPDOWN_OPTS then
        PHASE_DROPDOWN_OPTS = {}
        for i, p in ipairs(BisTooltip_PhaseData) do
            PHASE_DROPDOWN_OPTS[i] = p
        end
    end
    return PHASE_DROPDOWN_OPTS
end

local CLEAN_CLASS_NAMES = {
    ["Death Knight"] = "DeathKnight",
}

local function GetCleanClassName(cls)
    if not cls then return "" end
    if not CLEAN_CLASS_NAMES[cls] then
        CLEAN_CLASS_NAMES[cls] = cls:gsub("%s+", "")
    end
    return CLEAN_CLASS_NAMES[cls]
end

local EMPTY_TABLE = {}

local ROW_BACKDROP = {
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = false, tileSize = 16, edgeSize = 12,
    insets = { left = 3, right = 3, top = 3, bottom = 3 }
}

local ENHANCEMENT_TABLE_LAYOUT = {
    columns = {16, 16, 16, 16},
    spaceV = 0, spaceH = 2, align = "MIDDLE"
}

local FAV_ROW_TABLE_LAYOUT = {
    columns = {36, 336, 26},
    space = 4, align = "middle"
}

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
        if BisTooltipAddon.ClearTooltipCache then
            BisTooltipAddon:ClearTooltipCache()
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

    local right = widget.frame:GetRight() or 0
    local screenW = UIParent:GetRight() or 0
    if (right + 250) > screenW then
        GameTooltip:SetPoint("TOPRIGHT", widget.frame, "TOPLEFT", -10, 0)
    else
        GameTooltip:SetPoint("TOPRIGHT", widget.frame, "TOPRIGHT", 220, -13)
    end

    local _, link = GetItemInfo(item_id)
    local validLink = link or ("item:" .. item_id .. ":0:0:0:0:0:0:0")

    GameTooltip:SetHyperlink(validLink)

    if BisTooltipAddon:IsFavorite(item_id) then
        GameTooltip:AddLine("|cff888888<Right-click to remove from Favorites>|r")
    else
        GameTooltip:AddLine("|cff888888<Right-click to add to Favorites>|r")
    end

    GameTooltip:Show()
    if IsShiftKeyDown() or IsModifiedClick("COMPAREITEMS") or (GetCVarBool and GetCVarBool("alwaysCompareItems")) then
        local oldThis = this
        this = GameTooltip
        GameTooltip_ShowCompareItem()
        this = oldThis
    end
end

local memo_state = {}
local memo_fav = {}
local memo_ilvl = {}

local function ApplyItemStateVisuals(widget, item_id, is_missing)
    local size = widget.image and widget.image:GetWidth() or 40
    if size < 30 then
        widget.image:SetVertexColor(1, 1, 1, 1)
        if widget.frame.bisCheckMark then widget.frame.bisCheckMark:Hide() end
        if widget.frame.bisBorder then widget.frame.bisBorder:Hide() end
        if widget.frame.bisStarMark then widget.frame.bisStarMark:Hide() end
        if widget.frame.bisILvl then widget.frame.bisILvl:Hide() end
        if widget.frame.bisBoeMark then widget.frame.bisBoeMark:Hide() end
        return
    end

    local markIndex = (BisTooltipAddon.db and BisTooltipAddon.db.char and BisTooltipAddon.db.char.favorite_icon) or 1
    if markIndex < 1 or markIndex > 8 then markIndex = 1 end

    if widget.frame.bisILvl then
        local db = BisTooltipAddon.db and BisTooltipAddon.db.char
        local showILvl = db and (db.show_ilvl ~= false)
        local colorKey = (db and db.ilvl_color) or "white"

        if showILvl and not is_missing and item_id and item_id > 0 then
            local itemLevel = memo_ilvl[item_id]
            if itemLevel == nil then
                local _, _, _, ilvl = GetItemInfo(item_id)
                itemLevel = ilvl or 0
                memo_ilvl[item_id] = itemLevel
            end

            if itemLevel > 0 then
                local hex = (BisTooltip_HexColors and BisTooltip_HexColors[colorKey]) or "FFFFFF"
                local text = "|cFF" .. hex .. itemLevel .. "|r"
                if widget._lastILvlText ~= text then
                    widget._lastILvlText = text
                    widget.frame.bisILvl:SetText(text)
                end
                widget.frame.bisILvl:Show()
            else
                widget._lastILvlText = nil
                widget.frame.bisILvl:Hide()
            end
        else
            widget._lastILvlText = nil
            widget.frame.bisILvl:Hide()
        end
    end

    if widget.frame.bisStarMark then
        local isFav = memo_fav[item_id]
        if isFav == nil then
            isFav = BisTooltipAddon:IsFavorite(item_id)
            memo_fav[item_id] = isFav
        end

        if isFav then
            if widget._lastFav ~= true or widget._lastMarkIndex ~= markIndex then
                widget._lastFav = true
                widget._lastMarkIndex = markIndex
                widget.frame.bisStarMark:SetTexture("Interface\\TargetingFrame\\UI-RaidTargetingIcons")
                SetRaidTargetIconTexture(widget.frame.bisStarMark, markIndex)
            end
            widget.frame.bisStarMark:Show()
        else
            widget._lastFav = false
            widget.frame.bisStarMark:Hide()
        end
    end

    if is_missing then
        widget._lastState = -1
        widget.image:SetVertexColor(1, 1, 1, 1)
        widget.frame.bisCheckMark:Hide()
        if widget.frame.bisBorder then widget.frame.bisBorder:Hide() end
        return
    end

    local show_item_states = not (BisTooltipAddon.db and BisTooltipAddon.db.char and BisTooltipAddon.db.char.show_item_states == false)
    local state = memo_state[item_id]
    if state == nil then
        state = BisTooltipAddon:GetItemState(item_id)
        memo_state[item_id] = state
    end
    if not show_item_states and (state == 1 or state == 3) then
        state = 0
    end
    local show_borders = BisTooltipAddon.db.char.show_item_borders

    if widget._lastState == state and widget._lastShowBorders == show_borders then
        return
    end
    widget._lastState = state
    widget._lastShowBorders = show_borders

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

local function UpdateFavoriteLabel(item_id)
    for i = 1, #displayed_fav_widgets do
        local widget = displayed_fav_widgets[i]
        if widget and widget.item_id == item_id and widget.favNameLabel then
            local itemName, _, itemRarity = GetItemInfo(item_id)
            if itemName then
                local r, g, b = GetItemQualityColor(itemRarity or 1)
                widget.favNameLabel:SetText(itemName)
                widget.favNameLabel:SetColor(r, g, b)
            end
        end
    end
end

local function RefreshItemStateVisuals()
    wipe(memo_state)
    wipe(memo_fav)
    wipe(memo_ilvl)

    if main_frame and main_frame.frame:IsShown() then
        for i = 1, #displayed_item_widgets do
            local widget = displayed_item_widgets[i]
            if widget and widget.frame and widget.item_id then
                ApplyItemStateVisuals(widget, widget.item_id, false)
            end
        end
    end
    if favorites_frame and favorites_frame.frame:IsShown() then
        for i = 1, #displayed_fav_widgets do
            local widget = displayed_fav_widgets[i]
            if widget and widget.frame and widget.item_id then
                ApplyItemStateVisuals(widget, widget.item_id, false)
            end
        end
    end

    wipe(memo_state)
    wipe(memo_fav)
    wipe(memo_ilvl)
end
BisTooltipAddon.RefreshItemStateVisuals = RefreshItemStateVisuals

function BisTooltipAddon:RefreshFavoriteForItem(item_id)
    if type(self) == "number" and not item_id then
        item_id = self
    end
    if not item_id then return end
    item_id = tonumber(item_id)
    if not item_id then return end
    local altID = self.GetAltItemID and self:GetAltItemID(item_id)

    wipe(memo_state)
    wipe(memo_fav)
    wipe(memo_ilvl)

    if main_frame and main_frame.frame:IsShown() then
        for i = 1, #displayed_item_widgets do
            local widget = displayed_item_widgets[i]
            if widget and widget.frame and (widget.item_id == item_id or (altID and widget.item_id == altID)) then
                ApplyItemStateVisuals(widget, widget.item_id, false)
            end
        end
    end

    if favorites_frame and favorites_frame.frame:IsShown() then
        for i = 1, #displayed_fav_widgets do
            local widget = displayed_fav_widgets[i]
            if widget and widget.frame and (widget.item_id == item_id or (altID and widget.item_id == altID)) then
                ApplyItemStateVisuals(widget, widget.item_id, false)
            end
        end
    end

    wipe(memo_state)
    wipe(memo_fav)
    wipe(memo_ilvl)
end

function BisTooltipAddon:IsWindowOpen()
    return (main_frame and main_frame.frame and main_frame.frame:IsShown())
        or (favorites_frame and favorites_frame.frame and favorites_frame.frame:IsShown())
end

local function ProcessMissingItems(self, elapsed)
    if statusTimer > 0 then
        statusTimer = statusTimer - elapsed
        if statusTimer <= 0 then
            UpdateStatusDisplay("IDLE")
            item_fetch_frame:SetScript("OnUpdate", nil)
        elseif statusTimer <= STATUS_FADE_DURATION and statusText then
            statusText:SetAlpha(statusTimer / STATUS_FADE_DURATION)
        end
        return
    end

    fetch_clock = fetch_clock + elapsed
    fetch_timer = fetch_timer + elapsed
    if fetch_timer < FETCH_CHECK_INTERVAL then return end
    fetch_timer = 0

    local now = fetch_clock
    local ownerSet = false

    for item_id, widgets in pairs(missing_widgets) do
        local nextRequest = fetch_next_request[item_id] or 0
        if now >= nextRequest then
            local itemName, _, _, _, _, _, _, _, _, itemIcon = GetItemInfo(item_id)

            if itemName then
                for _, widget in ipairs(widgets) do
                    if widget and widget.frame and widget.item_id == item_id then
                        widget:SetImage(itemIcon)
                        ApplyItemStateVisuals(widget, item_id, false)
                    end
                end
                local cachedBoe = boe_cache[item_id]
                if cachedBoe == true then
                    ApplyBoeToItem(item_id, true)
                elseif cachedBoe == nil then
                    QueueBoeCheck(item_id)
                end
                if favorites_frame and favorites_frame.frame:IsShown() then
                    UpdateFavoriteLabel(item_id)
                    favorites_refresh_pending = true
                end
                missing_widgets[item_id] = nil
                fetch_attempts[item_id] = nil
                fetch_next_request[item_id] = nil
            else
                local attempts = (fetch_attempts[item_id] or 0) + 1
                fetch_attempts[item_id] = attempts

                if attempts > FETCH_MAX_ATTEMPTS then
                    missing_widgets[item_id] = nil
                    fetch_attempts[item_id] = nil
                    fetch_next_request[item_id] = nil
                    fetch_has_failure = true
                else
                    if attempts > FETCH_FAST_REQUESTS then
                        fetch_next_request[item_id] = now + FETCH_SLOW_INTERVAL
                    else
                        fetch_next_request[item_id] = now + FETCH_REQUEST_INTERVAL
                    end

                    if not ownerSet then
                        scanner:SetOwner(UIParent, "ANCHOR_NONE")
                        ownerSet = true
                    end
                    scanner:SetHyperlink("item:" .. item_id .. ":0:0:0:0:0:0:0")
                    scanner:ClearLines()
                    scanner:Hide()
                end
            end
        end
    end

    local hasRemaining = (next(missing_widgets) ~= nil)
    if not hasRemaining then
        if favorites_refresh_pending then
            favorites_refresh_pending = false
            if favorites_frame and favorites_frame.frame:IsShown() then
                BisTooltipAddon:RefreshFavoritesWindow()
            end
        end

        if main_frame and main_frame.frame:IsShown() and statusText and statusText:IsShown() and not fetch_has_failure then
            UpdateStatusDisplay("SUCCESS")
        else
            UpdateStatusDisplay("IDLE")
            item_fetch_frame:SetScript("OnUpdate", nil)
        end
    end
end

local function StartItemFetch()
    if next(missing_widgets) then
        fetch_has_failure = false
        if main_frame and main_frame.frame:IsShown() then
            UpdateStatusDisplay("FETCHING")
        end
        item_fetch_frame:SetScript("OnUpdate", ProcessMissingItems)
    else
        UpdateStatusDisplay("IDLE")
        item_fetch_frame:SetScript("OnUpdate", nil)
    end
end

local function createItemFrame(item_id, size)
    if item_id < 0 then
        local empty_icon = AceGUI:Create("Icon")
        empty_icon.item_id = item_id
        empty_icon:SetImageSize(size, size)
        empty_icon.frame:EnableMouse(false)
        empty_icon:SetCallback("OnRelease", function(self)
            self.frame:EnableMouse(true)
            self.item_id = nil
        end)

        if empty_icon.frame.bisCheckMark then empty_icon.frame.bisCheckMark:Hide() end
        if empty_icon.frame.bisBoeMark then empty_icon.frame.bisBoeMark:Hide() end
        if empty_icon.frame.bisBorder then empty_icon.frame.bisBorder:Hide() end
        if empty_icon.frame.bisStarMark then empty_icon.frame.bisStarMark:Hide() end
        if empty_icon.frame.bisILvl then empty_icon.frame.bisILvl:Hide() end
        empty_icon:SetImage("")

        return empty_icon
    end

    local item_frame = AceGUI:Create("Icon")
    item_frame.item_id = item_id
    item_frame:SetCallback("OnRelease", function(self)
        local id = self.item_id
        if id and missing_widgets[id] then
            local list = missing_widgets[id]
            for i = #list, 1, -1 do
                if list[i] == self then
                    table.remove(list, i)
                    break
                end
            end
            if #list == 0 then
                missing_widgets[id] = nil
                fetch_attempts[id] = nil
                fetch_next_request[id] = nil
                if not next(missing_widgets) then
                    UpdateStatusDisplay("IDLE")
                    item_fetch_frame:SetScript("OnUpdate", nil)
                end
            end
        end
        if self.image then
            self.image:ClearAllPoints()
            self.image:SetPoint("CENTER", self.frame, "CENTER", 0, 0)
            self.image:SetVertexColor(1, 1, 1, 1)
        end
        if self.frame.bisCheckMark then self.frame.bisCheckMark:Hide() end
        if self.frame.bisBoeMark then self.frame.bisBoeMark:Hide() end
        if self.frame.bisBorder then self.frame.bisBorder:Hide() end
        if self.frame.bisStarMark then self.frame.bisStarMark:Hide() end
        if self.frame.bisILvl then self.frame.bisILvl:Hide() end
        self._lastState = nil
        self._lastShowBorders = nil
        self._lastFav = nil
        self._lastMarkIndex = nil
        self._lastILvlText = nil
        self.item_id = nil
    end)
    item_frame:SetImageSize(size, size)

    item_frame.frame:EnableMouse(true)
    item_frame.frame:RegisterForClicks("LeftButtonUp", "RightButtonUp")

    if size >= 30 then
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
        item_frame.frame.bisStarMark:SetWidth(14)
        item_frame.frame.bisStarMark:SetHeight(14)
        item_frame.frame.bisStarMark:ClearAllPoints()
        item_frame.frame.bisStarMark:SetPoint("TOPLEFT", item_frame.image, "TOPLEFT", -2, 2)

        if not item_frame.frame.bisILvl then
            item_frame.frame.bisILvl = item_frame.frame:CreateFontString(nil, "OVERLAY")
            item_frame.frame.bisILvl:SetFont("Fonts\\ARIALN.TTF", 13, "OUTLINE")
            item_frame.frame.bisILvl:SetShadowOffset(0, 0)
            item_frame.frame.bisILvl:SetPoint("BOTTOMLEFT", item_frame.image, "BOTTOMLEFT", -4, -2)
            item_frame.frame.bisILvl:SetJustifyH("LEFT")
        end
    end

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

    local itemName, _, _, _, _, _, _, _, _, itemIcon = GetItemInfo(item_id)

    if not itemName then
        item_frame:SetImage("Interface\\Icons\\INV_Misc_QuestionMark")
        if item_frame.frame.bisBoeMark then item_frame.frame.bisBoeMark:Hide() end
        ApplyItemStateVisuals(item_frame, item_id, true)

        if not missing_widgets[item_id] then missing_widgets[item_id] = {} end
        table.insert(missing_widgets[item_id], item_frame)
        StartItemFetch()
        return item_frame
    end

    item_frame:SetImage(itemIcon)
    local cachedBoe = boe_cache[item_id]
    if item_frame.frame.bisBoeMark then
        if size >= 30 and cachedBoe == true then
            item_frame.frame.bisBoeMark:Show()
        else
            item_frame.frame.bisBoeMark:Hide()
        end
    end
    if size >= 30 and cachedBoe == nil then
        QueueBoeCheck(item_id)
    end
    ApplyItemStateVisuals(item_frame, item_id, false)

    return item_frame
end

local function createSpellFrame(spell_id, size)
    if spell_id < 0 then
        local empty_spell = AceGUI:Create("Icon")
        empty_spell:SetImageSize(size, size)
        empty_spell.frame:EnableMouse(false)
        empty_spell:SetCallback("OnRelease", function(self)
            self.frame:EnableMouse(true)
            self.item_id = nil
        end)

        if empty_spell.frame.bisCheckMark then empty_spell.frame.bisCheckMark:Hide() end
        if empty_spell.frame.bisBoeMark then empty_spell.frame.bisBoeMark:Hide() end
        if empty_spell.frame.bisBorder then empty_spell.frame.bisBorder:Hide() end
        if empty_spell.frame.bisStarMark then empty_spell.frame.bisStarMark:Hide() end
        if empty_spell.frame.bisILvl then empty_spell.frame.bisILvl:Hide() end
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
    if spell_frame.frame.bisILvl then spell_frame.frame.bisILvl:Hide() end

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

    frame:SetUserData("table", ENHANCEMENT_TABLE_LAYOUT)

    frame:SetFullWidth(false)
    frame:SetFullHeight(false)
    frame:SetAutoAdjustHeight(false)

    for _, enhancement in ipairs(enhancements) do
        local size = 16
        if type(enhancement) == "number" then
            if enhancement > 0 then
                frame:AddChild(createItemFrame(enhancement, size))
            elseif enhancement < 0 then
                frame:AddChild(createSpellFrame(-enhancement, size))
            end
        elseif type(enhancement) == "table" then
            if enhancement.type == "item" then
                frame:AddChild(createItemFrame(enhancement.id, size))
            elseif enhancement.type == "spell" then
                frame:AddChild(createSpellFrame(enhancement.id, size))
            end
        end
    end
    return frame
end

local SLOT_DISPLAY_ORDER = {
    "Head", "Neck", "Shoulder", "Back", "Chest", "Wrist",
    "Hands", "Waist", "Legs", "Feet", "Finger 1", "Finger 2",
    "Trinket 1", "Trinket 2", "Weapon", "Off hand", "Ranged", "Relic"
}

local HEADER_TEXTS = {"BIS", "Alt 1", "Alt 2", "Alt 3", "Alt 4", "Alt 5"}

local function drawItemSlot(slot_name, item_list)
    local f = AceGUI:Create("Label")
    f:SetText(slot_name)
    f:SetFont("Fonts\\FRIZQT__.TTF", 14, "")
    f:SetWidth(85)
    f.label:SetJustifyH("LEFT")
    spec_frame:AddChild(f)

    local enhs = EMPTY_TABLE
    local enh_class = BisTooltip_Enhancements and (BisTooltip_Enhancements[class] or BisTooltip_Enhancements[GetCleanClassName(class)])
    if enh_class and enh_class[spec] and enh_class[spec][phase] then
        enhs = enh_class[spec][phase][slot_name] or EMPTY_TABLE
    end

    if #enhs > 0 then
        spec_frame:AddChild(createEnhancementsFrame(enhs))
    else
        local enhSpacer = AceGUI:Create("Label")
        enhSpacer:SetText(" ")
        enhSpacer:SetWidth(75)
        spec_frame:AddChild(enhSpacer)
    end

    local count = 0
    for _, original_item_id in ipairs(item_list) do
        if count >= 6 then break end

        local display_id = (BisTooltipAddon.GetFactionItem and BisTooltipAddon:GetFactionItem(original_item_id)) or original_item_id

        local item_widget = createItemFrame(display_id, 40)
        if display_id > 0 then
            displayed_item_widgets[#displayed_item_widgets + 1] = item_widget
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

    for i = 1, 6 do
        local topLabel = AceGUI:Create("Label")
        topLabel:SetText(HEADER_TEXTS[i])
        topLabel:SetColor(color, color, color)
        topLabel:SetWidth(44)
        topLabel.label:SetJustifyH("CENTER")
        topLabel:SetCallback("OnRelease", function(self)
            if self.label then self.label:SetJustifyH("LEFT") end
        end)
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

    spec_frame:ReleaseChildren()

    UpdateStatusDisplay("IDLE")

    if not (favorites_frame and favorites_frame.frame and favorites_frame.frame:IsShown()) then
        wipe(missing_widgets)
        wipe(fetch_attempts)
        wipe(fetch_next_request)
        item_fetch_frame:SetScript("OnUpdate", nil)
    end

    drawTableHeader(spec_frame)

    spec_frame:PauseLayout()

    local list_class = BisTooltip_ItemLists and (BisTooltip_ItemLists[class] or BisTooltip_ItemLists[GetCleanClassName(class)])
    local slots = list_class and spec and phase and list_class[spec] and list_class[spec][phase]
    if slots then
        if slots[1] then
            for _, slot in ipairs(slots) do
                drawItemSlot(slot.slot_name, slot)
            end
        else
            for _, slot_name in ipairs(SLOT_DISPLAY_ORDER) do
                local item_list = slots[slot_name]
                if item_list then
                    drawItemSlot(slot_name, item_list)
                end
            end
        end
    end

    spec_frame:ResumeLayout()
    spec_frame:DoLayout()
    spec_frame:SetScroll(targetScroll or 0)
end

local function buildClassDict()
    if not BisTooltip_ClassData or type(BisTooltip_ClassData) ~= "table" then return end
    wipe(class_options)
    wipe(class_options_to_class)
    for ci, class_data in ipairs(BisTooltip_ClassData) do
        local option_name = class_data.name
        tinsert(class_options, option_name)
        class_options_to_class[option_name] = { name = class_data.name, i = ci }
    end
end

local function buildSpecsDict(class_i)
    if not BisTooltip_ClassData or type(BisTooltip_ClassData) ~= "table" then return end
    local class_data = BisTooltip_ClassData[class_i]
    if not class_data or not class_data.specs then return end

    wipe(spec_options)
    wipe(spec_options_to_spec)

    for si, spec_name in ipairs(class_data.specs) do
        local icon = BisTooltip_SpecIcons and BisTooltip_SpecIcons[class_data.name] and BisTooltip_SpecIcons[class_data.name][spec_name]
        local iconStr = icon and ("|T" .. icon .. ":14:14:0:0|t ") or ""
        local option_name = iconStr .. spec_name

        tinsert(spec_options, option_name)
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

    phase_index = tonumber(phase_index) or 1
    if not BisTooltip_PhaseData[phase_index] then phase_index = 1 end
    phase = BisTooltip_PhaseData[phase_index]
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
    classDropdown:SetWidth(110)
    classDropdown:SetPulloutWidth(113)

    specDropdown = AceGUI:Create("Dropdown")
    specDropdown:SetWidth(180)
    specDropdown:SetPulloutWidth(183)

    phaseDropDown = AceGUI:Create("Dropdown")
    phaseDropDown:SetWidth(70)
    phaseDropDown:SetPulloutWidth(73)

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
    phaseDropDown:SetList(GetPhaseDropdownOptions())

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

local favUpdateFrame = CreateFrame("Frame")
favUpdateFrame:Hide()
favUpdateFrame:SetScript("OnUpdate", function(self)
    self:Hide()
    if BisTooltipAddon.RefreshFavoritesWindow then
        BisTooltipAddon:RefreshFavoritesWindow(true)
    end
end)

function BisTooltipAddon:RefreshFavoritesWindow(immediate)
    if not favorites_frame or not favorites_frame.frame:IsShown() or not favorites_scroll then return end

    if not immediate then
        if not favUpdateFrame:IsShown() then
            favUpdateFrame:Show()
        end
        return
    end
    favUpdateFrame:Hide()

    wipe(displayed_fav_widgets)

    local targetScroll = 0
    if BisTooltipAddon.db.char.fav_scroll_status and BisTooltipAddon.db.char.fav_scroll_status.scrollvalue then
        targetScroll = BisTooltipAddon.db.char.fav_scroll_status.scrollvalue
    end

    favorites_scroll:ReleaseChildren()
    favorites_scroll:PauseLayout()

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
        emptyLabel:SetCallback("OnRelease", function(self)
            if self.label then self.label:SetJustifyH("LEFT") end
        end)
        favorites_scroll:AddChild(emptyLabel)
    else
        table.sort(favList, function(a, b)
            local orderA = (favData and type(favData[a]) == "number") and favData[a] or 0
            local orderB = (favData and type(favData[b]) == "number") and favData[b] or 0
            return orderA > orderB
        end)

        for _, itemID in ipairs(favList) do
            local display_id = (BisTooltipAddon.GetFactionItem and BisTooltipAddon:GetFactionItem(itemID)) or itemID

            local row = AceGUI:Create("SimpleGroup")
            row:SetLayout("Table")
            row:SetFullWidth(true)
            row:SetUserData("table", FAV_ROW_TABLE_LAYOUT)

            local itemWidget = createItemFrame(display_id, 36)
            itemWidget:SetWidth(36)
            itemWidget:SetHeight(42)
            itemWidget.image:ClearAllPoints()
            itemWidget.image:SetPoint("CENTER", itemWidget.frame, "CENTER", 0, 2)
            displayed_fav_widgets[#displayed_fav_widgets + 1] = itemWidget
            row:AddChild(itemWidget)

            local card = row.frame.favCard
            if not card then
                card = CreateFrame("Frame", nil, row.frame)
                row.frame.favCard = card
                card:SetBackdrop(ROW_BACKDROP)
            end
            card:SetFrameLevel(max(1, row.frame:GetFrameLevel()))
            card:ClearAllPoints()
            card:SetPoint("TOP", itemWidget.frame, "TOP", 0, 0)
            card:SetPoint("BOTTOM", itemWidget.frame, "BOTTOM", 0, 0)
            card:SetPoint("LEFT", row.frame, "LEFT", 40, 0)
            card:SetPoint("RIGHT", row.frame, "RIGHT", 0, 0)
            card:SetBackdropColor(0, 0, 0, 0)
            card:SetBackdropBorderColor(0.65, 0.65, 0.65, 0.80)
            card:Show()

            row:SetCallback("OnRelease", function(self)
                if self.frame.favCard then
                    self.frame.favCard:Hide()
                end
            end)

            itemWidget.frame:SetFrameLevel(card:GetFrameLevel() + 2)

            local itemName, _, itemRarity, _, _, _, itemSubType, _, equipSlot = GetItemInfo(display_id)
            local infoGroup = AceGUI:Create("SimpleGroup")
            infoGroup:SetLayout("List")
            infoGroup:SetWidth(320)

            local nameLabel = AceGUI:Create("InteractiveLabel")
            if itemName then
                local r, g, b = GetItemQualityColor(itemRarity or 1)
                nameLabel:SetText(itemName)
                nameLabel:SetColor(r, g, b)
            else
                nameLabel:SetText("Item #" .. display_id)
                nameLabel:SetColor(0.75, 0.75, 0.75)
            end
            nameLabel:SetFont("Fonts\\FRIZQT__.TTF", 13, "")
            nameLabel:SetFullWidth(true)

            local nameHeight = max(14, nameLabel.label:GetStringHeight() or 14)
            nameLabel:SetHeight(nameHeight)

            nameLabel:SetCallback("OnClick", function()
                local _, link = GetItemInfo(display_id)
                local validLink = link or ("item:" .. display_id .. ":0:0:0:0:0:0:0")
                if IsModifiedClick() then
                    HandleModifiedItemClick(validLink)
                else
                    SetItemRef(validLink, validLink, "LeftButton")
                end
            end)
            nameLabel:SetCallback("OnEnter", function(widget) HandleItemTooltip(widget, display_id) end)
            nameLabel:SetCallback("OnLeave", function() GameTooltip:Hide() end)
            infoGroup:AddChild(nameLabel)
            itemWidget.favNameLabel = nameLabel

            local slotText = (equipSlot and _G[equipSlot]) or itemSubType
            if slotText and slotText ~= "" then
                local spacer = AceGUI:Create("Label")
                spacer:SetText(" ")
                spacer:SetHeight(4)
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
            infoGroup.frame:SetFrameLevel(card:GetFrameLevel() + 2)

            local removeBtn = AceGUI:Create("Button")
            removeBtn:SetText("X")
            removeBtn:SetWidth(26)
            if removeBtn.text then
                removeBtn.text:ClearAllPoints()
                removeBtn.text:SetPoint("CENTER", 0, 0)
            end
            removeBtn:SetCallback("OnRelease", function(self)
                if self.text then
                    self.text:ClearAllPoints()
                    self.text:SetPoint("LEFT", self.frame, "LEFT", 10, 0)
                    self.text:SetPoint("RIGHT", self.frame, "RIGHT", -10, 0)
                end
            end)
            removeBtn:SetCallback("OnClick", function()
                BisTooltipAddon:ToggleFavorite(itemID)
                GameTooltip:Hide()
            end)
            removeBtn:SetCallback("OnEnter", function(widget)
                GameTooltip:SetOwner(widget.frame, "ANCHOR_RIGHT")
                GameTooltip:AddLine("Remove from Favorites", 1, 1, 1)
                if itemName then
                    local r, g, b = GetItemQualityColor(itemRarity or 1)
                    GameTooltip:AddLine(itemName, r, g, b)
                end
                GameTooltip:Show()
            end)
            removeBtn:SetCallback("OnLeave", function() GameTooltip:Hide() end)
            row:AddChild(removeBtn)
            removeBtn.frame:SetFrameLevel(card:GetFrameLevel() + 2)

            favorites_scroll:AddChild(row)
        end
    end

    favorites_scroll:ResumeLayout()
    favorites_scroll:DoLayout()
    favorites_scroll:SetScroll(targetScroll or 0)

    if favorites_frame.clearBtn then
        favorites_frame.clearBtn:SetDisabled(#favList == 0)
    end
end

local function ClampPosition(pos, width, height)
    if not pos or not pos.x or not pos.y then return nil end
    local screenW = UIParent:GetRight()
    local screenH = UIParent:GetTop()
    if not screenW or screenW <= 0 or not screenH or screenH <= 0 then
        return pos.x, pos.y
    end
    local w = width or 400
    local h = height or 400
    local x = pos.x
    local y = pos.y

    if x < 0 then x = 0 end
    if y > screenH then y = screenH end
    if x + w > screenW then x = max(0, screenW - w) end
    if y - h < 0 then y = min(screenH, h) end

    return x, y
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
        local posX, posY = ClampPosition(pos, 460, 570)
        if posX and posY then
            favorites_frame.frame:ClearAllPoints()
            favorites_frame.frame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", posX, posY)
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
            if not (main_frame and main_frame.frame and main_frame.frame:IsShown()) then
                item_fetch_frame:SetScript("OnUpdate", nil)
            end
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
    self:RefreshFavoritesWindow(true)
end

function BisTooltipAddon:CloseFavoritesFrame()
    favUpdateFrame:Hide()
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
        phaseDropDown:SetList(GetPhaseDropdownOptions())
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
            for item_id in pairs(missing_widgets) do
                fetch_next_request[item_id] = nil
            end
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
    local posX, posY = ClampPosition(pos, 505, 570)
    if posX and posY then
        main_frame.frame:ClearAllPoints()
        main_frame.frame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", posX, posY)
    end

    _G[MAIN_WINDOW_FRAME_NAME] = main_frame.frame
    if not isSpecialFrameRegistered then
        tinsert(UISpecialFrames, MAIN_WINDOW_FRAME_NAME)
        isSpecialFrameRegistered = true
    end

    main_frame.frame:HookScript("OnHide", function()
        UpdateStatusDisplay("IDLE")
        if not (favorites_frame and favorites_frame.frame and favorites_frame.frame:IsShown()) then
            item_fetch_frame:SetScript("OnUpdate", nil)
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

    if not statusText then
        statusText = main_frame.frame:CreateFontString(nil, "OVERLAY")
        statusText:SetFont("Fonts\\FRIZQT__.TTF", 11, "")
        statusText:SetShadowOffset(1, -1)
        statusText:SetShadowColor(0, 0, 0, 0.8)
        statusText:SetJustifyH("CENTER")
        statusText:SetPoint("CENTER", main_frame.frame, "BOTTOM", 0, 48)
        statusText:Hide()
    end

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
    if main_frame and main_frame.frame:IsShown() then
        main_frame:Hide()
    end
end