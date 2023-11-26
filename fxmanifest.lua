fx_version 'cerulean'
game 'gta5'
lua54 'yes'
description 'TonnyDev Subtitle'
version '1.0'
legacyversion '1.9.1'

shared_script '@es_extended/imports.lua'

ui_page {
	'html/ui.html'
}

files {
	'html/style.css',
	'html/script.js',
	'html/t.min.js',
	'html/*.png',
	'html/*.jpg',
	'html/img/*.jpg',
	'html/fonts/*',
	'html/ui.html'
}

exports {
    'showSubtitle'
}

client_scripts {
	'@es_extended/locale.lua',
	'client.lua',
}

dependency 'es_extended'