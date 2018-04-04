AddEventHandler('lsv:init', function(isRegistered)
	if not isRegistered then return end

	--https://pastebin.com/amtjjcHb
	local tips = {
		"Performing Jobs and taking out players will increase your RP.",
		"Earn RP (Reputation Points, not RolePlay) to unlock new customization options.",
		"Press ~INPUT_INTERACTION_MENU~ to open Interaction menu.",
		"Use Report Player option from Interaction menu to improve your overall game experience.",
		"Hold ~INPUT_MULTIPLAYER_INFO~ to view the scoreboard.",
		"Press ~INPUT_ENTER_CHEAT_CODE~ to enlarge the Radar.",
		"Press ~INPUT_DUCK~ to enter stealth mode.",
		"Visit ~BLIP_GUN_SHOP~ to customize your weapons.",
		"Visit ~BLIP_CLOTHES_STORE~ to change your character.",
		"Join our Discord server\n~b~https://discord.gg/fAtxuhx",
	}
	local tipTime = 10000
	local tipInterval = 30000

	for _, tip in ipairs(tips) do
		SetTimeout(tipTime, function()
			Gui.DisplayHelpText(tip)
		end)

		tipTime = tipTime + tipInterval
	end
end)


RegisterNetEvent('lsv:playerDisconnected')
AddEventHandler('lsv:playerDisconnected', function(name)
	Gui.DisplayNotification('<C>'..name..'</C> left.')
end)


RegisterNetEvent('lsv:playerConnected')
AddEventHandler('lsv:playerConnected', function(source)
	if PlayerId() ~= GetPlayerFromServerId(source) and NetworkIsPlayerActive(GetPlayerFromServerId(source)) then
		Gui.DisplayNotification(Gui.GetPlayerName(source).." connected.")
	end
end)


RegisterNetEvent('lsv:onPlayerDied')
AddEventHandler('lsv:onPlayerDied', function(source, suicide)
	if NetworkIsPlayerActive(GetPlayerFromServerId(source)) then
		if suicide then
			Gui.DisplayNotification(Gui.GetPlayerName(source).." committed suicide.")
		else
			Gui.DisplayNotification(Gui.GetPlayerName(source).." died.")
		end
	end
end)


RegisterNetEvent('lsv:onPlayerKilled')
AddEventHandler('lsv:onPlayerKilled', function(source, killer, message)
	if NetworkIsPlayerActive(GetPlayerFromServerId(source)) and NetworkIsPlayerActive(GetPlayerFromServerId(killer)) then
		Gui.DisplayNotification(Gui.GetPlayerName(killer).." "..message.." "..Gui.GetPlayerName(source, nil, true)..'.')
	end
end)


-- GUI
AddEventHandler('lsv:init', function()
	while true do
		Citizen.Wait(0)

		if IsControlPressed(0, 20) then Scoreboard.DisplayThisFrame() end
	end
end)


local function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end


-- Wasted Screen
-- TODO Rework with spawn manager
Citizen.CreateThread(function()
	local scaleform = Scaleform:Request('MP_BIG_MESSAGE_FREEMODE')
	RequestScriptAudioBank('MP_WASTED', 0)

	while true do
		Citizen.Wait(0)

		if IsEntityDead(PlayerPedId()) then
				StartScreenEffect('DeathFailOut', 0, 0)
				ShakeGameplayCam('DEATH_FAIL_IN_EFFECT_SHAKE', 1.0)
				PlaySoundFrontend(-1, 'MP_Flash', 'WastedSounds', 1)

				Citizen.Wait(500)

				scaleform:Call('SHOW_SHARD_WASTED_MP_MESSAGE', '~r~WASTED')

				while IsEntityDead(PlayerPedId()) do
					scaleform:RenderFullscreen()
					Citizen.Wait(0)
				end

				StopScreenEffect('DeathFailOut')
				StopGameplayCamShaking(true)
		end
	end
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		RemoveMultiplayerBankCash()
		RemoveMultiplayerHudCash()
	end
end)


AddEventHandler('lsv:init', function()
	local isBigMapEnabled = false

	while true do
		if IsControlJustReleased(0, 243) then
			isBigMapEnabled = not isBigMapEnabled
			Citizen.InvokeNative(0x231C8F89D0539D8F, isBigMapEnabled, false)
		end

		Citizen.Wait(0)
	end
end)


AddEventHandler('lsv:init', function()
	while true do
		for id = 0, Settings.maxPlayerCount do
			if id ~= PlayerId() then
				local ped = GetPlayerPed(id)
				local blip = GetBlipFromEntity(ped)

				if NetworkIsPlayerActive(id) and ped ~= nil then
					if not DoesBlipExist(blip) then
						blip = AddBlipForEntity(ped)
						SetBlipHighDetail(blip, true)
						SetBlipScale(blip, 0.85)
					end

					local isPlayerDead = IsPlayerDead(id)

					local serverId = GetPlayerServerId(id)
					local isPlayerBounty = serverId == World.GetBountyPlayerId()
					local isPlayerInCrew = Utils.Index(Player.crewMembers, serverId)

					local blipSprite = Blip.Standard()
					if isPlayerDead then blipSprite = Blip.Dead()
					elseif isPlayerBounty then blipSprite = Blip.BountyHit() end

					local blipColor = Color.BlipWhite()
					if isPlayerInCrew then blipColor = Color.BlipBlue()
					elseif isPlayerBounty then blipColor = Color.BlipRed() end

					SetBlipSprite(blip, blipSprite)
					ShowHeadingIndicatorOnBlip(blip, blipSprite == Blip.Standard())
					SetBlipAlpha(blip, GetPedStealthMovement(ped) and not isPlayerInCrew and 0 or 255)
					SetBlipFriend(blip, isPlayerInCrew)
					SetBlipShrink(blip, not isPlayerBounty)
					SetBlipColour(blip, blipColor)
					SetBlipNameToPlayerName(blip, id)
				else
					SetBlipAlpha(blip, 0)
				end
			end
		end

		Citizen.Wait(0)
	end
end)