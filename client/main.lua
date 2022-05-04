local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('cr-trader:client:BaseElectronicsMenu')
AddEventHandler('cr-trader:client:BaseElectronicsMenu', function()
            local myMenu = {
                {
                    id = 1,
                    header = Config.Peds[k].PedName..' The Trader'
                },
                {
                    id = 2,
                    header = "Trade Batteries",
                    txt = "x1 Battery = "..Config.BatteryTrade["electronics"].." Electronics & "..Config.BatteryTrade["lithium"].." Lithium.",
                    params = {
                        event = "cr-trader:client:TradePrevention", --- event name
                    }
                },
				{
                    id = 3,
                    header = "Trade TV",
                    txt = "x1 TV = "..Config.TVTrade["electronics"].." Electronics.",
                    params = {
                        event = "cr-trader:client:TradePrevention", --- event name
                    }
                },
				{
                    id = 4,
                    header = "Trade Telescope",
                    txt = "x1 Telescope = "..Config.TeleTrade["electronics"].." Electronics & "..Config.TeleTrade["metalscrap"].." Metal Scrap.",
                    params = {
                        event = "cr-trader:client:TradePrevention", --- event name
                    }
                },
				{
                    id = 5,
                    header = "Trade Microwave",
                    txt = "x1 Microwave = "..Config.MicroTrade["electronics"].." Electronics & "..Config.MicroTrade["lithium"].." Lithium.",
                    params = {
                        event = "cr-trader:client:TradePrevention", --- event name
                    }
                },
				{
                    id = 6,
                    header = "Trade CoffeeMaker",
                    txt = "x1 CoffeeMaker = "..Config.CoffeeTrade["electronics"].." Electronics.",
                    params = {
                        event = "cr-trader:client:TradePrevention", --- event name
                    }
                },
				{
                    id = 7,
                    header = "Trade Electronickit",
                    txt = "x1 Electronic Kit = "..Config.ElecKitTrade["electronics"].." Electronics & "..Config.ElecKitTrade["lithium"].." Lithium.",
                    params = {
                        event = "cr-trader:client:TradePrevention", --- event name
                    }
                },
				{
                    id = 8,
                    header = "Trade GameBoy",
                    txt = "x1 GameBoy = "..Config.GameboyTrade["electronics"].." Electronics.",
                    params = {
                        event = "cr-trader:client:TradePrevention", --- event name
                    }
                },
                {
                    id = 9,
                    header = 'End Of Trades',
                    txt = 'Click to Close Menu',
                    params = {}
                },
            }
            exports['qb-menu']:openMenu(myMenu)
end)

RegisterNetEvent('cr-trader:client:TradePrevention')
AddEventHandler('cr-trader:client:TradePrevention', function()
	TriggerServerEvent("cr-trader:server:Trade")
end)

Citizen.CreateThread(function()
    for k, v in pairs(Config.Peds) do
        RequestModel(v.ped)
        while not HasModelLoaded(v.ped) do
            Wait(20)
        end
        local inRange = false
        local spawned = v.spawned
        while not spawned do
            local ped = PlayerPedId()
            local pedCoords = GetEntityCoords(ped)
            local dist = #(pedCoords - v.coords)
            
            if dist <= 500 then
                inRange = true
            end
    
            if dist <= 100 then
                local npc = CreatePed(0, v.ped, v.coords['x'], v.coords['y'], v.coords['z'], v.heading, true, 1)
                ActivatePedTarget(npc, k)
                v.spawned = true
                break
            end
    
            if not inRange then
                Wait(2000)
            end
            Wait(100)
        end
        Wait(100)
    end
end)

local function ActivatePedTarget(ped, k)
    exports['qb-target']:AddTargetEntity(ped, {
        options = {
            {
                type = "client",
                event = "cr-trader:client:BaseElectronicsMenu",
                icon = "fas fa-laptop-medical",
                label = "Speak with "..Config.Peds[k].PedName,
                ped = k
            },
        },
        distance = 3.0
    })
end
