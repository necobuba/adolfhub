mainRemotes = game.ReplicatedStorage meleeRemote = mainRemotes['meleeEvent'] 
mouse = game.Players.LocalPlayer:GetMouse() 
punching = false 
cooldown = false 
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