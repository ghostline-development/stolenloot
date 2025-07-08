local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent("sbrp-loot:pickupLoot", function(prop)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if not Config.LootProps[prop] then return end

    local lootData = Config.LootProps[prop]
    local item = lootData.item or "stolen_goods"
    local amount = math.random(1, 3)

    Player.Functions.AddItem(item, amount)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[item], "add", amount)
    TriggerClientEvent("QBCore:Notify", src, ("You looted a %s and found %sx %s."):format(lootData.label, amount, QBCore.Shared.Items[item].label), "success")
end)

-- Police alert stays the same
RegisterServerEvent("sbrp-loot:alertPolice", function(coords)
    local players = QBCore.Functions.GetPlayers()
    for _, pid in pairs(players) do
        local p = QBCore.Functions.GetPlayer(pid)
        if p and p.PlayerData.job.name == "police" then
            TriggerClientEvent("QBCore:Notify", pid, "Suspicious smoke seen nearby!", "inform")
            TriggerClientEvent("QBCore:Client:SetPoliceAlert", pid, coords)
        end
    end
end)
