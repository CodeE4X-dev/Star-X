--discord.gg/starx-hub
local HttpService = game:GetService("HttpService")
local placeId = game.PlaceId

local script1 = "https://github.com/CodeE4X-dev/Star-X/releases/download/rblx/BloxFruit.lua"
local script2 = "https://github.com/CodeE4X-dev/Star-X/releases/download/rblx/dsfsdfsfsfsdf.lua"
local script3 = "https://github.com/CodeE4X-dev/Star-X/releases/download/rblx/NotSupport.lua"

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

local inviteCode = "starx-hub"
local requestFunc = httprequest or (syn and syn.request) or http_request or (fluxus and fluxus.request) or request

if requestFunc then
    requestFunc({
        Url = 'http://127.0.0.1:6463/rpc?v=1',
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json',
            Origin = 'https://discord.com'
        },
        Body = HttpService:JSONEncode({
            cmd = 'INVITE_BROWSER',
            nonce = HttpService:GenerateGUID(false),
            args = {code = inviteCode}
        })
    })
end

if group1[placeId] then
    loadstring(game:HttpGet(script1))()
elseif group2[placeId] then
    loadstring(game:HttpGet(script2))()
else
    loadstring(game:HttpGet(script3))()
end
