local Crim = Instance.new("Part")
Crim.Name = "plr"
Crim.Parent = workspace
Crim.Anchored = true
Crim.Archivable = true
Crim.CFrame = CFrame.new(9e99, 9e99, 9e99)
Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
mainRemotes = game.ReplicatedStorage meleeRemote = mainRemotes['meleeEvent'] 
mouse = game.Players.LocalPlayer:GetMouse() 
punching = false 
cooldown = false 



local function RemoveSpaces(String)
	return String:gsub("%s+", "") or String
end

local function FindPlayer(String)
	String = RemoveSpaces(String)
	for _, _Player in pairs(Players:GetPlayers()) do
		if _Player.Name:lower():match('^'.. String:lower()) then
			return _Player
		end
	end
	return nil
end



function punch() 
   cooldown = true 
   local part = Instance.new("Part", game.Players.LocalPlayer.Character)
   part.Transparency = 1 
   part.Size = Vector3.new(5, 2, 3) 
   part.CanCollide = false 
   local w1 = Instance.new("Weld", part) 
   w1.Part0 = game.Players.LocalPlayer.Character.Torso 
   w1.Part1 = part w1.C1 = CFrame.new(0,0,2) 
   part.Touched:connect(function(hit) 
       if game.Players:FindFirstChild(hit.Parent.Name) then
            local plr = game.Players:FindFirstChild(hit.Parent.Name)
             if plr.Name ~= game.Players.LocalPlayer.Name then
                part:Destroy() 
                for i = 1,100 do meleeRemote:FireServer(plr) 
               end 
           end 
       end
    end)
   wait(1)
   cooldown = false
   part:Destroy()
end



function killplayer(victim, gunuuu)
   local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[gunuuu].ITEMPICKUP
   local Event = game:GetService("Workspace").Remote.ItemHandler
   Event:InvokeServer(A_1)
   
   
   local args = {
       [1] = {
           [1] = {
               ["RayObject"] = Ray.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Distance"] = 9999999999999999999999999999999999999999999999999999999,
               ["Cframe"] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Hit"] = game:GetService("Players")[victim].Character["Head"]
           }
       },
       [2] = game:GetService("Players").LocalPlayer.Backpack[gunuuu]
   }
   
   game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
   local args = {
       [1] = {
           [1] = {
               ["RayObject"] = Ray.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Distance"] = 9999999999999999999999999999999999999999999999999999999,
               ["Cframe"] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Hit"] = game:GetService("Players")[victim].Character["Head"]
           }
       },
       [2] = game:GetService("Players").LocalPlayer.Backpack[gunuuu]
   }
   
   game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
   local args = {
       [1] = {
           [1] = {
               ["RayObject"] = Ray.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Distance"] = 9999999999999999999999999999999999999999999999999999999,
               ["Cframe"] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Hit"] = game:GetService("Players")[victim].Character["Head"]
           }
       },
       [2] = game:GetService("Players").LocalPlayer.Backpack[gunuuu]
   }
   
   game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
   local args = {
       [1] = {
           [1] = {
               ["RayObject"] = Ray.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Distance"] = 9999999999999999999999999999999999999999999999999999999,
               ["Cframe"] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Hit"] = game:GetService("Players")[victim].Character["Head"]
           }
       },
       [2] = game:GetService("Players").LocalPlayer.Backpack[gunuuu]
   }
   
   game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
   local args = {
       [1] = {
           [1] = {
               ["RayObject"] = Ray.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Distance"] = 9999999999999999999999999999999999999999999999999999999,
               ["Cframe"] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Hit"] = game:GetService("Players")[victim].Character["Head"]
           }
       },
       [2] = game:GetService("Players").LocalPlayer.Backpack[gunuuu]
   }
   
   game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
   local args = {
       [1] = {
           [1] = {
               ["RayObject"] = Ray.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Distance"] = 9999999999999999999999999999999999999999999999999999999,
               ["Cframe"] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Hit"] = game:GetService("Players")[victim].Character["Head"]
           }
       },
       [2] = game:GetService("Players").LocalPlayer.Backpack[gunuuu]
   }
   
   game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
   local args = {
       [1] = {
           [1] = {
               ["RayObject"] = Ray.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Distance"] = 9999999999999999999999999999999999999999999999999999999,
               ["Cframe"] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Hit"] = game:GetService("Players")[victim].Character["Head"]
           }
       },
       [2] = game:GetService("Players").LocalPlayer.Backpack[gunuuu]
   }
   
   game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
   local args = {
       [1] = {
           [1] = {
               ["RayObject"] = Ray.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Distance"] = 9999999999999999999999999999999999999999999999999999999,
               ["Cframe"] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)),
               ["Hit"] = game:GetService("Players")[victim].Character["Head"]
           }
       },
       [2] = game:GetService("Players").LocalPlayer.Backpack[gunuuu]
   }
   
   game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(args))
   
   
end