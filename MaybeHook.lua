local UserInputService = game:GetService("UserInputService")

_G.SESSION_TOKEN = math.random(100000, 999999)

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MaybeHookUser/Mabye-Hook/refs/heads/main/Mobile.lua"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MaybeHookUser/Mabye-Hook/refs/heads/main/pc.lua"))()
end
