Settings = { }


-- General
Settings.maxPlayerCount = 31 -- For internal usage only, do not touch it!
Settings.afkTimeout = 300 --in seconds
Settings.autoSavingTimeout = 180000
Settings.pingThreshold = 200


-- Place markers
Settings.placeMarkerRadius = 1.25
Settings.placeMarkerOpacity = 196


-- Scoreboard
Settings.scoreboardMaxPlayers = 16
Settings.kdRatioMinStat = 100


-- Player
Settings.disableHealthRegen = false
Settings.giveArmorAtSpawn = true
Settings.autoParachutingHeight = 80
Settings.giveParachuteAtSpawn = true
Settings.infinitePlayerStamina = true
Settings.weaponClipCount = 10
Settings.defaultPlayerWeapons = {
	{ id = "WEAPON_KNIFE", ammo = 0, components = { } },
	{ id = "WEAPON_PISTOL", ammo = 80, components = { }, selected = true },
}


-- Crew
Settings.crewInvitationTimeout = 10000


-- Pickups
Settings.pickupMaxCount = 5
Settings.pickupMinSpawnRadius = 25.
Settings.pickupMaxSpawnRadius = 100.
Settings.pickupMinDistance = 25.


-- RP
Settings.RPPerKill = 50
Settings.RPPerKillstreak = 25
Settings.RPPerJob = 50
Settings.RPGainedNotificationTime = 3500


-- Bounties
Settings.bounty = {
	timeout = 300000,
	reward = 150,
}


-- Market Manipulation Job
Settings.marketManipulation = {
	time = 600000,
	places = {
		{ ['x'] = 27.179788589478, ['y'] = -1340.0749511719, ['z'] = 29.497024536133 },
		{ ['x'] = -42.322410583496, ['y'] = -1749.1009521484, ['z'] = 29.421016693115 },
		{ ['x'] = -708.58825683594, ['y'] = -904.11706542969, ['z'] = 19.215591430664 },
		{ ['x'] = -1219.4338378906, ['y'] = -916.10382080078, ['z'] = 11.326217651367 },
		{ ['x'] = -1479.5504150391, ['y'] = -373.80960083008, ['z'] = 39.163394927979 },
		{ ['x'] = 377.10794067383, ['y'] = 332.92077636719, ['z'] = 103.56636810303 },
		{ ['x'] = 1160.6029052734, ['y'] = -314.04550170898, ['z'] = 69.205139160156 },
		{ ['x'] = 1126.3829345703, ['y'] = -981.70190429688, ['z'] = 45.415824890137 },
		{ ['x'] = -1828.1215820313, ['y'] = 799.11328125, ['z'] = 138.17001342773 },
		{ ['x'] = -2958.9916992188, ['y'] = 388.09457397461, ['z'] = 14.04315662384 },
		{ ['x'] = -3047.0500488281, ['y'] = 585.65979003906, ['z'] = 7.9089307785034 },
		{ ['x'] = -3249.46875, ['y'] = 1003.5993652344, ['z'] = 12.830706596375 },
		{ ['x'] = 1733.5750732422, ['y'] = 6420.5815429688, ['z'] = 35.037227630615 },
		{ ['x'] = 1707.1936035156, ['y'] = 4919.4487304688, ['z'] = 42.063674926758 },
		{ ['x'] = 547.52557373047, ['y'] = 2663.9638671875, ['z'] = 42.156494140625 },
		{ ['x'] = 1959.1160888672, ['y'] = 3748.2690429688, ['z'] = 32.343738555908 },
		{ ['x'] = 2672.8278808594, ['y'] = 3285.5939941406, ['z'] = 55.241142272949 },
		{ ['x'] = 2549.9296875, ['y'] = 384.43780517578, ['z'] = 108.62294769287 },
		{ ['x'] = 146.25691223145, ['y'] = -1044.6046142578, ['z'] = 29.377824783325 },
		{ ['x'] = -354.23629760742, ['y'] = -53.998760223389, ['z'] = 49.046318054199 },
		{ ['x'] = 1176.9967041016, ['y'] = 2711.8190917969, ['z'] = 38.097778320313 },
		{ ['x'] = -104.46595001221, ['y'] = 6477.015625, ['z'] = 32.505443572998 },
	},
	minReward = 1000,
	maxReward = 5000,
	RPPerRobbery = 250,
}


