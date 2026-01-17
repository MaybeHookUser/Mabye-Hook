local UserInputService = game:GetService("UserInputService")

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MaybeHookUser/Mabye-Hook/refs/heads/main/Mobile.lua"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MaybeHookUser/Mabye-Hook/refs/heads/main/pc.lua"))()
end
