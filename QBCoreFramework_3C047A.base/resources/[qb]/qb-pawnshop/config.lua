Config = {}

Config.PawnLocation = {
    [1] = {
            coords = vector3(412.34, 314.81, 103.13),
            length = 1.5,
            width = 1.8,
            heading = 207.0,
            debugPoly = false,
            minZ = 100.97,
            maxZ = 105.42,
            distance = 3.0
        },
    }

Config.BankMoney = false -- Set to true if you want the money to go into the players bank
Config.UseTimes = false -- Set to false if you want the pawnshop open 24/7
Config.TimeOpen = 7 -- Opening Time
Config.TimeClosed = 17 -- Closing Time
Config.SendMeltingEmail = true

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.PawnItems = {
    [1] = {
        item = 'goldchain',
        price = math.random(200,1000)
    },
    [2] = {
        item = 'diamond_ring',
        price = math.random(500,1500)
    },
    [3] = {
        item = 'rolex',
        price = math.random(50,1200)
    },
    [4] = {
        item = '10kgoldchain',
        price = math.random(100,900)
    },
    [5] = {
        item = 'tablet',
        price = math.random(1000,3500)
    },
    [6] = {
        item = 'iphone',
        price = math.random(50,100)
    },
    [7] = {
        item = 'samsungphone',
        price = math.random(50,100)
    },
    [8] = {
        item = 'laptop',
        price = math.random(50,100)
    },
    [9] = {
        item = 'goldbar',
        price = math.random(200,1200)
    },
    [10] = {
        item = 'diamond',
        price = math.random(500,2000)
    },
    [11] = {
        item = '10ct_gold_chain',
        price = math.random(3000,5000)
    },
    [12] = {
        item = 'provision_folder_watches',
        price = math.random(5200,6500)
    },
    [13] = {
        item = 'goldchip',
        price = math.random(5200,6780)
    },
    [14] = {
        item = 'goldingot',
        price = math.random(5200,6700)
    },
    [15] = {
        item = 'provision_watch',
        price = math.random(5000,7200)
    },
    [16] = {
        item = 'chest_gold',
        price = math.random(5000,8200)
    },
    [17] = {
        item = 'gold-record',
        price = math.random(6000,12000)
    }
}

Config.MeltingItems = { -- meltTime is amount of time in minutes per item
    [1] = {
        item = 'goldchain',
        rewards = {
            [1] = {
                item = 'goldbar',
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [2] = {
        item = 'diamond_ring',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 1
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [3] = {
        item = 'rolex',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 1
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [4] = {
        item = '10kgoldchain',
        rewards = {
            [1] = {
                item = 'goldbar',
                amount = 2
            }
        },
        meltTime = 0.15
    },
}
