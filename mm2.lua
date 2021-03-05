local AdolfJackson = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UIS = game:GetService("UserInputService")
local tpse = Instance.new("TextButton")
local tpmap = Instance.new("TextButton")
local stext = Instance.new("TextLabel")
local sbutton = Instance.new("TextButton")
local tplb = Instance.new("TextButton")
local mtext = Instance.new("TextLabel")
local mbutton = Instance.new("TextButton")
local nctext = Instance.new("TextLabel")
local ncutton = Instance.new("TextButton")

--228573408
--Properties
AdolfJackson.Name = "AdolfJackson"
AdolfJackson.Parent = game:GetService("Players").LocalPlayer.PlayerGui --game:GetService("CoreGui")
AdolfJackson.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AdolfJackson.DisplayOrder = 1000000

main.Name = "main"
main.Parent = AdolfJackson
main.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.358, 0, 0.209, 0)
main.Size = UDim2.new(0.363, 0, 0.334, 0)

tpse.Name = "tpse"
tpse.Parent = main
tpse.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
tpse.BorderSizePixel = 0
tpse.Position = UDim2.new(0.049, 0, 0.042, 0)
tpse.Size = UDim2.new(0.385, 0, 0.139, 0)
tpse.TextScaled = true
tpse.Font = Enum.Font.SourceSans
tpse.Text = "TP to Sherrif"
tpse.TextColor3 = Color3.new(1, 1, 1)
tpse.TextSize = 14

tpmap.Name = "tpmap"
tpmap.Parent = main
tpmap.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
tpmap.BorderSizePixel = 0
tpmap.Position = UDim2.new(0.049, 0, 0.229, 0)
tpmap.Size = UDim2.new(0.385, 0, 0.139, 0)
tpmap.TextScaled = true
tpmap.Font = Enum.Font.SourceSans
tpmap.Text = "TP MAP"
tpmap.TextColor3 = Color3.new(1, 1, 1)
tpmap.TextSize = 14

stext.Name = "SE"
stext.Parent = main
stext.BackgroundColor3 = Color3.new(1, 1, 1)
stext.BackgroundTransparency = 1
stext.BorderSizePixel = 0
stext.Position = UDim2.new(0.581, 0, 0.042, 0)
stext.Size = UDim2.new(0.271, 0, 0.137, 0)
stext.TextScaled = true
stext.Font = Enum.Font.SourceSans
stext.Text = "Sherrif ESP"
stext.TextColor3 = Color3.new(1, 1, 1)
stext.TextSize = 14

sbutton.Name = "sESP"
sbutton.Parent = main
sbutton.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
sbutton.BorderSizePixel = 0
sbutton.Position = UDim2.new(0.881, 0, 0.042, 0)
sbutton.Size = UDim2.new(0.075, 0, 0.139, 0)
sbutton.TextScaled = true
sbutton.Font = Enum.Font.SourceSans
sbutton.Text = " "
sbutton.TextColor3 = Color3.new(1, 1, 1)
sbutton.TextSize = 14

mtext.Name = "ME"
mtext.Parent = main
mtext.BackgroundColor3 = Color3.new(1, 1, 1)
mtext.BackgroundTransparency = 1
mtext.BorderSizePixel = 0
mtext.Position = UDim2.new(0.581, 0, 0.225, 0)
mtext.Size = UDim2.new(0.271, 0, 0.137, 0)
mtext.TextScaled = true
mtext.Font = Enum.Font.SourceSans
mtext.Text = "Murderer ESP"
mtext.TextColor3 = Color3.new(1, 1, 1)
mtext.TextSize = 14

mbutton.Name = "mESP"
mbutton.Parent = main
mbutton.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
mbutton.BorderSizePixel = 0
mbutton.Position = UDim2.new(0.881, 0, 0.225, 0)
mbutton.Size = UDim2.new(0.075, 0, 0.139, 0)
mbutton.TextScaled = true
mbutton.Font = Enum.Font.SourceSans
mbutton.Text = " "
mbutton.TextColor3 = Color3.new(1, 1, 1)
mbutton.TextSize = 14

