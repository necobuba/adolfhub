local AdolfJackson = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UIS = game:GetService("UserInputService")
local killothers = Instance.new("TextButton")
local killall = Instance.new("TextButton")
--228573408
--Properties
AdolfJacksonCBRO.Name = "AdolfJacksonCBRO"
AdolfJacksonCBRO.Parent = game:GetService("CoreGui")
AdolfJacksonCBRO.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AdolfJacksonCBRO.DisplayOrder = 1000000

main.Name = "main"
main.Parent = AdolfJackson
main.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.358, 0, 0.209, 0)
main.Size = UDim2.new(0.158, 0, 0.334, 0)

killothers.Name = "kill"
killothers.Parent = main
killothers.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
killothers.BorderSizePixel = 0
killothers.Position = UDim2.new(0.049, 0, 0.042, 0)
killothers.Size = UDim2.new(0.882, 0, 0.139, 0)
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
killall.Size = UDim2.new(0.882, 0, 0.139, 0)
killall.TextScaled = true
killall.Font = Enum.Font.SourceSans
killall.Text = "Kill All"
killall.TextColor3 = Color3.new(1, 1, 1)
killall.TextSize = 14

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
			game:GetService("ReplicatedStorage").WeaponItems.RemoteEvents.Hit:FireServer(workspace[v.Name].Head, game:GetService("ReplicatedStorage")["Weapons"]["Draganov"])
		end
	end
end)

killall.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Players:GetPlayers()) do 
		game:GetService("ReplicatedStorage").WeaponItems.RemoteEvents.Hit:FireServer(workspace[v.Name].Head, game:GetService("ReplicatedStorage")["Weapons"]["Draganov"])
	end
end)
