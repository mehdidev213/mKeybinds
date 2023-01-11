-- FX Information
fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'

-- Resource Information 
name 'mKeybinds'
author 'mehdi-#3792'
version '1.0'
description 'A simple keybinds RageUI menu where you can put any keybinds you want.'


-- RAGEUI

shared_scripts {'config.lua'}

client_scripts {
    "libs/RMenu.lua",
    "libs/menu/RageUI.lua",
    "libs/menu/Menu.lua",
    "libs/menu/MenuController.lua",
    "libs/components/*.lua",
    "libs/menu/elements/*.lua",
    "libs/menu/items/*.lua",
    "libs/menu/panels/*.lua",
    "libs/menu/windows/*.lua",
}

client_scripts {
    'client.lua',
	'config.lua'
}


server_scripts {
    'server/server.lua',

}