-- Velocity Job
Settings.velocity = {
	enterVehicleTime = 600000,
	preparationTime = 10000,
	driveTime = 300000,
	detonationTime = 5000,
	locations = {
		{ x = -344.57684326172, y = -932.30975341797, z = 30.422277450562, heading = 69.093620300293 },
		{ x = 850.43420410156, y = -1840.5521240234, z = 28.406866073608, heading = 86.003051757813 },
		{ x = 948.42572021484, y = 163.06883239746, z = 80.172180175781, heading = 260.31057739258 },
		{ x = -1330.0638427734, y = -228.81066894531, z = 42.231548309326, heading = 306.03131103516 },
		{ x = -1215.8439941406, y = -1346.943359375, z = 3.6422889232635, heading = 293.01425170898 },
	},
	minSpeed = 60,
	minReward = 1000,
	maxReward = 5000,
	RPPerAboutToDetonate = 500,
}


-- Most Wanted Job
Settings.mostWanted = {
	time = 300000,
	minReward = 1000,
	maxReward = 5000,
	RPPerCop = 50,
}


-- Asset Recovery Job
Settings.assetRecovery = {
	time = 1200000,
	variants = {
		{
			vehicle = "pigalle",
			vehicleLocation = { x = -1041.6690673828, y = -850.52899169922, z = 4.7838535308838, heading = 135.58250427246 },
			dropOffLocation = { x = 1537.0913085938, y = 6482.6098632813, z = 22.000032424927 },
		},

		{
			vehicle = "dominator",
			vehicleLocation = { x = 454.39685058594, y = -1024.5531005859, z = 28.112592697144, heading = 92.917694091797 },
			dropOffLocation = { x = 715.486328125, y = 4175.56640625, z = 40.000110626221 },
		},

		{
			vehicle = "comet2",
			vehicleLocation = { x = 852.61529541016, y = -1280.2347412109, z = 26.133306503296, heading = 359.4150390625 },
			dropOffLocation = { x = 1537.0913085938, y = 6482.6098632813, z = 22.000032424927 },
		},

		{
			vehicle = "feltzer3",
			vehicleLocation = { x = 468.05123901367, y = -65.828109741211, z = 77.158767700195, heading = 238.4743347168 },
			dropOffLocation = { x = 715.486328125, y = 4175.56640625, z = 40.000110626221 },
		},

		{
			vehicle = "blazer",
			vehicleLocation = { x = 1866.5213623047, y = 3699.1994628906, z = 32.8317527771, heading = 210.75952148438 },
			dropOffLocation = { x = 165.90403747559, y = -3081.7749023438, z = 5.5951142311096, heading = 270.91390991211 },
		},
	},
	dropRadius = 25.,
	minReward = 1000,
	maxReward = 5000,
}


-- Headhunter Job
Settings.headhunter = {
	time = 600000,
	targets = {
		{
			location = { x = -1847.6923828125, y = -1228.1429443359, z = 13.017274856567 },
			pedModel = "a_m_y_beachvesp_01",
		},

		{
			location = { x = -920.48883056641, y = -352.99243164063, z = 38.96821975708 },
			pedModel = "a_m_y_hasjew_01",
		},

		{
			location = { x = 722.82415771484, y = -760.00848388672, z = 25.20599937439 },
			pedModel = "s_m_y_garbage",
		},

		{
			location = { x = 814.84204101563, y = -1280.7314453125, z = 26.336791992188 },
			pedModel = "s_m_y_cop_01",
		},

		{
			location = { x = 337.9733581543, y = -2048.1398925781, z = 21.116983413696 },
			pedModel = "g_m_y_mexgang_01",
		},
	},
	weapons = {
		"WEAPON_SPECIALCARBINE",
		"WEAPON_ADVANCEDRIFLE",
		"WEAPON_AUTOSHOTGUN",
		"WEAPON_MINISMG",
		"WEAPON_RPG",
	},
	wantedLevel = 4,
	minReward = 1000,
	maxReward = 5000,
}

