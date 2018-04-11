Skin = { }


function Skin.ChangePlayerSkin(id)
	ResetPedMovementClipset(PlayerPedId(), 0.0)

	local model = GetHashKey(id)

	Streaming.RequestModel(id)

	local weapons = Player.GetPlayerWeapons()
	local health = GetEntityHealth(PlayerPedId())
	local armor = GetPedArmour(PlayerPedId())
	local isHasParachute = HasPedGotWeapon(PlayerPedId(), GetHashKey("GADGET_PARACHUTE"), false)

	SetPlayerModel(PlayerId(), model)

	-- https://forum.fivem.net/t/info-invisible-or-glitched-peds-list-wiki/40748/23
	local ped = PlayerPedId()
	SetPedRandomComponentVariation(ped, false)
	SetTimeout(1000, function() SetPedDefaultComponentVariation(ped) end)

	Player.skin = id
	SetPedArmour(ped, armor)
	SetEntityHealth(ped, health)

	if Settings.giveParachuteAtSpawn then
		if isHasParachute then
			GiveWeaponToPed(ped, GetHashKey("GADGET_PARACHUTE"), 1, false, false)
		end
	end

	Player.GiveWeapons(weapons)

	SetModelAsNoLongerNeeded(model)
end