nctext.Name = "nc"
nctext.Parent = main
nctext.BackgroundColor3 = Color3.new(1, 1, 1)
nctext.BackgroundTransparency = 1
nctext.BorderSizePixel = 0
nctext.Position = UDim2.new(0.581, 0, 0.4, 0)
nctext.Size = UDim2.new(0.271, 0, 0.137, 0)
nctext.TextScaled = true
nctext.Font = Enum.Font.SourceSans
nctext.Text = "NO CLIP"
nctext.TextColor3 = Color3.new(1, 1, 1)
nctext.TextSize = 14

ncutton.Name = "nCLIP"
ncutton.Parent = main
ncutton.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
ncutton.BorderSizePixel = 0
ncutton.Position = UDim2.new(0.881, 0, 0.4, 0)
ncutton.Size = UDim2.new(0.075, 0, 0.139, 0)
ncutton.TextScaled = true
ncutton.Font = Enum.Font.SourceSans
ncutton.Text = " "
ncutton.TextColor3 = Color3.new(1, 1, 1)
ncutton.TextSize = 14

tplb.Name = "TP Lobby"
tplb.Parent = main
tplb.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
tplb.BorderSizePixel = 0
tplb.Position = UDim2.new(0.049, 0, 0.404, 0)
tplb.Size = UDim2.new(0.385, 0, 0.139, 0)
tplb.TextScaled = true
tplb.Font = Enum.Font.SourceSans
tplb.Text = "TP Lobby"
tplb.TextColor3 = Color3.new(1, 1, 1)
tplb.TextSize = 14

local semain = Instance.new('LocalScript')
semain.Parent = sbutton
local setoggle = false
local tpsescript = Instance.new('LocalScript')
tpsescript.Parent = tpse
local tplbscript = Instance.new('LocalScript')
tplbscript.Parent = tplb
local smrdespcript = Instance.new('LocalScript')
smrdespcript.Parent = mbutton
local mrdtoggle = false
local tmscript = Instance.new('LocalScript')
tmscript.Parent = tpmap
local ncuscript = Instance.new('LocalScript')
ncuscript.Parent = ncutton
noclip = false

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

