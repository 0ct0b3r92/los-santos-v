Streaming = { }


local logger = Logger:CreateNamedLogger('Streaming')

local function is_valid_id(value, funcName)
	if value ~= 0 then return true end
	logger:Error('Unable to '..funcName..': '..logger:ToString(value))
	return false
end

local function is_valid_string(value, funcName)
	if type(value) == 'string' and value ~= '' then return true end
	logger:Error('Unable to '..funcName..': '..logger:ToString(value))
	return false
end


function Streaming.RequestAnimSet(animSet)
	if not is_valid_string(animSet, 'RequestAnimSet') then return end

	if not HasAnimSetLoaded(animSet) then
		RequestAnimSet(animSet)
		while not HasAnimSetLoaded(animSet) do Citizen.Wait(0) end
	end
end


function Streaming.RequestModel(model)
	local hash = GetHashKey(model)
	
	if not is_valid_id(hash, 'RequestModel') then return end

	if not HasModelLoaded(hash) then
		RequestModel(hash)
		while not HasModelLoaded(hash) do Citizen.Wait(0) end
	end
end


function Streaming.RequestStreamedTextureDict(textureDict)
	if not is_valid_string(textureDict, 'RequestStreamedTextureDict') then return end

	if not HasStreamedTextureDictLoaded(textureDict) then
		RequestStreamedTextureDict(textureDict)
		while not HasStreamedTextureDictLoaded(textureDict) do Citizen.Wait(0) end
	end
end


function Streaming.RequestNamedPtfxAsset(assetName)
	if not is_valid_string(assetName, 'RequestNamedPtfxAsset') then return end

	if not HasNamedPtfxAssetLoaded(assetName) then
		RequestNamedPtfxAsset(assetName)
		while not HasNamedPtfxAssetLoaded(assetName) do Citizen.Wait(0) end
	end
end


function Streaming.RegisterPedHeadshot(ped)
	if not is_valid_id(ped, 'RegisterPedHeadshot') then return end

	local headshot = RegisterPedheadshot(ped)

	if not IsPedheadshotValid(headshot) then
		logger:Error('Unable to RegisterPedHeadshot: '..logger:ToString(headshot))
		return nil
	end

	return headshot
end