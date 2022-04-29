local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('cr-trader:client:BaseElectronicsMenu')
AddEventHandler('cr-trader:client:BaseElectronicsMenu', function()
            local myMenu = {
                {
                    id = 1,
                    header = 'Electronics Trader'
                },
                {
                    id = 2,
                    header = "Trade Batteries",
                    txt = "x1 Battery = x11 Electronics & x3 Lithium",
                    params = {
                        event = "cr-trader:client:TradePrevention", --- event name
                    }
                },
				{
                    id = 3,
                    header = "Trade TV",
                    txt = "x1 TV = x33 Electronics",
                    params = {
                        event = "cr-trader:client:TradePrevention", --- event name
                    }
                },
				{
                    id = 4,
                    header = "Trade Telescope",
                    txt = "x1 Telescope = x17 Electronics & x8 Metal",
                    params = {
                        event = "cr-trader:client:TradePrevention", --- event name
                    }
                },
				{
                    id = 5,
                    header = "Trade Microwave",
                    txt = "x1 Microwave = x23 Electronics & x7 Lithium",
                    params = {
                        event = "cr-trader:client:TradePrevention", --- event name
                    }
                },
				{
                    id = 6,
                    header = "Trade CoffeeMaker",
                    txt = "x1 CoffeeMaker = x28 Electronics",
                    params = {
                        event = "cr-trader:client:TradePrevention", --- event name
                    }
                },
				{
                    id = 7,
                    header = "Trade Electronickit",
                    txt = "x1 Electronic Kit = x17 Electronics & x3 Lithium",
                    params = {
                        event = "cr-trader:client:TradePrevention", --- event name
                    }
                },
				{
                    id = 8,
                    header = "Trade GameBoy",
                    txt = "x1 GameBoy = x57 Electronics",
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
    exports['qb-target']:AddBoxZone("electronictrader", vector3(1126.31, -471.76, 66.49), 1, 1, {
	name = "electronictrader",
	heading = 345,
	debugPoly = false,
	}, {
		options = {
			{
            	type = "client",
            	event = "cr-trader:client:BaseElectronicsMenu",
				icon = "fas fa-laptop-medical",
				label = "Speak with Jeremy",
			},
		},
		distance = 2.5
    })
end)