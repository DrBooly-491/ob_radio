fx_version 'cerulean'
game 'gta5'

lua54 'yes'

shared_script 'config.lua'
client_script 'client.lua'

files {
	'data/obsongs_sound.dat54.rel',
	'data/obsongs_game.dat151.rel',
	'songdirectory/*.awc',
}

data_file 'AUDIO_WAVEPACK' 'songdirectory'
data_file 'AUDIO_SOUNDDATA' 'data/obsongs_sound.dat'
data_file 'AUDIO_GAMEDATA' 'data/obsongs_game.dat'
