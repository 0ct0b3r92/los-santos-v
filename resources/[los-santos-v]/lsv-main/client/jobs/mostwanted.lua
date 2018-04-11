AddEventHandler('lsv:startMostWanted', function()
	World.SetWantedLevel(5)

	JobWatcher.StartJob('Most Wanted')

	local eventStartTime = GetGameTimer()
	local jobId = JobWatcher.GetJobId()
	local copsKilled = 0
	local killedCopPeds = { }

	Gui.StartJob(jobId, 'You have started Most Wanted. Stay alive with a wanted level.', 'Kill cops to get extra RP.')

	while true do
		Citizen.Wait(0)

		if GetTimeDifference(GetGameTimer(), eventStartTime) < Settings.mostWanted.time then
			if IsPlayerDead(PlayerId()) then
				TriggerEvent('lsv:mostWantedFinished', false)
				return
			end

			if GetPlayerWantedLevel(PlayerId()) == 0 then
				TriggerEvent('lsv:mostWantedFinished', false, 'You lose the cops.')
				return
			end

			local handle, ped = FindFirstPed()
			if handle ~= -1 then
				repeat
					if IsPedDeadOrDying(ped, true) then
						local pedType = GetPedType(ped)
						local isPedCop = pedType == 6 or pedType == 27

						if isPedCop and GetPedSourceOfDeath(ped) == PlayerPedId() and not Utils.IndexOf(killedCopPeds, NetworkGetNetworkIdFromEntity(ped)) then
							table.insert(killedCopPeds, PedToNet(ped))
							TriggerServerEvent('lsv:mostWantedCopKilled')
							copsKilled = copsKilled + 1
						end
					end
					status, ped = FindNextPed(handle)
				until not status
				EndFindPed(handle)
			end

			local passedTime = GetGameTimer() - eventStartTime
			local secondsLeft = math.floor((Settings.mostWanted.time - passedTime) / 1000)
			Gui.DrawTimerBar(0.13, 'TIME LEFT', secondsLeft)
			Gui.DrawBar(0.13, 'COPS KILLED', copsKilled, nil, 2)
			Gui.DisplayObjectiveText('Stay alive with a wanted level.')
		else
			TriggerServerEvent('lsv:mostWantedFinished')
			return
		end
	end
end)


RegisterNetEvent('lsv:mostWantedFinished')
AddEventHandler('lsv:mostWantedFinished', function(success, reason)
	JobWatcher.FinishJob('Most Wanted')

	World.SetWantedLevel(0)

	Gui.FinishJob('Most Wanted', success, reason)
end)