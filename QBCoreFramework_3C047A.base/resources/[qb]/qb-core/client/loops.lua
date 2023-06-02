CreateThread(function()
    while true do
        local sleep = 0
        if LocalPlayer.state.isLoggedIn then
            sleep = (1000 * 60) * QBCore.Config.UpdateInterval
            TriggerServerEvent('QBCore:UpdatePlayer')
        end
        Wait(sleep)
    end
end)

CreateThread(function()
    while true do
        if LocalPlayer.state.isLoggedIn then
            if (QBCore.PlayerData.metadata['hunger'] <= 0 or QBCore.PlayerData.metadata['thirst'] <= 0) and not QBCore.PlayerData.metadata['isdead'] then
                local ped = PlayerPedId()
                local currentHealth = GetEntityHealth(ped)
                local decreaseThreshold = math.random(5, 10)
                SetEntityHealth(ped, currentHealth - decreaseThreshold)
            end
        end
        Wait(QBCore.Config.StatusInterval)
    end
end)

Citizen.CreateThread(function()
	while true do
        --Melee
 	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 0.2)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_knife"), 0.3)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_bat"), 0.3)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_nightstick"), 0.3)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_battleaxe"), 0.3)

    --Handguns
    N_0x4757f00bc6323cfe(GetHashKey("weapon_pistol"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_pistol_mk2"), 0.42)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_combatpistol"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_pistol50"), 0.48)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_snspistol"), 0.3)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_snspistol_mk2"), 0.41)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_heavypistol"), 0.55)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_vintagepistol"), 0.39)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_marksmanpistol"), 0.2)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_revolver"), 0.5)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_revolver_mk2"), 0.68)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_doubleaction"), 0.2)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_raypistol"), 0.1)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_ceramicpistol"), 0.2)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_navyrevolver"), 0.6)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_gadgetpistol"), 0.6)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_machinepistol"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_machinepistol"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("weapon_appistol"), 0.6)
    
    Wait(0)
    end
end)