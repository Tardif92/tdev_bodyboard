fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'tdev_bodyboard'
author 'Tdev'
description 'Bodyboarding for ESX, QBCore, Qbox, and ox_inventory'
version '1.0.3'

shared_scripts {
  'shared/name_protection.lua',
  'config.lua',
  'shared/utils.lua'
}

client_scripts {
  'client/main.lua'
}

server_scripts {
  'server/protection.lua',
  'server/main.lua'
}

dependencies {
  '/onesync'
}

escrow_ignore {
  'config.lua',
  'shared/utils.lua',
  'client/main.lua',
  'server/main.lua',
  'install/*.lua',
  'install/*.sql',
  'README.md'
}
