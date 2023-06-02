Config = {}
Config.AmountOfItems = 10 --how many times the script will loop
Config.OpenTime = 5000 --how long you want it to take to open the gift (in ms)

--Config.Joingiftitem = {
--    [1] =  {
--        item = "item1", -- Item name from your shared items.lua
--        minAmount = 1, --Min amount of the item you want given out
--        maxAmount = 5 --Max amount of the item you want given out
--    },
--}

Config.Joingiftitem = {
    [1] =  {item = "sandwich", minAmount = 5,  maxAmount = 8},
    [2] =  {item = "water_bottle", minAmount = 5,  maxAmount = 8},
    [3] =  {item = "vodka", minAmount = 1,  maxAmount = 2},
    [4] =  {item = "joint", minAmount = 5,  maxAmount = 5},
    [5] =  {item = "lockpick", minAmount = 5,  maxAmount = 8},
}