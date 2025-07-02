-- Register radio stations
for _, station in ipairs(CustomStations) do
    AddTextEntry(station.id, station.label)
    ForceRadioTrackListPosition(station.id, station.trackList, GetNetworkTimeAccurate())
end

-- Register song titles and artists
for k, v in pairs(SongInfo) do
    AddTextEntry(k .. 'S', v[1]) -- Song title
    AddTextEntry(k .. 'A', v[2]) -- Artist
end

-- Hide default radio stations
local function DisableRadioStations()
    for _, radioStation in ipairs(DisabledStations) do
        SetRadioStationIsVisible(radioStation, false)
    end
end

-- Only run the hiding logic once
local radioDisabled = false

CreateThread(function()
    if not radioDisabled then
        radioDisabled = true
        DisableRadioStations()
        print("[Radio] Default GTA V stations hidden.")
    end
end)