-- Crate Drops
Settings.crateDropSettings = {
	RP = 500,
	weaponClipCount = 5,
	weapons = {
		{ id = "WEAPON_COMPACTLAUNCHER", name = "Compact Grenade Launcher" },
		{ id = "WEAPON_GRENADELAUNCHER", name = "Grenade Launcher" },
		{ id = "WEAPON_RPG", name = "Rocket Laucher" },
		{ id = "WEAPON_HOMINGLAUNCHER", name = "Homing Laucher" },
		{ id = "WEAPON_MINIGUN", name = "Minigun" },
		{ id = "WEAPON_HEAVYSNIPER", name = "Heavy Sniper" },
		{ id = "WEAPON_SNIPERRIFLE", name = "Sniper Rifle" },
		{ id = "WEAPON_MARKSMANRIFLE", name = "Marksman Rifle" },
		{ id = "WEAPON_DOUBLEACTION", name = "Double-Action Revolver" },
	},
	timeout = 600000,
	notifyBeforeTimeout = 60000,
	positions = {
		{ ['x'] = 699.15850830078, ['y'] = -1594.9453125, ['z'] = 9.6801643371582 },
		{ ['x'] = 1436.9431152344, ['y'] = -2148.8503417969, ['z'] = 60.606800079346 },
		{ ['x'] = 977.98474121094, ['y'] = -3007.1948242188, ['z'] = 5.9007620811462 },
		{ ['x'] = 519.29821777344, ['y'] = -2980.8610839844, ['z'] = 6.0444560050964 },
		{ ['x'] = -1594.0063476563, ['y'] = -1025.740234375, ['z'] = 13.018488883972 },
		{ ['x'] = -3205.9792480469, ['y'] = 824.37823486328, ['z'] = 3.6351618766785 },
		{ ['x'] = -987.26776123047, ['y'] = 925.21795654297, ['z'] = 188.12802124023 },
		{ ['x'] = -323.3994140625, ['y'] = 1372.9141845703, ['z'] = 347.55932617188 },
		{ ['x'] = 738.34020996094, ['y'] = 1289.2221679688, ['z'] = 360.29647827148 },
		{ ['x'] = 1136.3858642578, ['y'] = 57.870365142822, ['z'] = 80.756072998047 },
		{ ['x'] = 1376.275390625, ['y'] = -740.32513427734, ['z'] = 67.232810974121 },
		{ ['x'] = 1975.4736328125, ['y'] = 501.99038696289, ['z'] = 161.87936401367 },
		{ ['x'] = 1461.1328125, ['y'] = 1111.3707275391, ['z'] = 114.33401489258 },
		{ ['x'] = 2282.044921875, ['y'] = 1530.5583496094, ['z'] = 65.374633789063 },
		{ ['x'] = 972.55712890625, ['y'] = 2366.0798339844, ['z'] = 52.216976165771 },
		{ ['x'] = 1456.7526855469, ['y'] = 2916.7160644531, ['z'] = 46.06986618042 },
		{ ['x'] = 1313.4600830078, ['y'] = 4332.83984375, ['z'] = 38.35871887207 },
		{ ['x'] = -1719.1187744141, ['y'] = 5044.27734375, ['z'] = 28.715219497681 },
		{ ['x'] = -2458.7272949219, ['y'] = 4203.5561523438, ['z'] = 3.6592676639557 },
		{ ['x'] = -2095.2294921875, ['y'] = 2519.5354003906, ['z'] = 0.95100903511047 },
	},
	guards = {
		hash = "s_m_y_marine_03",
		radius = 16.,
		armor = 200,
		weapons = {
			"WEAPON_SNIPERRIFLE",
			"WEAPON_SPECIALCARBINE",
			"WEAPON_ADVANCEDRIFLE",
			"WEAPON_BULLPUPSHOTGUN",
			"WEAPON_RPG",
			"WEAPON_CARBINERIFLE",
			"WEAPON_ADVANCEDRIFLE",
			"WEAPON_MINIGUN",

		},
		count = 13,
	},
}


