fx_version 'cerulean'
game 'gta5'

description 'SBRP Stolen Loot System with Configurable Zones and Auto-Spawn'
author 'StoryBound RP'
version '1.2.0'

lua54 'yes'

shared_script 'config.lua'

client_scripts {
    '@ox_lib/init.lua',  
    'client.lua'
}

server_script 'server.lua'

dependencies {
    'qb-core',
    'qb-target',
    'ox_lib'  
}
