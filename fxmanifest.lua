fx_version 'cerulean'
game 'gta5'
description 'Rexshack Gaming : Cayo DJ'

shared_script 'config.lua'

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/client.lua',
	'client/menu.lua',
}

server_script 'server/server.lua'

dependency 'xsound'