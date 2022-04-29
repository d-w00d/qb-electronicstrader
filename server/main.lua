local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("cr-trader:server:Trade")
AddEventHandler("cr-trader:server:Trade", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.GetItemByName("gameboy") then
        TriggerClientEvent('okokNotify:Alert', source, "Electronic Trader", "I appreciate you doing the Trade! Here are your items...", 3500, 'info')
        Wait(350)
        if Config.Logs then
            TriggerEvent('qb-log:server:CreateLog', 'electronictrader', 'Electronic Trader', 'red', GetPlayerName(Player.PlayerData.source).. " has traded a Gameboy")
        end
        Player.Functions.RemoveItem("gameboy", 1)
        Player.Functions.AddItem("electronics", 57)
    elseif Player.Functions.GetItemByName("electronickit") then
        TriggerClientEvent('okokNotify:Alert', source, "Electronic Trader", "I appreciate you doing the Trade! Here are your items...", 3500, 'info')
        Wait(350)
        if Config.Logs then
            TriggerEvent('qb-log:server:CreateLog', 'electronictrader', 'Electronic Trader', 'red', GetPlayerName(Player.PlayerData.source).. " has traded an Electronic Kit")
        end
        Player.Functions.RemoveItem("electronickit", 1)
        Player.Functions.AddItem("electronics", 17)
        Player.Functions.AddItem("lithium", 3)
    elseif Player.Functions.GetItemByName("microwave") then
        TriggerClientEvent('okokNotify:Alert', source, "Electronic Trader", "I appreciate you doing the Trade! Here are your items...", 3500, 'info')
        Wait(350)
        if Config.Logs then
            TriggerEvent('qb-log:server:CreateLog', 'electronictrader', 'Electronic Trader', 'red', GetPlayerName(Player.PlayerData.source).. " has traded a Microwave")
        end
        Player.Functions.RemoveItem("microwave", 1)
        Player.Functions.AddItem("electronics", 23)
        Player.Functions.AddItem("lithium", 7)
    elseif Player.Functions.GetItemByName("coffeemaker") then
        TriggerClientEvent('okokNotify:Alert', src, "Electronic Trader", "I appreciate you doing the Trade! Here are your items...", 3500, 'info')
        Wait(350)
        if Config.Logs then
            TriggerEvent('qb-log:server:CreateLog', 'electronictrader', 'Electronic Trader', 'red', GetPlayerName(Player.PlayerData.source).. " has traded a CoffeeMaker")
        end
        Player.Functions.RemoveItem("coffeemaker", 1)
        Player.Functions.AddItem("electronics", 28)
    elseif Player.Functions.GetItemByName("telescope") then
        TriggerClientEvent('okokNotify:Alert', src, "Electronic Trader", "I appreciate you doing the Trade! Here are your items...", 3500, 'info')
        Wait(350)
        if Config.Logs then
            TriggerEvent('qb-log:server:CreateLog', 'electronictrader', 'Electronic Trader', 'red', GetPlayerName(Player.PlayerData.source).. " has traded a Telescope")
        end
        Player.Functions.RemoveItem("telescope", 1)
        Player.Functions.AddItem("electronics", 17)
        Player.Functions.AddItem("metal", 8)
    elseif Player.Functions.GetItemByName("tv") then
        TriggerClientEvent('okokNotify:Alert', src, "Electronic Trader", "I appreciate you doing the Trade! Here are your items...", 3500, 'info')
        Wait(350)
        if Config.Logs then
            TriggerEvent('qb-log:server:CreateLog', 'electronictrader', 'Electronic Trader', 'red', GetPlayerName(Player.PlayerData.source).. " has traded a TV")
        end
        Player.Functions.RemoveItem("tv", 1)
        Player.Functions.AddItem("electronics", 33)
    elseif Player.Functions.GetItemByName("battery") then
        TriggerClientEvent('okokNotify:Alert', src, "Electronic Trader", "I appreciate you doing the Trade! Here are your items...", 3500, 'info')
        Wait(350)
        if Config.Logs then
            TriggerEvent('qb-log:server:CreateLog', 'electronictrader', 'Electronic Trader', 'red', GetPlayerName(Player.PlayerData.source).. " has traded a Battery")
        end
        Player.Functions.RemoveItem("battery", 1)
        Player.Functions.AddItem("electronics", 11)
        Player.Functions.AddItem("lithium", 3)
    else
        if Config.Notifications == 'QBCore' then

        elseif Config.Notifications == 'okok' then
            TriggerClientEvent('okokNotify:Alert', src, "Electronic Trader", "You don\'t have a Battery on you...", 3500, 'error')
        elseif Config.Notifications == 'mythic' then

        end
end)