local placeId = game.PlaceId

local script1 = "https://github.com/CodeE4X-dev/Star-X/releases/download/rblx/BloxFruit.lua" --bloxfruit made by wiginek my daddyyyyy
local script2 = "https://github.com/CodeE4X-dev/Star-X/releases/download/rblx/dsfsdfsfsfsdf.lua" --blade ball mde by uhh idk
local script3 = "https://github.com/CodeE4X-dev/Star-X/releases/download/rblx/NotSupport.lua" --discord.gg/starx-hub

local group1 = {
    [7449423635] = true,
    [4442272183] = true,
    [2753915549] = true,
}

local group2 = {
    [15131065025] = true,
    [14732610803] = true,
    [15509350986] = true,
    [13772394625] = true,
}

if group1[placeId] then
    loadstring(game:HttpGet(script1))()
elseif group2[placeId] then
    loadstring(game:HttpGet(script2))()
else
    loadstring(game:HttpGet(script3))()
end
