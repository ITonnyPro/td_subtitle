fx_version 'cerulean'
game 'gta5'
lua54 'yes'
description 'TonnyDev Subtitle'
version '1.0'

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
	'client.lua',
}
