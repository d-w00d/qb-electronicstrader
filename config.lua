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
