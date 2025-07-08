local QBCore = exports['qb-core']:GetCoreObject()

local function TriggerFakeLootEffects(coords)
    RequestNamedPtfxAsset("scr_rcbarry2")
    while not HasNamedPtfxAssetLoaded("scr_rcbarry2") do Wait(0) end

    UseParticleFxAssetNextCall("scr_rcbarry2")
    StartParticleFxNonLoopedAtCoord("scr_clown_appears", coords.x, coords.y, coords.z + 0.5, 0.0, 0.0, 0.0, 1.5, false, false, false)

    TriggerServerEvent("sbrp-loot:alertPolice", coords)
end

local function SpawnLoot()
    print("[DEBUG] Spawning Loot...")
    for zoneName, zone in pairs(Config.Zones) do
        print("[DEBUG] Checking zone:", zoneName)
        for _, loc in pairs(zone.locations) do
            local propNames = {}
            for k in pairs(Config.LootProps) do propNames[#propNames + 1] = k end
            local propName = propNames[math.random(#propNames)]

            print("[DEBUG] Spawning prop:", propName, loc)
            local obj = CreateObject(propName, loc.x, loc.y, loc.z - 1.0, false, true, true)
            PlaceObjectOnGroundProperly(obj)
            FreezeEntityPosition(obj, true)

            exports['qb-target']:AddTargetEntity(obj, {
                options = {
                    {
                        icon = "fas fa-box",
                        label = "Grab Stolen Loot",
                        action = function()
                            if math.random() < Config.FakeChance then
                                TriggerFakeLootEffects(loc)
                            else
                                print("[DEBUG] Triggering pickup for:", propName)
                                TriggerServerEvent("sbrp-loot:pickupLoot", propName)
                            end
                            DeleteEntity(obj)
                        end
                    }
                },
                distance = 2.0
            })
        end
    end
end

RegisterNetEvent("sbrp-loot:spawnLoot", function()
    print("[DEBUG] SpawnLoot called from event")
    SpawnLoot()
end)

-- Auto spawner loop
CreateThread(function()
    while true do
        Wait(Config.AutoSpawnMinutes * 60000)
        SpawnLoot()
    end
end)
