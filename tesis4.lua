local AdolfJackson = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UIS = game:GetService("UserInputService")
local radioui = Instance.new("TextButton")
local crashdoor = Instance.new("TextButton")
local opendoors = Instance.new("TextButton")
--00000000
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

radioui.Name = "radioui"
radioui.Parent = main
radioui.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
radioui.BorderSizePixel = 0
radioui.Position = UDim2.new(0.049, 0, 0.042, 0)
radioui.Size = UDim2.new(0.882, 0, 0.139, 0)
radioui.TextScaled = true
radioui.Font = Enum.Font.SourceSans
radioui.Text = "Radio Ui"
radioui.TextColor3 = Color3.new(1, 1, 1)
radioui.TextSize = 14

crashdoor.Name = "crashdoor"
crashdoor.Parent = main
crashdoor.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
crashdoor.BorderSizePixel = 0
crashdoor.Position = UDim2.new(0.049, 0, 0.229, 0)
crashdoor.Size = UDim2.new(0.882, 0, 0.139, 0)
crashdoor.TextScaled = true
crashdoor.Font = Enum.Font.SourceSans
crashdoor.Text = "Crash Door"
crashdoor.TextColor3 = Color3.new(1, 1, 1)
crashdoor.TextSize = 14

opendoors.Name = "opendoors"
opendoors.Parent = main
opendoors.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
opendoors.BorderSizePixel = 0
opendoors.Position = UDim2.new(0.049, 0, 0.429, 0)
opendoors.Size = UDim2.new(0.882, 0, 0.139, 0)
opendoors.TextScaled = true
opendoors.Font = Enum.Font.SourceSans
opendoors.Text = "Open Doors"
opendoors.TextColor3 = Color3.new(1, 1, 1)
opendoors.TextSize = 14

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
local crash = false
radioui.MouseButton1Click:Connect(function()
	local ui = workspace.RadioFE.givegui.Radio:Clone()
	ui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
	ui.RadioFrame.ChatArea.Line1.ColorLine.Text = " "
	ui.RadioFrame.ChatArea.Line2.ColorLine.Text = " "
	ui.RadioFrame.ChatArea.Line3.ColorLine.Text = " "
	ui.RadioFrame.ChatArea.Line4.ColorLine.Text = " "
	ui.RadioFrame.ChatArea.Line5.ColorLine.Text = " "
	ui.RadioFrame.ChatArea.Line6.ColorLine.Text = " "
	ui.RadioFrame.ChatArea.Line7.ColorLine.Text = " "
	ui.RadioFrame.ChatArea.Line8.ColorLine.Text = " "
	ui.RadioFrame.ChatArea.Line9.ColorLine.Text = " "
end)
opendoors.MouseButton1Click:Connect(function()
	for i,v in pairs(workspace.Doors:GetChildren()) do 
		v.DoorOpen:FireServer()
	end
end)
crashdoor.MouseButton1Click:Connect(function()
	while true do
		wait(0.1)
		for i,v in pairs(workspace.Doors:GetChildren()) do 
			v.DoorOpen:FireServer()
		end
	end
end)
