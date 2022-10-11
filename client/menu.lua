local QBCore = exports['qb-core']:GetCoreObject()
-- target
Citizen.CreateThread(function()
	
	-- dj booth
	exports['qb-target']:AddBoxZone("CayoDJ", vector3(4893.47, -4906.07, 3.49), 0.8, 1.8, {
		name = "Cayo DJ",
		heading = 358,
		debugPoly = false,
		minZ=3.34,
		maxZ=4.14,
		}, {
			options = {
				{  
					type = "client",
					event = "rsg_cayodj:client:djmenu",
					icon = "fas fa-music",
					label = "Cayo DJ",
					--job = "cayobeachbar",
				},
			},
		distance = 1.5
	})
	
end)

RegisterNetEvent('rsg_cayodj:client:djmenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "💿 | DJ Menu",
			isMenuHeader = true,
        },
        {
            header = "🎶 | Play a song",
            txt = "Enter a youtube URL",
            params = {
                event = "rsg_cayodj:client:musicMenu"
            }
        },
		{
            header = "⏸️ | Pause Music",
            txt = "Pause currently playing music",
            params = {
                event = "rsg_cayodj:client:pauseMusic"
            }
        },
		{
            header = "▶️ | Resume Music",
            txt = "Resume playing paused music",
            params = {
                event = "rsg_cayodj:client:resumeMusic"
            }
        },
		{
            header = "🔈 | Change Volume",
            txt = "Adjust the volume of the music",
            params = {
                event = "rsg_cayodj:client:changeVolume"
            }
        },
		{
            header = "❌ | Turn off music",
            txt = "Stop the music & choose a new song",
            params = {
                event = "rsg_cayodj:client:stopMusic"
            }
        },
        {
            header = "Close Menu",
            txt = '',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)