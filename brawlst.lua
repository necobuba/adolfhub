local AdolfJackson = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UIS = game:GetService("UserInputService")
local infgems = Instance.new("TextButton")
local infgold = Instance.new("TextButton")
--228573408
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
main.Size = UDim2.new(0.158, 0, 0.334, 0)

infgems.Name = "infgems"
infgems.Parent = main
infgems.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
infgems.BorderSizePixel = 0
infgems.Position = UDim2.new(0.049, 0, 0.042, 0)
infgems.Size = UDim2.new(0.882, 0, 0.139, 0)
infgems.TextScaled = true
infgems.Font = Enum.Font.SourceSans
infgems.Text = "Inf Gems"
infgems.TextColor3 = Color3.new(1, 1, 1)
infgems.TextSize = 14

infgold.Name = "infgold"
infgold.Parent = main
infgold.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
infgold.BorderSizePixel = 0
infgold.Position = UDim2.new(0.049, 0, 0.229, 0)
infgold.Size = UDim2.new(0.882, 0, 0.139, 0)
infgold.TextScaled = true
infgold.Font = Enum.Font.SourceSans
infgold.Text = "Inf Gold"
infgold.TextColor3 = Color3.new(1, 1, 1)
infgold.TextSize = 14

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
infgems.MouseButton1Click:Connect(function()
game:GetService("ReplicatedStorage").RemoteEvents.BuyEvent:FireServer(game:GetService("Players").LocalPlayer.Status.Currencies.Gems, -100000000000000000)
end)

infgold.MouseButton1Click:Connect(function()
game:GetService("ReplicatedStorage").RemoteEvents.BuyEvent:FireServer(game:GetService("Players").LocalPlayer.Status.Currencies.Gold, -100000000000000000)
end)
