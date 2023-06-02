local inService, targetList, drawMarker, markerData, obj, existingActions = false, {}, false, nil, nil, nil

if Config.Framework == 'qbcore' then
	QBCore = GetResourceState('qb-core') == 'started' and exports['qb-core']:GetCoreObject()

	RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
	AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
		Wait(2000)
		local count = lib.callback.await('JD_CommunityService:getCurrentActions', false)
		if count == nil then return print("JD_CommunityService | Something went wrong!") end
		beginService(count)
	end)

	ShowNotification = function(msg)
		QBCore.Functions.Notify(msg, 'success', 5000)
	end
elseif Config.Framework == 'esx' then
	ESX = GetResourceState('es_extended') == 'started' and exports.es_extended:getSharedObject()

	RegisterNetEvent('esx:playerLoaded')
	AddEventHandler('esx:playerLoaded', function()
		Wait(2000)
		local count = lib.callback.await('JD_CommunityService:getCurrentActions', false)
		if count == nil then return print("JD_CommunityService | Something went wrong!") end
		beginService(count)
	end)

	ShowNotification = function(msg)
		ESX.ShowNotification(msg)
	end
end

CreateThread(function()
	while true do
		local threadSleep = 1500
		if drawMarker then
			threadSleep = 0
			DrawMarker(20, markerData.x, markerData.y, markerData.z + 1.0, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 0.4, 0.4, 0.4, 235, 64, 52, 100, true, false, 2, true, false, false, false)
		end
		Wait(threadSleep)
	end
end)

function onExit(self)
	if inService then
		if Config.ServiceExtensionOnEscape >= 1 then
			local currentNumber = existingActions
			local extensionCount = Config.ServiceExtensionOnEscape
			existingActions = currentNumber + extensionCount
			ShowNotification('Your time has been extended by ' .. extensionCount .. ' actions!')
		end
		tpToZone()
	end
end

local poly = lib.zones.poly({
	points = {
		vec3(117.0, -1000.0, 29.0),
		vec3(213.0, -1034.0, 29.0),
		vec3(277.0, -864.0, 29.0),
		vec3(180.0, -831.0, 29.0),
	},
	thickness = 16.0,
	debug = false,
	onExit = onExit
})

RegisterNetEvent('JD_CommunityService:beginService')
AddEventHandler('JD_CommunityService:beginService', function(count)
	beginService(count)
end)

RegisterNetEvent('JD_CommunityService:releaseService')
AddEventHandler('JD_CommunityService:releaseService', function(count)
	inService = false
	releaseZone()
	lib.callback('JD_CommunityService:completeService')
	ShowNotification('You have been released from community service. Best behaviour, citizen!')
end)

beginService = function(actionCount)
	existingActions = actionCount
	inService = true
	tpToZone()
	startActions()
	changeClothing()
end

