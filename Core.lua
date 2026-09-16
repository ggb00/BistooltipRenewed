-- Core.lua
BisTooltipAddon = LibStub("AceAddon-3.0"):NewAddon("BiS-Tooltip Renewed", "AceConsole-3.0")
BisTooltip_AliToHorde = {}
BisTooltip_EquippedCache = {}

local bagUpdateFrame = CreateFrame("Frame")
bagUpdateFrame:Hide()
bagUpdateFrame:SetScript("OnUpdate", function(self)
    self:Hide()
    if BisTooltipAddon.RefreshItemStateVisuals then
        BisTooltipAddon.RefreshItemStateVisuals()
    end
end)

local equipWatcher = CreateFrame("Frame")
equipWatcher:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
equipWatcher:RegisterEvent("PLAYER_ENTERING_WORLD")
equipWatcher:RegisterEvent("BAG_UPDATE")
equipWatcher:RegisterEvent("PLAYERBANKSLOTS_CHANGED")
equipWatcher:RegisterEvent("BANKFRAME_OPENED")
equipWatcher:RegisterEvent("BANKFRAME_CLOSED")
equipWatcher:SetScript("OnEvent", function(_, event)
    if event == "BAG_UPDATE" or event == "PLAYERBANKSLOTS_CHANGED" or event == "BANKFRAME_OPENED" or event == "BANKFRAME_CLOSED" then
        if BisTooltipAddon.IsWindowOpen and BisTooltipAddon:IsWindowOpen() then
            bagUpdateFrame:Show()
        end
        return
    end

    wipe(BisTooltip_EquippedCache)
    for i = 1, 19 do
        local itemID = GetInventoryItemID("player", i)
        if itemID then BisTooltip_EquippedCache[itemID] = true end
    end
    if BisTooltipAddon.RefreshItemStateVisuals then
        BisTooltipAddon.RefreshItemStateVisuals()
    end
end)

function BisTooltipAddon:GetItemState(itemID)
    if not itemID then return 0 end
    itemID = tonumber(itemID)
    if not itemID then return 0 end
    if BisTooltip_EquippedCache[itemID] then return 2 end
    local altID = (BisTooltip_FactionMap and BisTooltip_FactionMap[itemID]) or (BisTooltip_AliToHorde and BisTooltip_AliToHorde[itemID])
    if altID and BisTooltip_EquippedCache[altID] then return 2 end
    if GetItemCount(itemID, false) > 0 or (altID and GetItemCount(altID, false) > 0) then return 1 end
    if GetItemCount(itemID, true) > 0 or (altID and GetItemCount(altID, true) > 0) then return 3 end
    return 0
end

function BisTooltipAddon:IsFavorite(itemID)
    if not itemID or not self.db or not self.db.char or not self.db.char.favorites then return false end
    itemID = tonumber(itemID)
    if not itemID then return false end
    if self.db.char.favorites[itemID] then return true end
    local altID = (BisTooltip_FactionMap and BisTooltip_FactionMap[itemID]) or (BisTooltip_AliToHorde and BisTooltip_AliToHorde[itemID])
    if altID and self.db.char.favorites[altID] then return true end
    return false
end

function BisTooltipAddon:ToggleFavorite(itemID)
    if not itemID or not self.db or not self.db.char then return end
    itemID = tonumber(itemID)
    if not itemID then return end
    self.db.char.favorites = self.db.char.favorites or {}
    local altID = (BisTooltip_FactionMap and BisTooltip_FactionMap[itemID]) or (BisTooltip_AliToHorde and BisTooltip_AliToHorde[itemID])

    if self:IsFavorite(itemID) then
        self.db.char.favorites[itemID] = nil
        if altID then self.db.char.favorites[altID] = nil end
    else
        self.db.char.fav_counter = (self.db.char.fav_counter or 0) + 1
        self.db.char.favorites[itemID] = self.db.char.fav_counter
    end

    if self.RefreshItemStateVisuals then
        self.RefreshItemStateVisuals()
    end
    if self.RefreshFavoritesWindow then
        self:RefreshFavoritesWindow()
    end
end

function BisTooltipAddon:BuildFactionMaps()
    BisTooltip_AliToHorde = {}
    if BisTooltip_FactionMap then
        for h_id, a_id in pairs(BisTooltip_FactionMap) do
            BisTooltip_AliToHorde[a_id] = h_id
        end
    end
