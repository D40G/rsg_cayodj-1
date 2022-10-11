local QBCore = exports['qb-core']:GetCoreObject()

-- play music
RegisterNetEvent('rsg_cayodj:client:playMusic', function()
    exports['qb-menu']:openMenu(musicMenu)
end)

RegisterNetEvent('rsg_cayodj:client:musicMenu', function()
    local dialog = exports['qb-input']:ShowInput({
        header = 'Song Selection',
        submitText = "Submit",
        inputs = {
            {
                type = 'text',
                isRequired = true,
                name = 'song',
                text = 'YouTube URL'
            }
        }
    })
    if dialog then
        if not dialog.song then return end
        TriggerServerEvent('rsg_cayodj:server:playMusic', dialog.song, 'cayo')
    end
end)

-- change volume
RegisterNetEvent('rsg_cayodj:client:changeVolume', function()
    local dialog = exports['qb-input']:ShowInput({
        header = 'Music Volume',
        submitText = "Submit",
        inputs = {
            {
                type = 'text', -- number doesn't accept decimals??
                isRequired = true,
                name = 'volume',
                text = 'Min: 0.01 - Max: 1'
            }
        }
    })
    if dialog then
        if not dialog.volume then return end
        TriggerServerEvent('rsg_cayodj:server:changeVolume', dialog.volume, 'cayo')
    end
end)

-- pause music
RegisterNetEvent('rsg_cayodj:client:pauseMusic', function()
    TriggerServerEvent('rsg_cayodj:server:pauseMusic', 'cayo')
end)

-- resume music
RegisterNetEvent('rsg_cayodj:client:resumeMusic', function()
    TriggerServerEvent('rsg_cayodj:server:resumeMusic', 'cayo')
end)

-- stop music
RegisterNetEvent('rsg_cayodj:client:stopMusic', function()
    TriggerServerEvent('rsg_cayodj:server:stopMusic', 'cayo')
end)