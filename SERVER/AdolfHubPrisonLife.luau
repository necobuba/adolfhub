local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/necobuba/adolfhub/main/SERVER/AdolfHubUI.luau", true))()
local aciklama = loadstring(game:HttpGet("https://raw.githubusercontent.com/necobuba/adolfhub/main/SERVER/Aciklama.luau", true))()
local LocalM = library:CreateWindow('Local')
local TeleportM = library:CreateWindow('Teleport')
local TeamM = library:CreateWindow('Teams')
local GunsM = library:CreateWindow('Guns')
---------------Local-------------------------------
local oldwalk = 16
local WalkSpeed = LocalM:Slider("WalkSpeed", {min = 16, max = 300, flag = 'WSped'}, function(v)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)
local Walkbtn = LocalM:Button('Reset WalkSpeed', function()
   WalkSpeed:Set(oldwalk)
end)

local oldjump = 50
local JumpPower = LocalM:Slider("JumpPower", {min = 50, max = 300, flag = 'JPowr'}, function(v)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)
local Jumpbtn = LocalM:Button('Reset JumpPower', function()
   JumpPower:Set(oldjump)
end)

local oldfov = math.floor(workspace.CurrentCamera.FieldOfView)
local fov = LocalM:Slider("FOV", {min = math.floor(workspace.CurrentCamera.FieldOfView), max = 120, flag = 'fov'}, function(v)
   workspace.CurrentCamera.FieldOfView = v;
end)
local fovbtn = LocalM:Button('Reset FOV', function()
   fov:Set(oldfov)
end)


---------------------------------
LocalM:Section(aciklama.bir)
LocalM:Section(aciklama.iki)
------------------------------Teams--------------------
local teamcrim = TeamM:Button('Criminal', function()
   wait(0.3)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-976.125183, 109.123924, 2059.99536)
   wait(0.3)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)
end)


local teampolice = TeamM:Button('Police', function()
   workspace.Remote.TeamEvent:FireServer("Bright blue")
end)
---------------
local teaminmate = TeamM:Button('Inmate', function()
   workspace.Remote.TeamEvent:FireServer("Bright orange")
end)
----------------
local teamnetrual = TeamM:Button('Netrual', function()
   Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)


---------------------------------
TeamM:Section(aciklama.bir)
TeamM:Section(aciklama.iki)
--------------------------------Guns--------------------
local giveak47 = GunsM:Button('AK-47', function()
   local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver["AK-47"].ITEMPICKUP
   local Event = game:GetService("Workspace").Remote.ItemHandler
   Event:InvokeServer(A_1)
end)


------------------------------------------
local giveremigton670 = GunsM:Button('Remington 870', function()
   local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver["Remington 870"].ITEMPICKUP
   local Event = game:GetService("Workspace").Remote.ItemHandler
   Event:InvokeServer(A_1)
end)


-------------------------------------
local givem9 = GunsM:Button('M9', function()
   local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver["M9"].ITEMPICKUP
   local Event = game:GetService("Workspace").Remote.ItemHandler
   Event:InvokeServer(A_1)
end)


-------------------------
local givem4a1 = GunsM:Button('M4A1', function()
   local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver["M4A1"].ITEMPICKUP
   local Event = game:GetService("Workspace").Remote.ItemHandler
   Event:InvokeServer(A_1)
end)


---------------------------------
local givehammr = GunsM:Button('Hammer', function()
   local A_1 = game:GetService("Workspace")["Prison_ITEMS"].single["Hammer"].ITEMPICKUP
   local Event = game:GetService("Workspace").Remote.ItemHandler
   Event:InvokeServer(A_1)
end)


--------------------
local giveknife = GunsM:Button('Crude Knife', function()
   local A_1 = game:GetService("Workspace")["Prison_ITEMS"].single["Crude Knife"].ITEMPICKUP
   local Event = game:GetService("Workspace").Remote.ItemHandler
   Event:InvokeServer(A_1)
end)

---------------------------------
GunsM:Section(aciklama.bir)
GunsM:Section(aciklama.iki)
-------------------------Teleport---------------------------------------------------------------------
local tpcriminal = TeleportM:Button('Criminal Base', function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.46,94.13,2063.63)
end)

local tpprison = TeleportM:Button('Prison Base', function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)
end)

local tpyard = TeleportM:Button('Yard', function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779.87,98,2458.93)
end)
---------------------------------
TeleportM:Section(aciklama.bir)
TeleportM:Section(aciklama.iki)