game:GetService('RunService').Stepped:connect(function()
	if noclip then
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
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
tpse.MouseButton1Click:Connect(function()
	
end)

tmscript.Parent.MouseButton1Click:Connect(function()	
	local Workplace = workspace:GetChildren()
	for i, Thing in pairs(Workplace) do
		local ThingChildren = Thing:GetChildren()
		for i, Child in pairs(ThingChildren) do
			if Child.Name == "Spawns" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Child.Spawn.CFrame
			end
		end
	end
end)

semain.Parent.MouseButton1Click:Connect(function()
	if setoggle == false then
		setoggle = true
		semain.Parent.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
	else
		setoggle = false
		semain.Parent.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
	end


	while setoggle do wait(.1)		
		local Players = game:GetService("Players")

		for i, Plr in pairs(Players:GetPlayers()) do
			for i, Bp in pairs(Plr:GetChildren()) do
				if Bp.Name == "Backpack" then
					if Bp:FindFirstChild("Gun") ~= nil then
						if Bp.Parent.Character.UpperTorso:FindFirstChild("BoxHandleAdornment") == nil then
							local box = Instance.new("BoxHandleAdornment", Bp.Parent.Character.UpperTorso)
							box.Size = Bp.Parent.Character.UpperTorso.Size
							box.Adornee = Bp.Parent.Character.UpperTorso
							box.ZIndex = 5
							box.AlwaysOnTop = true
							box.Color3 = Color3.fromRGB(0, 50, 255)

							local at0 = Instance.new("Attachment", game.Players.LocalPlayer.Character.UpperTorso)
							local at1 = Instance.new("Attachment", Bp.Parent.Character.UpperTorso)
							local beam = Instance.new("Beam", game.Players.LocalPlayer.Character)
							beam.Color = ColorSequence.new(Color3.fromRGB(0, 50, 255), Color3.fromRGB(0, 50, 255))
							beam.FaceCamera = true
							beam.Width0 = 0.2
							beam.Width1 = 0.2
							beam.Attachment0 = at0
							beam.Attachment1 = at1
						end
					end
				end
			end
		end
	end


	while setoggle == false do wait()		
		local Players = game:GetService("Players")

		for i, Plr in pairs(Players:GetPlayers()) do
			for i, Bp in pairs(Plr:GetChildren()) do
				if Bp.Name == "Backpack" then
					if Bp:FindFirstChild("Gun") ~= nil then
						if Bp.Parent.Character.UpperTorso:FindFirstChild("BoxHandleAdornment") ~= nil then
							Bp.Parent.Character.UpperTorso:FindFirstChild("BoxHandleAdornment"):Destroy()

						elseif game.Players.LocalPlayer.Character:FindFirstChild("Beam") ~= nil then
							game.Players.LocalPlayer.Character:FindFirstChild("Beam"):Destroy()
						end
					end
				end
			end
		end	
	end
end)

smrdespcript.Parent.MouseButton1Click:Connect(function()
	if mrdtoggle == false then
		mrdtoggle = true
		smrdespcript.Parent.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
	else
		mrdtoggle = false
		smrdespcript.Parent.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
	end

	while mrdtoggle do wait(.1)		
		local Players = game:GetService("Players")

		for i, Plr in pairs(Players:GetPlayers()) do
			for i, Bp in pairs(Plr:GetChildren()) do
				if Bp.Name == "Backpack" then
					if Bp:FindFirstChild("Knife") ~= nil then
						if Bp.Parent.Character.UpperTorso:FindFirstChild("BoxHandleAdornment") == nil then
							local box = Instance.new("BoxHandleAdornment", Bp.Parent.Character.UpperTorso)
							box.Size = Bp.Parent.Character.UpperTorso.Size
							box.Adornee = Bp.Parent.Character.UpperTorso
							box.ZIndex = 5
							box.AlwaysOnTop = true
							box.Color3 = Color3.fromRGB(255, 0, 25)

							local at0 = Instance.new("Attachment", game.Players.LocalPlayer.Character.UpperTorso)
							local at1 = Instance.new("Attachment", Bp.Parent.Character.UpperTorso)
							local beam = Instance.new("Beam", game.Players.LocalPlayer.Character)
							beam.Color = ColorSequence.new(Color3.fromRGB(255, 0, 25), Color3.fromRGB(255, 0, 25))
							beam.FaceCamera = true
							beam.Width0 = 0.2
							beam.Width1 = 0.2
							beam.Attachment0 = at0
							beam.Attachment1 = at1
						end
					end
				end
			end
		end
	end


	while mrdtoggle == false do wait()		
		local Players = game:GetService("Players")

		for i, Plr in pairs(Players:GetPlayers()) do
			for i, Bp in pairs(Plr:GetChildren()) do
				if Bp.Name == "Backpack" then
					if Bp:FindFirstChild("Knife") ~= nil then
						if Bp.Parent.Character.UpperTorso:FindFirstChild("BoxHandleAdornment") ~= nil then
							Bp.Parent.Character.UpperTorso:FindFirstChild("BoxHandleAdornment"):Destroy()

						elseif game.Players.LocalPlayer.Character:FindFirstChild("Beam") ~= nil then
							game.Players.LocalPlayer.Character:FindFirstChild("Beam"):Destroy()
						end
					end
				end
			end
		end	
	end
end)

tpsescript.Parent.MouseButton1Click:Connect(function()	
	local Players = game:GetService("Players")			
	for i, player in pairs(Players:GetPlayers()) do

		local bp = player.Backpack:GetChildren()
		for i, tool in pairs(bp) do
			if tool.Name == "Gun" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tool.Parent.Parent.Name].Character.HumanoidRootPart.CFrame
			end
		end

	end
end)

tplbscript.Parent.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108.5, 145, 0.6)
end)




game:GetService('RunService').Stepped:connect(function()
	if noclip then
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
	end
end)

ncuscript.Parent.MouseButton1Down:connect(function()
	noclip = not noclip
	if noclip then
		ncuscript.Parent.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
	else
		ncuscript.Parent.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
	end
end)
