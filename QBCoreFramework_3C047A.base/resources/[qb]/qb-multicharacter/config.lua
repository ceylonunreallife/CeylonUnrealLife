Config = {}
Config.Interior = vector3(-814.89, 181.95, 76.85) -- Interior to load where characters are previewed
Config.DefaultSpawn = vector3(-1035.71, -2731.87, 12.86) -- Default spawn coords if you have start apartments disabled
Config.PedCoords = vector4(-1084.35, -2728.49, 0.81, 289.12) -- Create preview ped at these coordinates
Config.HiddenCoords = vector4(-1044.81, -2749.69, 21.36, 336.72) -- Hides your actual ped while you are in selection
Config.CamCoords = vector4(-1081.47, -2727.25, 0.81, 111.35) -- Camera coordinates for character preview screen
Config.EnableDeleteButton = true -- Define if the player can delete the character or not

Config.DefaultNumberOfCharacters = 1 -- Define maximum amount of default characters (maximum 5 characters defined by default)
Config.PlayersNumberOfCharacters = { -- Define maximum amount of player characters by rockstar license (you can find this license in your server's database in the player table)
    { license = "license:7f303664b88d7da3961a42624c93a5afe4fc5b96", numberOfChars = 5 },
    { license = "license:3b4cf8c7901dc205b43a0554be25adca8f224d27", numberOfChars = 5 },
    { license = "license:d95aca50e1aa28e0ffda3f7d614616d8aab6e195", numberOfChars = 3 },
    { license = "license:ee3e9ee7a7970c2a78f620920e98520937ddeb55", numberOfChars = 5 },
    { license = "license:809bf7375f5b78face162e8b5cf62b3fdf0d9115", numberOfChars = 2 },
    { license = "license:aS64284bccb3fe5c646b30d8e84db81a2d54ed344", numberOfChars = 5 },
}