-- Skins
Settings.skins = {
	["s_m_y_blackops_01"] = {
		name = "Default",
		RP = 0,
	},



	["csb_anita"] = {
		name = "Anita Mendoza",
		RP = 5000,
	},

	["csb_anton"] = {
		name = "Anton Beaudelaire",
		RP = 6000,
	},

	["ig_ashley"] = {
		name = "Ashley Butler",
		RP = 7000,
	},

	["ig_casey"] = {
		name = "Casey",
		RP = 8000,
	},

	["ig_clay"] = {
		name = "Clay Simons",
		RP = 9000,
	},

	["cs_debra"] = {
		name = "Debra",
		RP = 10000,
	},

	["csb_hugh"] = {
		name = "Hugh Harrison",
		RP = 11000,
	},

	["ig_jay_norris"] = {
		name = "Jay Norris",
		RP = 12000,
	},

	["cs_johnnyklebitz"] = {
		name = "Johnny Klebitz",
		RP = 13000,
	},

	["ig_karen_daniels"] = {
		name = "Karen Daniels",
		RP = 14000,
	},

	["ig_natalia"] = {
		name = "Natalia Zverovna",
		RP = 15000,
	},

	["ig_ortega"] = {
		name = "Ortega",
		RP = 16000,
	},

	["csb_oscar"] = {
		name = "Oscar Guzman",
		RP = 17000,
	},

	["ig_dreyfuss"] = {
		name = "Peter Dreyfuss",
		RP = 18000,
	},

	["ig_tanisha"] = {
		name = "Tanisha Jackson",
		RP = 19000,
	},

	["ig_terry"] = {
		name = "Terry Thorpe",
		RP = 20000,
	},



	["ig_andreas"] = {
		name = "Andreas Sanchez",
		RP = 25000,
	},

	["ig_taostranslator"] = {
		name = "Cheng's translator",
		RP = 30000,
	},

	["ig_denise"] = {
		name = "Denise Clinton",
		RP = 35000,
	},

	["ig_oneil"] = {
		name = "Elwood O'Neil",
		RP = 40000,
	},

	["ig_fabien"] = {
		name = "Fabien LaRouche",
		RP = 45000,
	},

	["ig_floyd"] = {
		name = "Floyd Hebert",
		RP = 50000,
	},

	["ig_drfriedlander"] = {
		name = "Isiah Friedlander",
		RP = 55000,
	},

	["ig_lazlow"] = {
		name = "Lazlow Jones",
		RP = 60000,
	},

	["ig_patricia"] = {
		name = "Patricia Madrazo",
		RP = 65000,
	},

	["ig_roccopelosi"] = {
		name = "Rocco Pelosi",
		RP = 70000,
	},

	["ig_siemonyetarian"] = {
		name = "Simeon Yetarian",
		RP = 75000,
	},

	["ig_taocheng"] = {
		name = "Tao Cheng",
		RP = 80000,
	},



	["ig_amandatownley"] = {
		name = "Amanda De Santa",
		RP = 100000,
	},

	["ig_jimmydisanto"] = {
		name = "Jimmy De Santa",
		RP = 125000,
	},

	["ig_tracydisanto"] = {
		name = "Tracey De Santa",
		RP = 150000,
	},

	["ig_brad"] = {
		name = "Brad Snider",
		RP = 175000,
	},

	["ig_stretch"] = {
		name = "Stretch",
		RP = 200000,
	},

	["ig_chengsr"] = {
		name = "Wei Cheng",
		RP = 225000,
	},

	["cs_martinmadrazo"] = {
		name = "Martin Madrazo",
		RP = 250000,
	},

	["ig_solomon"] = {
		name = "Solomon Richards",
		RP = 275000,
	},

	["ig_nervousron"] = {
		name = "Ron Jakowski",
		RP = 300000,
	},

	["ig_wade"] = {
		name = "Wade Hebert",
		RP = 325000,
	},

	["ig_molly"] = {
		name = "Molly Schultz",
		RP = 350000,
	},



	["ig_lestercrest"] = {
		name = "Lester Crest",
		RP = 550000,
	},

	["ig_davenorton"] = {
		name = "Dave Norton",
		RP = 600000,
	},

	["ig_lamardavis"] = {
		name = "Lamar Devis",
		RP = 650000,
	},

	["ig_stevehains"] = {
		name = "Steve Haines",
		RP = 700000,
	},

	["ig_devin"] = {
		name = "Devin Weston",
		RP = 750000,
	},



	["player_zero"] = {
		name = "Michael De Santa",
		RP = 1000000,
	},

	["player_one"] = {
		name = "Franklin Clinton",
		RP = 1250000,
	},

	["player_two"] = {
		name = "Trevor Phillips",
		RP = 1500000,
	},
}

-- Weapon tints
Settings.weaponTints = {
	[0] = {
		name = "Normal",
		RP = 0,
	},

	[1] = {
		name = "Green",
		RP = 5000,
	},

	[2] = {
		name = "Gold",
		RP = 10000,
	},

	[3] = {
		name = "Pink",
		RP = 25000,
	},

	[4] = {
		name = "Army",
		RP = 50000,
	},

	[5] = {
		name = "LSPD",
		RP = 100000,
	},

	[6] = {
		name = "Orange",
		RP = 250000,
	},

	[7] = {
		name = "Platinum",
		RP = 500000,
	},
}
