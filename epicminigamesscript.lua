local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("SGU", "BloodTheme")

local Main = Window:NewTab("Main")
local ESP = Window:NewTab("ESP")
local Main = Main:NewSection("Main")
local ESP = ESP:NewSection("ESP")

Main:NewButton("Epic Minigames", "Opens 6FootHonda Gui", function()
    print("Clicked")
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/SlamminPig/rblxgames/main/Epic%20Minigames/EpicMinigamesGUI"))()

Main:NewButton("Anti-AFK", "Unable To Be Kicked From Game", function()
    print("Clicked")
end)
repeat
    wait()
until game:IsLoaded()
wait()

if getconnections then
    for _, v in next, getconnections(game:GetService("Players").LocalPlayer.Idled) do
        v:Disable()
    end
end

Main:NewButton("Pick Gamemode", "Loads 10000 Of Gamemode", function()
    print("Clicked")
end)
Loop_Amount = 10000
Loop_Speed = 0.1
for i=1,Loop_Amount do
local args = {
    [1] = "Flintlock Fight",
    [2] = "Western"
}

workspace.REs.chooseMinigame:FireServer(unpack(args))
Loop_Speed = 0.1
end

Main:NewButton("Auto-Reset", "Loops Reset", function()
    print("Clicked")
end)
_G.Autoreset = true
while _G.Autoreset do
wait(2)
game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
end