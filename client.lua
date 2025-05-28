AddTextEntry('OB_RADIO', 'Sleep Token FM')
ForceRadioTrackListPosition('OB_RADIO', 'christmas_radiotrack', GetNetworkTimeAccurate())

for k, v in pairs(SongInfo) do
    AddTextEntry(string.format('%s%s', k, 'S'), v[1])
    AddTextEntry(string.format('%s%s', k, 'A'), v[2])
end

local SetRadioStationIsVisible = SetRadioStationIsVisible
local radioDisabled = false

local function DisableRadioStations()
    local radioStations = {
        "RADIO_36_AUDIOPLAYER", -- Media Player
        "RADIO_37_MOTOMAMI", -- MOTOMAMI Los Santos
        "RADIO_35_DLC_HEI4_MLR", -- The Music Locker
        "RADIO_12_REGGAE", -- Blue Ark
        "RADIO_13_JAZZ", -- Worldwide FM
        "RADIO_14_DANCE_02", -- FlyLo FM
        "RADIO_15_MOTOWN", -- The Lowdown 91.1
        "RADIO_20_THELAB", -- The Lab
        "RADIO_16_SILVERLAKE", -- Radio Mirror Park
        "RADIO_34_DLC_HEI4_KULT", -- Kult FM
        "RADIO_17_FUNK", -- Space 103.2
        "RADIO_18_90S_ROCK", -- Vinewood Boulevard Radio
        "RADIO_21_DLC_XM17", -- Blonded Los Santos 97.8 FM
        "RADIO_22_DLC_BATTLE_MIX1_RADIO", -- Los Santos Underground Radio
        "RADIO_23_DLC_XM19_RADIO", -- iFruit Radio
        "RADIO_01_CLASS_ROCK", -- Los Santos Rock Radio
        "RADIO_02_POP", -- Non-Stop-Pop FM
        "RADIO_03_HIPHOP_NEW", -- Radio Los Santos
        "RADIO_04_PUNK", -- Channel X
        "RADIO_05_TALK_01", -- West Coast Talk Radio
        "RADIO_06_COUNTRY", -- Rebel Radio
        "RADIO_07_DANCE_01", -- Soulwax FM 
        "RADIO_08_MEXICAN", -- East Los FM
        "RADIO_09_HIPHOP_OLD", -- West Coast Classics
        "RADIO_11_TALK_02", -- Blaine County Radio
        "RADIO_27_DLC_PRHEI4", -- Still Slipping Los Santos
        "RADIO_19_USER", -- Self Radio
        "HIDDEN_RADIO_MPSUM2_NEWS", -- Weazel News
    }

    for i = 1, #radioStations do
        local radioStation = radioStations[i]
        SetRadioStationIsVisible(radioStation, false)
    end
end

CreateThread(function()
    if radioDisabled then return end
        radioDisabled = true
        DisableRadioStations()
end)