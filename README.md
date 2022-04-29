# cr-trader
Simple NPC Trader for QBCore

Developed By: SixGrams#0544

Constant Development Discord: https://discord.gg/gSQbshCNv4

Constant RolePlay Discord: https://discord.gg/constantroleplay

If you are to run into any issues regarding this Resource you may open a Ticket within Constant Development or ask for appropiate Support within the Discord!

This Resource is setup for you to have an NPC that would be used to further Trade with.

Dependencies:
- [qb-target](https://github.com/Renewed-Scripts/qb-target)
- [qb-menu](https://github.com/qbcore-framework/qb-menu)

-- Place into qb-core/shared/items.lua
```
    ["electronics"] = {
        ["name"] = "electronics",
        ["label"] = "Electronics",
        ["weight"] = 25,
        ["type"] = "item",
        ["image"] = "electronics.png",
        ["unique"] = false,
        ["useable"] = nil,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Okay, so now I am a tech genius?"
    },
    ['battery'] = {
        ['name'] = 'battery', 			    
        ['label'] = 'AA Batter ', 				
        ['weight'] = 25, 		
        ['type'] = 'item', 		
        ['image'] = 'battery.png', 		    
        ['unique'] = false, 	
        ['useable'] = true, 	
        ['shouldClose'] = true,	   
        ['combinable'] = nil,   
        ['description'] = 'A Double A Battery!!!',
    },
    ["tv"] = {    ["name"] = "tv",    ["label"] = "TV",    ["weight"] = 35000,    ["type"] = "item",    ["image"] = "tv.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A stolen TV."},
    ["microwave"] = {    ["name"] = "microwave",    ["label"] = "Microwave",    ["weight"] = 15000,    ["type"] = "item",    ["image"] = "microwave.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A stolen Microwave."},
    ["telescope"] = {    ["name"] = "telescope",    ["label"] = "Telescope",    ["weight"] = 8500,    ["type"] = "item",    ["image"] = "telescope.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A stolen Telescope."},
    ["coffeemaker"] = {    ["name"] = "coffeemaker",    ["label"] = "Coffee Maker",    ["weight"] = 25000,    ["type"] = "item",    ["image"] = "coffeemaker.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A stolen Coffee Machine."},
    ["gameboy"] = {    ["name"] = "gameboy",    ["label"] = "Gameboy",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "gameboy.png",    ["unique"] = false,    ["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A working Gameboy."},
```