startActions = function()
	local indexNumber = math.random(1, #Config.ServiceLocations)

	drawMarker = true
	markerData = Config.ServiceLocations[indexNumber].coords.xyz
	if Config.InteractionType == 'ox_target' then
		local target = exports.ox_target:addSphereZone({
			coords = Config.ServiceLocations[indexNumber].coords.xyz,
			radius = 1,
			options = {
				{
					name = 'sweep',
					onSelect = targetInteract,
					icon = 'fa-solid fa-location-crosshairs',
					label = 'Sweep',
					canInteract = function(entity, distance, coords, name)
						return not lib.progressActive()
					end
				}
			}
		})
		table.insert(targetList, target)
	elseif Config.InteractionType == 'points' then
		local point = lib.points.new(Config.ServiceLocations[indexNumber].coords.xyz, 2, {})
		function point:onExit()
			lib.hideTextUI()
		end

		function point:nearby()
			lib.showTextUI('[E] - Sweep rubbish')
			if IsControlJustReleased(0, 38) then
				startSweep(point)
			end
		end
	end

	local modelHash = `v_ind_rc_rubbishppr` -- The ` return the jenkins hash of a string. see more at: https://cookbook.fivem.net/2019/06/23/lua-support-for-compile-time-jenkins-hashes/

	if not HasModelLoaded(modelHash) then
		-- If the model isnt loaded we request the loading of the model and wait that the model is loaded
		RequestModel(modelHash)

		while not HasModelLoaded(modelHash) do
			Wait(1)
		end
	end

	-- At this moment the model its loaded, so now we can create the object
	obj = CreateObject(modelHash, Config.ServiceLocations[indexNumber].coords.xyz, true)
end

tpToZone = function()
	SetEntityCoords(PlayerPedId(), Config.StartLocation.xyz)
end

releaseZone = function()
	returnClothing()
	lib.hideTextUI()
	SetEntityCoords(PlayerPedId(), Config.ReleaseLocation.xyz)
end

removeInteracts = function()
	if Config.InteractionType == 'ox_target' then
		for k, v in pairs(targetList) do
			exports.ox_target:removeZone(v)
			targetList[k] = nil
		end
	end
	drawMarker = false
	markerData = nil
end

targetInteract = function(data)
	if data.name == 'sweep' then
		startSweep()
	end
end

startSweep = function(point)
	if Config.InteractionType == 'points' then
		point:remove()
	end
	lib.hideTextUI()
	local progress = lib.progressCircle({
		duration = Config.ActionTime,
		label = 'Sweeping ground',
		useWhileDead = false,
		allowRagdoll = false,
		allowCuffed = false,
		allowFalling = false,
		canCancel = false,
		anim = { dict = 'amb@world_human_janitor@male@idle_a', clip = 'idle_a' },
		prop = { model = `prop_tool_broom`, bone = 28422, pos = { x = -0.005, y = 0.0, z = 0.0 }, rot = { x = 360.0, y = 360.0, z = 0.0 } },
		disable = { move = true, combat = true }
	})

	existingActions = existingActions - 1
	if existingActions >= 1 then
		ShowNotification('Actions remaining: ' .. existingActions)
	end
	updateFunction()
end

updateFunction = function()
	removeInteracts()
	DeleteObject(obj)
	obj = nil
	if existingActions >= 1 then
		startActions()
	else
		inService = false
		releaseZone()
		lib.callback('JD_CommunityService:completeService')
		ShowNotification('You have been released from community service. Best behaviour, citizen!')
	end
end

changeClothing = function()
	local gender = GetEntityModel(PlayerPedId())
	local PlayerPed = PlayerPedId()
	if gender == 'mp_m_freemode_01' then
		for k, v in pairs(Config.Clothes.male.components) do
			SetPedComponentVariation(PlayerPed, v['component_id'], v['drawable'], v['texture'], 0)
		end
	else
		for k, v in pairs(Config.Clothes.female.components) do
			SetPedComponentVariation(PlayerPed, v['component_id'], v['drawable'], v['texture'], 0)
		end
	end
end

returnClothing = function()
	if Config.Framework == 'qbcore' then
		TriggerServerEvent("qb-clothes:loadPlayerSkin") -- LOADING PLAYER'S CLOTHES
		TriggerServerEvent("qb-clothing:loadPlayerSkin") -- LOADING PLAYER'S CLOTHES - Event 2
	else
		ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
			TriggerEvent('skinchanger:loadSkin', skin)
		end)
	end
end

lib.callback.register('JD_CommunityService:inputCallback', function()
	local input = lib.inputDialog('Community Service', {
		{ type = 'input', label = 'Citizen ID', description = 'Citizen ID of the person to be released', required = true },
		{ type = 'input', label = 'Number of actions', description = 'Number of actions citizen will need to carry out', required = true }
	}, { allowCancel = false })
	return input
end)

lib.callback.register('JD_CommunityService:inputCallbackRelease', function()
	local input = lib.inputDialog('Community Service', {
		{ type = 'input', label = 'Citizen ID', description = 'Citizen ID of the person to be released', required = true } 
	}, { allowCancel = false })
	return input
end)
