Config = {}

Config.Notifications = 'okok'
 -- 'QBCore' = QBCoreNotify
 -- 'okok' == okokNotify
 -- 'mythic' == mythic_notify
Config.Logs = true
 -- True = Logs Enabled
 -- False = Logs Disabled

Config.Peds = {
    [1] = { -- Copy the template and add it below other entries to add as many peds as you would like.
        coords = vector3(1126.3740, -471.7325, 66.4872), -- Coordinates for the PED to spawn
        heading = 76.4781, -- Heading where the ped is facing
        ped = 'cs_jimmydisanto', -- Ped Hash (https://docs.fivem.net/docs/game-references/ped-models/)
        PedName = "Jimmy", -- Ped Name
    },
}

Config.BatteryTrade = {
    ["electronics"] = 11,
    ["lithium"] = 3
}

Config.TVTrade = {
    ["electronics"] = 33,
}

Config.TeleTrade = {
    ["electronics"] = 17,
    ["metalscrap"] = 8
}

Config.MicroTrade = {
    ["electronics"] = 23,
    ["lithium"] = 7
}

Config.CoffeeTrade = {
    ["electronics"] = 28,
}

Config.ElecKitTrade = {
    ["electronics"] = 17,
    ["lithium"] = 3
}

Config.GameboyTrade = {
    ["electronics"] = 57,
}
