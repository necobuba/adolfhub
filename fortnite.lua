local AdolfJackson = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UIS = game:GetService("UserInputService")
local killothers = Instance.new("TextButton")
local killall = Instance.new("TextButton")
local playertext = Instance.new("TextBox")
local killpalyertext = Instance.new("TextButton")
local silah = game.Players.LocalPlayer.Backpack.CommonPistol or game.Players.LocalPlayer.Character.CommonPistol
--257061226
--Properties
AdolfJackson.Name = "AdolfJackson"
AdolfJackson.Parent = game:GetService("CoreGui")
AdolfJackson.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AdolfJackson.DisplayOrder = 1000000

main.Name = "main"
main.Parent = AdolfJackson
main.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.358, 0, 0.209, 0)
main.Size = UDim2.new(0.349, 0, 0.334, 0)

killothers.Name = "kill"
killothers.Parent = main
killothers.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
killothers.BorderSizePixel = 0
killothers.Position = UDim2.new(0.049, 0, 0.042, 0)
killothers.Size = UDim2.new(0.419, 0, 0.139, 0)
killothers.TextScaled = true
killothers.Font = Enum.Font.SourceSans
killothers.Text = "Kill Others"
killothers.TextColor3 = Color3.new(1, 1, 1)
killothers.TextSize = 14

killall.Name = "Ka"
killall.Parent = main
killall.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
killall.BorderSizePixel = 0
killall.Position = UDim2.new(0.049, 0, 0.229, 0)
killall.Size = UDim2.new(0.419, 0, 0.139, 0)
killall.TextScaled = true
killall.Font = Enum.Font.SourceSans
killall.Text = "Kill All"
killall.TextColor3 = Color3.new(1, 1, 1)
killall.TextSize = 14

playertext.Name = "plrtxt"
playertext.Parent = main
playertext.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
playertext.BorderSizePixel = 0
playertext.Position = UDim2.new(0.533, 0, 0.042, 0)
playertext.Size = UDim2.new(0.419, 0, 0.139, 0)
playertext.TextScaled = true
playertext.Font = Enum.Font.SourceSans
playertext.PlaceholderColor3 = Color3.new(0.8, 0.8, 0.8)
playertext.PlaceholderText = "Enter Player Name"
playertext.Text = ""
playertext.TextColor3 = Color3.new(1, 1, 1)
playertext.TextSize = 14

killpalyertext.Name = "killplr"
killpalyertext.Parent = main
killpalyertext.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
killpalyertext.BorderSizePixel = 0
killpalyertext.Position = UDim2.new(0.53, 0, 0.225, 0)
killpalyertext.Size = UDim2.new(0.419, 0, 0.139, 0)
killpalyertext.TextScaled = true
killpalyertext.Font = Enum.Font.SourceSans
killpalyertext.Text = "Kill Player"
killpalyertext.TextColor3 = Color3.new(1, 1, 1)
killpalyertext.TextSize = 14

--Functions
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
	if key == 'k' then
		if main.Visible == true then
			main.Visible = false
		else
			main.Visible = true
		end
	end
end)

function dragify(Frame)
	dragToggle = nil
	local dragSpeed = 0
	dragInput = nil
	dragStart = nil
	local dragPos = nil
	function updateInput(input)
		local Delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	end
	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	Frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end
dragify(main)
--Code (LocalScript)
killothers.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Players:GetPlayers()) do 
		if v.Character and v ~= game.Players.LocalPlayer then
			local adam = v.Character
      silah["GunScript_Server"].InflictTarget:FireServer(adam.Humanoid, adam.Head, 100, Vector3.new(-0.466185123, -0.030247394, -0.884169936), 0, 0, false)
		end
	end
end)

killall.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Players:GetPlayers()) do 
		local adam = v.Character
  	silah["GunScript_Server"].InflictTarget:FireServer(adam.Humanoid, adam.Head, 100, Vector3.new(-0.466185123, -0.030247394, -0.884169936), 0, 0, false)
	end
end)

killpalyertext.MouseButton1Click:Connect(function()
	local adam = game:GetService("Players")[playertext.Text].Character
  silah["GunScript_Server"].InflictTarget:FireServer(adam.Humanoid, adam.Head, 100, Vector3.new(-0.466185123, -0.030247394, -0.884169936), 0, 0, false)
end)