end

function BisTooltipAddon:BuildReverseLookup()
    self.FormattedNames = {}
    local canonicalClasses = {}
    local specKeys = {}

    if BisTooltip_ClassData then
        for _, classData in ipairs(BisTooltip_ClassData) do
            local class = classData.name
            canonicalClasses[class] = class
            canonicalClasses[string.gsub(class, "%s+", "")] = class

            self.FormattedNames[class] = {}
            specKeys[class] = {}
            for _, spec in ipairs(classData.specs) do
                local icon = BisTooltip_SpecIcons[class] and BisTooltip_SpecIcons[class][spec]
                local iconStr = icon and string.format("|T%s:18|t", icon) or ""
                self.FormattedNames[class][spec] = {
                    withClass = string.format("%s %s - %s", iconStr, class, spec),
                    withoutClass = string.format("%s %s", iconStr, spec)
                }
                specKeys[class][spec] = class .. ":" .. spec
            end
        end
    end

    local tempLookup = {}
    local sortedPhases = BisTooltip_PhaseData or {}

    local function assignRank(targetId, cls, spc, phs, rank)
        local tItem = tempLookup[targetId]
        if not tItem then tItem = {}; tempLookup[targetId] = tItem end

        local key = (specKeys[cls] and specKeys[cls][spc]) or (cls .. ":" .. spc)
        local tSpec = tItem[key]
        if not tSpec then tSpec = { class = cls, spec = spc }; tItem[key] = tSpec end

        local currentRank = tSpec[phs]
        if not currentRank or rank < currentRank then
            tSpec[phs] = rank
        end
    end

    if BisTooltip_ItemLists then
        for rawClass, specs in pairs(BisTooltip_ItemLists) do
            local class = canonicalClasses[rawClass] or rawClass
            for spec, phases in pairs(specs) do
                for _, phase in ipairs(sortedPhases) do
                    local items = phases[phase]
                    if items then
                        for _, itemData in pairs(items) do
                            if type(itemData) == "table" then
                                for i, itemId in ipairs(itemData) do
                                    if type(itemId) == "number" and itemId > 0 then

                                        assignRank(itemId, class, spec, phase, i)

                                        if BisTooltip_FactionMap and BisTooltip_FactionMap[itemId] then
                                            assignRank(BisTooltip_FactionMap[itemId], class, spec, phase, i)
                                        elseif BisTooltip_AliToHorde and BisTooltip_AliToHorde[itemId] then
                                            assignRank(BisTooltip_AliToHorde[itemId], class, spec, phase, i)
                                        end

                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    self.ReverseLookup = {}
    for itemId, classes in pairs(tempLookup) do
        local flatList = {}
        for _, entry in pairs(classes) do
            local labels = {}

            for _, phase in ipairs(sortedPhases) do
                local rank = entry[phase]
                if rank then
                    local phaseLabel = (rank == 1) and (phase .. " BIS") or (phase .. " alt " .. (rank - 1))
                    table.insert(labels, phaseLabel)
                end
            end

            if #labels > 0 then
                table.insert(flatList, {
                    class = entry.class,
                    spec = entry.spec,
                    rightText = table.concat(labels, " / ")
                })
            end
        end

        table.sort(flatList, function(a, b)
            if a.class == b.class then return a.spec < b.spec end
            return a.class < b.class
        end)
        self.ReverseLookup[itemId] = flatList
    end
end

function BisTooltipAddon:HandleChatCommand(input)
    local cmd = strtrim(input or ""):lower()
    if cmd == "fav" or cmd == "favorites" or cmd == "wishlist" then
        if self.ToggleFavoritesFrame then
            self:ToggleFavoritesFrame()
        end
    else
        self:createMainFrame()
    end
end

function BisTooltipAddon:OnInitialize()
    self:BuildFactionMaps()
    self:BuildReverseLookup()

    self.AceAddonName = "BiS-Tooltip Renewed"
    self.AddonNameAndVersion = "BiS-Tooltip Renewed"
    self:initConfig()
    self:addMapIcon()
    self:initBisTooltip()

    self:RegisterChatCommand("bt", "HandleChatCommand")
    self:RegisterChatCommand("bis", "HandleChatCommand")
    self:RegisterChatCommand("bistooltip", "HandleChatCommand")
end