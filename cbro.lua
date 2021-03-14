local AdolfJacksonCBRO = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UIS = game:GetService("UserInputService")
local unlockall = Instance.new("TextButton")
local killall = Instance.new("TextButton")
local fpsui = Instance.new("TextButton")
--115797356
--FPS UI SETTINGS
local plrs = game:GetService("Players")
local TeamBased = true ; local teambasedswitch = "o"
local presskeytoaim = true; local aimkey = "e"
local raycast = false

local espupdatetime = 5; autoesp = false
--Properties
AdolfJacksonCBRO.Name = "AdolfJacksonCBRO"
AdolfJacksonCBRO.Parent = game:GetService("CoreGui")
AdolfJacksonCBRO.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AdolfJacksonCBRO.DisplayOrder = 1000000

main.Name = "main"
main.Parent = AdolfJacksonCBRO
main.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.358, 0, 0.209, 0)
main.Size = UDim2.new(0.158, 0, 0.334, 0)

unlockall.Name = "UnlockAll"
unlockall.Parent = main
unlockall.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
unlockall.BorderSizePixel = 0
unlockall.Position = UDim2.new(0.049, 0, 0.042, 0)
unlockall.Size = UDim2.new(0.882, 0, 0.139, 0)
unlockall.TextScaled = true
unlockall.Font = Enum.Font.SourceSans
unlockall.Text = "Unlock all skin"
unlockall.TextColor3 = Color3.new(1, 1, 1)
unlockall.TextSize = 14

killall.Name = "KillAll"
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

fpsui.Name = "fpsui"
fpsui.Parent = main
fpsui.BackgroundColor3 = Color3.new(1, 0.666667, 0.133333)
fpsui.BorderSizePixel = 0
fpsui.Position = UDim2.new(0.049, 0, 0.411, 0)
fpsui.Size = UDim2.new(0.882, 0, 0.139, 0)
fpsui.TextScaled = true
fpsui.Font = Enum.Font.SourceSans
fpsui.Text = "(HEAD FUCKER) ESP AND KİLL"
fpsui.TextColor3 = Color3.new(1, 1, 1)
fpsui.TextSize = 14

--Code (LocalScript)
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

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
	if key == 'k' then
		if main.Visible == true then
			main.Visible = false
		else
			main.Visible = true
		end
	end
end)

killall.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Players:GetPlayers()) do 
		if v.Character and v ~= game.Players.LocalPlayer and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
			local oh1 = v.Character.Head
			local oh2 = v.Character.Head.CFrame.p
			local oh3 = "AWP"
			local oh4 = 4096
			local oh5 = game.Players.LocalPlayer.Character.Gun
			local oh6 = ""
			local oh7 = ""
			local oh8 = 15
			local oh9 = false
			local oh10 = false
			local oh11 = Vector3.new(-126.878326, 353.474854, 49.3892708)
			local oh12 = 16868
			local oh13 = Vector3.new(0, 0, -1)
			game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
		end
	end
end)

fpsui.MouseButton1Click:Connect(function()
		PLAYER  = game.Players.LocalPlayer
MOUSE   = PLAYER:GetMouse()
CC      = game.Workspace.CurrentCamera

_G.AIM_AT = 'Head'
_G.BIND   = 101 -- E




PLR = game.Players.LocalPlayer
MOUSE  = PLR:GetMouse()

function CREATE(BASE, TEAM)
    local ESP_MAIN                   = Instance.new('BillboardGui', PLR.PlayerGui)
    local ESP_DOT                    = Instance.new('Frame', ESP_MAIN)
    local ESP_NAME                   = Instance.new('TextLabel', ESP_MAIN)
    
    ESP_MAIN.Name                    = 'ESP'
    ESP_MAIN.Adornee                 = BASE
    ESP_MAIN.AlwaysOnTop             = true
    ESP_MAIN.ExtentsOffset           = Vector3.new(0, 1, 0)
    ESP_MAIN.Size                    = UDim2.new(0, 5, 0, 5)
    
    ESP_DOT.Name                     = 'DOT'
    ESP_DOT.BackgroundColor          = BrickColor.new('Institutional white')
    ESP_DOT.BackgroundTransparency   = 0.3
    ESP_DOT.BorderSizePixel          = 0
    ESP_DOT.Position                 = UDim2.new(-0.5, 0, -0.5, 0)
    ESP_DOT.Size                     = UDim2.new(2, 0, 2, 0)
    ESP_DOT.Visible                  = true
    ESP_DOT.ZIndex                   = 10
    
    ESP_NAME.Name                    = 'NAME'
    ESP_NAME.BackgroundColor3        = Color3.new(255, 255, 255)
    ESP_NAME.BackgroundTransparency  = 1
    ESP_NAME.BorderSizePixel         = 0
    ESP_NAME.Position                = UDim2.new(0, 0, 0, -40)
    ESP_NAME.Size                    = UDim2.new(1, 0, 10, 0)
    ESP_NAME.Visible                 = true
    ESP_NAME.ZIndex                  = 10
    ESP_NAME.Font                    = 'SciFi'
    ESP_NAME.FontSize                = 'Size14'
    ESP_NAME.Text                    = BASE.Parent.Name:upper()
    ESP_NAME.TextColor               = BrickColor.new('Institutional white')
end

function CLEAR()
    for _,v in pairs(PLR.PlayerGui:children()) do
        if v.Name == 'ESP' and v:IsA('BillboardGui') then
            v:Destroy()
        end
    end
end

function FIND()
    CLEAR()
    spawn(function()
        while wait(0.01) do
                CLEAR()
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Character and v.Character:FindFirstChild('Head') then
                            if v.Team == PLR.Team then
                                   else
                                if v.Character:FindFirstChild('Head') then
                                CREATE(v.Character.Head, true)
                            end
                        end
                    end
                end
            end        
        wait(1)
    end)
end

function GetNearestPlayerToMouse()
    local PLAYERS      = {}
    local PLAYER_HOLD  = {}
    local DISTANCES    = {25000}
    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= PLAYER then
            table.insert(PLAYERS, v)
        end
    end
    for i, v in pairs(PLAYERS) do
            if v and (v.Character) ~= nil and v.Team ~= PLAYER.Team then
                local AIM = v.Character:FindFirstChild(_G.AIM_AT)
                if AIM ~= nil then
                    local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
                    local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
                    local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                    local DIFF                     = math.floor((POS - AIM.Position).magnitude)
                    PLAYER_HOLD[v.Name .. i]       = {}
                    PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
                    PLAYER_HOLD[v.Name .. i].plr   = v
                    PLAYER_HOLD[v.Name .. i].diff  = DIFF
                    table.insert(DISTANCES, DIFF)
                end
            end
        end
    
    if unpack(DISTANCES) == nil then
        return false
    end
    
    local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
    if L_DISTANCE > 25000 then
        return false
    end
    
    for i, v in pairs(PLAYER_HOLD) do
        if v.diff == L_DISTANCE then
            return v.plr
        end
    end
    return false
end

MOUSE.KeyDown:connect(function(KEY)
    KEY = KEY:lower():byte()
    if KEY == _G.BIND then
        ENABLED = true
    end
end)

MOUSE.KeyUp:connect(function(KEY)
    KEY = KEY:lower():byte()
    if KEY == _G.BIND then
        ENABLED = false
    end
end)

game:GetService('RunService').RenderStepped:connect(function()
    if ENABLED then
        local TARGET = GetNearestPlayerToMouse()
        if (TARGET ~= false) then
            local AIM = TARGET.Character:FindFirstChild(_G.AIM_AT)
            if AIM then
            CC.CoordinateFrame = CFrame.new(CC.CoordinateFrame.p, AIM.CFrame.p)
            local oh1 = AIM
			local oh2 = AIM.CFrame.p
			local oh3 = workspace[game.Players.LocalPlayer.Name].EquippedTool.Value
			local oh4 = 4096
			local oh5 = game.Players.LocalPlayer.Character.Gun
			local oh6 = ""
			local oh7 = ""
			local oh8 = 15
			local oh9 = false
			local oh10 = false
			local oh11 = Vector3.new(-126.878326, 353.474854, 49.3892708)
			local oh12 = 16868
			local oh13 = Vector3.new(0, 0, -1)
			game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
            end
        end
    end
end)
FIND()
print("LOADED")
end)

unlockall.MouseButton1Click:Connect(function()
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
	local ReplicatedStorage = game:GetService("ReplicatedStorage")

	local allSkins = {
		{'AK47_Ace'},
		{'AK47_Bloodboom'},
		{'AK47_Clown'},
		{'AK47_Code Orange'},
		{'AK47_Eve'},
		{'AK47_Gifted'},
		{'AK47_Glo'},
		{'AK47_Godess'},
		{'AK47_Hallows'},
		{'AK47_Halo'},
		{'AK47_Hypersonic'},
		{'AK47_Inversion'},
		{'AK47_Jester'},
		{'AK47_Maker'},
		{'AK47_Mean Green'},
		{'AK47_Outlaws'},
		{'AK47_Outrunner'},
		{'AK47_Patch'},
		{'AK47_Plated'},
		{'AK47_Precision'},
		{'AK47_Quantum'},
		{'AK47_Quicktime'},
		{'AK47_Scapter'},
		{'AK47_Secret Santa'},
		{'AK47_Shooting Star'},
		{'AK47_Skin Committee'},
		{'AK47_Survivor'},
		{'AK47_Ugly Sweater'},
		{'AK47_VAV'},
		{'AK47_Variant Camo'},
		{'AK47_Yltude'},
		{'AUG_Chilly Night'},
		{'AUG_Dream Hound'},
		{'AUG_Enlisted'},
		{'AUG_Graffiti'},
		{'AUG_Homestead'},
		{'AUG_Maker'},
		{'AUG_NightHawk'},
		{'AUG_Phoenix'},
		{'AUG_Sunsthetic'},
		{'AWP_Abaddon'},
		{'AWP_Autumness'},
		{'AWP_Blastech'},
		{'AWP_Bloodborne'},
		{'AWP_Coffin Biter'},
		{'AWP_Desert Camo'},
		{'AWP_Difference'},
		{'AWP_Dragon'},
		{'AWP_Forever'},
		{'AWP_Grepkin'},
		{'AWP_Hika'},
		{'AWP_Illusion'},
		{'AWP_Instinct'},
		{'AWP_JTF2'},
		{'AWP_Lunar'},
		{'AWP_Nerf'},
		{'AWP_Northern Lights'},
		{'AWP_Pear Tree'},
		{'AWP_Pink Vision'},
		{'AWP_Pinkie'},
		{'AWP_Quicktime'},
		{'AWP_Racer'},
		{'AWP_Regina'},
		{'AWP_Retroactive'},
		{'AWP_Scapter'},
		{'AWP_Silence'},
		{'AWP_Venomus'},
		{'AWP_Weeb'},
		{'Banana_Stock'},
		{'Bayonet_Aequalis'},
		{'Bayonet_Banner'},
		{'Bayonet_Candy Cane'},
		{'Bayonet_Consumed'},
		{'Bayonet_Cosmos'},
		{'Bayonet_Crimson Tiger'},
		{'Bayonet_Crow'},
		{'Bayonet_Delinquent'},
		{'Bayonet_Digital'},
		{'Bayonet_Easy-Bake'},
		{'Bayonet_Egg Shell'},
		{'Bayonet_Festive'},
		{'Bayonet_Frozen Dream'},
		{'Bayonet_Geo Blade'},
		{'Bayonet_Ghastly'},
		{'Bayonet_Goo'},
		{'Bayonet_Hallows'},
		{'Bayonet_Intertwine'},
		{'Bayonet_Marbleized'},
		{'Bayonet_Mariposa'},
		{'Bayonet_Naval'},
		{'Bayonet_Neonic'},
		{'Bayonet_RSL'},
		{'Bayonet_Racer'},
		{'Bayonet_Sapphire'},
		{'Bayonet_Silent Night'},
		{'Bayonet_Splattered'},
		{'Bayonet_Stock'},
		{'Bayonet_Topaz'},
		{'Bayonet_Tropical'},
		{'Bayonet_Twitch'},
		{'Bayonet_UFO'},
		{'Bayonet_Wetland'},
		{'Bayonet_Worn'},
		{'Bayonet_Wrapped'},
		{'Bearded Axe_Beast'},
		{'Bearded Axe_Splattered'},
		{'Bizon_Autumic'},
		{'Bizon_Festive'},
		{'Bizon_Oblivion'},
		{'Bizon_Saint Nick'},
		{'Bizon_Sergeant'},
		{'Bizon_Shattered'},
		{'Butterfly Knife_Aurora'},
		{'Butterfly Knife_Bloodwidow'},
		{'Butterfly Knife_Consumed'},
		{'Butterfly Knife_Cosmos'},
		{'Butterfly Knife_Crimson Tiger'},
		{'Butterfly Knife_Crippled Fade'},
		{'Butterfly Knife_Digital'},
		{'Butterfly Knife_Egg Shell'},
		{'Butterfly Knife_Freedom'},
		{'Butterfly Knife_Frozen Dream'},
		{'Butterfly Knife_Goo'},
		{'Butterfly Knife_Hallows'},
		{'Butterfly Knife_Icicle'},
		{'Butterfly Knife_Inversion'},
		{'Butterfly Knife_Jade Dream'},
		{'Butterfly Knife_Marbleized'},
		{'Butterfly Knife_Naval'},
		{'Butterfly Knife_Neonic'},
		{'Butterfly Knife_Reaper'},
		{'Butterfly Knife_Ruby'},
		{'Butterfly Knife_Scapter'},
		{'Butterfly Knife_Splattered'},
		{'Butterfly Knife_Stock'},
		{'Butterfly Knife_Topaz'},
		{'Butterfly Knife_Tropical'},
		{'Butterfly Knife_Twitch'},
		{'Butterfly Knife_Wetland'},
		{'Butterfly Knife_White Boss'},
		{'Butterfly Knife_Worn'},
		{'Butterfly Knife_Wrapped'},
		{'CZ_Designed'},
		{'CZ_Festive'},
		{'CZ_Holidays'},
		{'CZ_Lightning'},
		{'CZ_Orange Web'},
		{'CZ_Spectre'},
		{'Cleaver_Spider'},
		{'Cleaver_Splattered'},
		{'DesertEagle_Cold Truth'},
		{'DesertEagle_Cool Blue'},
		{'DesertEagle_DropX'},
		{'DesertEagle_Glittery'},
		{'DesertEagle_Grim'},
		{'DesertEagle_Heat'},
		{'DesertEagle_Honor-bound'},
		{'DesertEagle_Independence'},
		{'DesertEagle_Krystallos'},
		{'DesertEagle_Pumpkin Buster'},
		{'DesertEagle_ROLVe'},
		{'DesertEagle_Racer'},
		{'DesertEagle_Scapter'},
		{'DesertEagle_Skin Committee'},
		{'DesertEagle_Survivor'},
		{'DesertEagle_Weeb'},
		{'DesertEagle_Xmas'},
		{'DualBerettas_Carbonized'},
		{'DualBerettas_Dusty Manor'},
		{'DualBerettas_Floral'},
		{'DualBerettas_Hexline'},
		{'DualBerettas_Neon web'},
		{'DualBerettas_Old Fashioned'},
		{'DualBerettas_Xmas'},
		{'Falchion Knife_Bloodwidow'},
		{'Falchion Knife_Chosen'},
		{'Falchion Knife_Coal'},
		{'Falchion Knife_Consumed'},
		{'Falchion Knife_Cosmos'},
		{'Falchion Knife_Crimson Tiger'},
		{'Falchion Knife_Crippled Fade'},
		{'Falchion Knife_Digital'},
		{'Falchion Knife_Egg Shell'},
		{'Falchion Knife_Festive'},
		{'Falchion Knife_Freedom'},
		{'Falchion Knife_Frozen Dream'},
		{'Falchion Knife_Goo'},
		{'Falchion Knife_Hallows'},
		{'Falchion Knife_Inversion'},
		{'Falchion Knife_Late Night'},
		{'Falchion Knife_Marbleized'},
		{'Falchion Knife_Naval'},
		{'Falchion Knife_Neonic'},
		{'Falchion Knife_Racer'},
		{'Falchion Knife_Ruby'},
		{'Falchion Knife_Splattered'},
		{'Falchion Knife_Stock'},
		{'Falchion Knife_Topaz'},
		{'Falchion Knife_Tropical'},
		{'Falchion Knife_Wetland'},
		{'Falchion Knife_Worn'},
		{'Falchion Knife_Wrapped'},
		{'Falchion Knife_Zombie'},
		{'Famas_Abstract'},
		{'Famas_Centipede'},
		{'Famas_Cogged'},
		{'Famas_Goliath'},
		{'Famas_Haunted Forest'},
		{'Famas_KugaX'},
		{'Famas_MK11'},
		{'Famas_Medic'},
		{'Famas_Redux'},
		{'Famas_Shocker'},
		{'Famas_Toxic Rain'},
		{'FiveSeven_Autumn Fade'},
		{'FiveSeven_Danjo'},
		{'FiveSeven_Fluid'},
		{'FiveSeven_Gifted'},
		{'FiveSeven_Midnight Ride'},
		{'FiveSeven_Mr. Anatomy'},
		{'FiveSeven_Stigma'},
		{'FiveSeven_Sub Zero'},
		{'FiveSeven_Summer'},
		{'Flip Knife_Stock'},
		{'G3SG1_Amethyst'},
		{'G3SG1_Autumn'},
		{'G3SG1_Foliage'},
		{'G3SG1_Hex'},
		{'G3SG1_Holly Bound'},
		{'G3SG1_Mahogany'},
		{'Galil_Frosted'},
		{'Galil_Hardware 2'},
		{'Galil_Hardware'},
		{'Galil_Toxicity'},
		{'Galil_Worn'},
		{'Glock_Angler'},
		{'Glock_Anubis'},
		{'Glock_Biotrip'},
		{'Glock_Day Dreamer'},
		{'Glock_Desert Camo'},
		{'Glock_Gravestomper'},
		{'Glock_Midnight Tiger'},
		{'Glock_Money Maker'},
		{'Glock_RSL'},
		{'Glock_Rush'},
		{'Glock_Scapter'},
		{'Glock_Spacedust'},
		{'Glock_Tarnish'},
		{'Glock_Underwater'},
		{'Glock_Wetland'},
		{'Glock_White Sauce'},
		{'Gut Knife_Banner'},
		{'Gut Knife_Bloodwidow'},
		{'Gut Knife_Consumed'},
		{'Gut Knife_Cosmos'},
		{'Gut Knife_Crimson Tiger'},
		{'Gut Knife_Crippled Fade'},
		{'Gut Knife_Digital'},
		{'Gut Knife_Egg Shell'},
		{'Gut Knife_Frozen Dream'},
		{'Gut Knife_Geo Blade'},
		{'Gut Knife_Goo'},
		{'Gut Knife_Hallows'},
		{'Gut Knife_Lurker'},
		{'Gut Knife_Marbleized'},
		{'Gut Knife_Naval'},
		{'Gut Knife_Neonic'},
		{'Gut Knife_Present'},
		{'Gut Knife_Ruby'},
		{'Gut Knife_Rusty'},
		{'Gut Knife_Splattered'},
		{'Gut Knife_Topaz'},
		{'Gut Knife_Tropical'},
		{'Gut Knife_Wetland'},
		{'Gut Knife_Worn'},
		{'Gut Knife_Wrapped'},
		{'Huntsman Knife_Aurora'},
		{'Huntsman Knife_Bloodwidow'},
		{'Huntsman Knife_Consumed'},
		{'Huntsman Knife_Cosmos'},
		{'Huntsman Knife_Cozy'},
		{'Huntsman Knife_Crimson Tiger'},
		{'Huntsman Knife_Crippled Fade'},
		{'Huntsman Knife_Digital'},
		{'Huntsman Knife_Egg Shell'},
		{'Huntsman Knife_Frozen Dream'},
		{'Huntsman Knife_Geo Blade'},
		{'Huntsman Knife_Goo'},
		{'Huntsman Knife_Hallows'},
		{'Huntsman Knife_Honor Fade'},
		{'Huntsman Knife_Marbleized'},
		{'Huntsman Knife_Monster'},
		{'Huntsman Knife_Naval'},
		{'Huntsman Knife_Ruby'},
		{'Huntsman Knife_Splattered'},
		{'Huntsman Knife_Stock'},
		{'Huntsman Knife_Tropical'},
		{'Huntsman Knife_Twitch'},
		{'Huntsman Knife_Wetland'},
		{'Huntsman Knife_Worn'},
		{'Huntsman Knife_Wrapped'},
		{'Karambit_Bloodwidow'},
		{'Karambit_Consumed'},
		{'Karambit_Cosmos'},
		{'Karambit_Crimson Tiger'},
		{'Karambit_Crippled Fade'},
		{'Karambit_Death Wish'},
		{'Karambit_Digital'},
		{'Karambit_Egg Shell'},
		{'Karambit_Festive'},
		{'Karambit_Frozen Dream'},
		{'Karambit_Glossed'},
		{'Karambit_Gold'},
		{'Karambit_Goo'},
		{'Karambit_Hallows'},
		{'Karambit_Jade Dream'},
		{'Karambit_Jester'},
		{'Karambit_Lantern'},
		{'Karambit_Liberty Camo'},
		{'Karambit_Marbleized'},
		{'Karambit_Naval'},
		{'Karambit_Neonic'},
		{'Karambit_Pizza'},
		{'Karambit_Quicktime'},
		{'Karambit_Racer'},
		{'Karambit_Ruby'},
		{'Karambit_Scapter'},
		{'Karambit_Splattered'},
		{'Karambit_Stock'},
		{'Karambit_Topaz'},
		{'Karambit_Tropical'},
		{'Karambit_Twitch'},
		{'Karambit_Wetland'},
		{'Karambit_Worn'},
		{'M249_Aggressor'},
		{'M249_P2020'},
		{'M249_Spooky'},
		{'M249_Wolf'},
		{'M4A1_Animatic'},
		{'M4A1_Burning'},
		{'M4A1_Desert Camo'},
		{'M4A1_Heavens Gate'},
		{'M4A1_Impulse'},
		{'M4A1_Jester'},
		{'M4A1_Lunar'},
		{'M4A1_Necropolis'},
		{'M4A1_Tecnician'},
		{'M4A1_Toucan'},
		{'M4A1_Wastelander'},
		{'M4A4_BOT[S]'},
		{'M4A4_Candyskull'},
		{'M4A4_Delinquent'},
		{'M4A4_Desert Camo'},
		{'M4A4_Devil'},
		{'M4A4_Endline'},
		{'M4A4_Flashy Ride'},
		{'M4A4_Ice Cap'},
		{'M4A4_Jester'},
		{'M4A4_King'},
		{'M4A4_Mistletoe'},
		{'M4A4_Pinkie'},
		{'M4A4_Pinkvision'},
		{'M4A4_Pondside'},
		{'M4A4_Precision'},
		{'M4A4_Quicktime'},
		{'M4A4_Racer'},
		{'M4A4_RayTrack'},
		{'M4A4_Scapter'},
		{'M4A4_Stardust'},
		{'M4A4_Toy Soldier'},
		{'MAC10_Artists Intent'},
		{'MAC10_Blaze'},
		{'MAC10_Golden Rings'},
		{'MAC10_Pimpin'},
		{'MAC10_Skeleboney'},
		{'MAC10_Toxic'},
		{'MAC10_Turbo'},
		{'MAC10_Wetland'},
		{'MAG7_Bombshell'},
		{'MAG7_C4UTION'},
		{'MAG7_Frosty'},
		{'MAG7_Molten'},
		{'MAG7_Outbreak'},
		{'MAG7_Striped'},
		{'MP7_Calaxian'},
		{'MP7_Cogged'},
		{'MP7_Goo'},
		{'MP7_Holiday'},
		{'MP7_Industrial'},
		{'MP7_Reindeer'},
		{'MP7_Silent Ops'},
		{'MP7_Sunshot'},
		{'MP9_Blueroyal'},
		{'MP9_Cob Web'},
		{'MP9_Cookie Man'},
		{'MP9_Decked Halls'},
		{'MP9_SnowTime'},
		{'MP9_Vaporwave'},
		{'MP9_Velvita'},
		{'MP9_Wilderness'},
		{'Negev_Default'},
		{'Negev_Midnightbones'},
		{'Negev_Quazar'},
		{'Negev_Striped'},
		{'Negev_Wetland'},
		{'Negev_Winterfell'},
		{'Nova_Black Ice'},
		{'Nova_Cookie'},
		{'Nova_Paradise'},
		{'Nova_Sharkesh'},
		{'Nova_Starry Night'},
		{'Nova_Terraformer'},
		{'Nova_Tiger'},
		{'P2000_Apathy'},
		{'P2000_Camo Dipped'},
		{'P2000_Candycorn'},
		{'P2000_Comet'},
		{'P2000_Dark Beast'},
		{'P2000_Golden Age'},
		{'P2000_Lunar'},
		{'P2000_Pinkie'},
		{'P2000_Ruby'},
		{'P2000_Silence'},
		{'P250_Amber'},
		{'P250_Bomber'},
		{'P250_Equinox'},
		{'P250_Frosted'},
		{'P250_Goldish'},
		{'P250_Green Web'},
		{'P250_Shark'},
		{'P250_Solstice'},
		{'P250_TC250'},
		{'P90_Demon Within'},
		{'P90_Elegant'},
		{'P90_Krampus'},
		{'P90_Northern Lights'},
		{'P90_P-Chan'},
		{'P90_Pine'},
		{'P90_Redcopy'},
		{'P90_Skulls'},
		{'R8_Exquisite'},
		{'R8_Hunter'},
		{'R8_Spades'},
		{'R8_TG'},
		{'R8_Violet'},
		{'SG_DropX'},
		{'SG_Dummy'},
		{'SG_Kitty Cat'},
		{'SG_Knighthood'},
		{'SG_Magma'},
		{'SG_Variant Camo'},
		{'SG_Yltude'},
		{'SawedOff_Casino'},
		{'SawedOff_Colorboom'},
		{'SawedOff_Executioner'},
		{'SawedOff_Opal'},
		{'SawedOff_Spooky'},
		{'SawedOff_Sullys Blacklight'},
		{'Scout_Coffin Biter'},
		{'Scout_Flowing Mists'},
		{'Scout_Hellborn'},
		{'Scout_Hot Cocoa'},
		{'Scout_Monstruo'},
		{'Scout_Neon Regulation'},
		{'Scout_Posh'},
		{'Scout_Pulse'},
		{'Scout_Railgun'},
		{'Scout_Theory'},
		{'Scout_Xmas'},
		{'Sickle_Mummy'},
		{'Sickle_Splattered'},
		{'Tec9_Charger'},
		{'Tec9_Gift Wrapped'},
		{'Tec9_Ironline'},
		{'Tec9_Performer'},
		{'Tec9_Phol'},
		{'Tec9_Samurai'},
		{'Tec9_Skintech'},
		{'Tec9_Stocking Stuffer'},
		{'UMP_Death Grip'},
		{'UMP_Gum Drop'},
		{'UMP_Magma'},
		{'UMP_Militia Camo'},
		{'UMP_Molten'},
		{'UMP_Redline'},
		{'USP_Crimson'},
		{'USP_Dizzy'},
		{'USP_Frostbite'},
		{'USP_Holiday'},
		{'USP_Jade Dream'},
		{'USP_Kraken'},
		{'USP_Nighttown'},
		{'USP_Paradise'},
		{'USP_Racing'},
		{'USP_Skull'},
		{'USP_Unseen'},
		{'USP_Worlds Away'},
		{'USP_Yellowbelly'},
		{'XM_Artic'},
		{'XM_Atomic'},
		{'XM_Campfire'},
		{'XM_Endless Night'},
		{'XM_MK11'},
		{'XM_Predator'},
		{'XM_Red'},
		{'XM_Spectrum'},
		{'Handwraps_Wraps'},
		{'Sports Glove_Hazard'},
		{'Sports Glove_Hallows'},
		{'Sports Glove_Majesty'},
		{'Strapped Glove_Racer'},
		{'trapped Glove_Grim'},
		{'trapped Glove_Wisk'},
		{'Fingerless Glove_Scapter'},
		{'Fingerless Glove_Digital'},
		{'Fingerless Glove_Patch'},
		{'Handwraps_Guts'},
		{'Handwraps_Wetland'},
		{'trapped Glove_Molten'},
		{'Fingerless_Crystal'},
		{'Sports Glove_Royal'},
		{'Strapped Glove_Kringle'},
		{'Handwraps_MMA'},
		{'Sports Glove_Weeb'},
		{'Sports Glove_CottonTail'},
		{'Sports Glove_RSL'},
		{'Handwraps_Ghoul Hex'},
		{'Handwraps_Phantom Hex'},
		{'Handwraps_Spector Hex'},
		{'Handwraps_Orange Hex'},
		{'Handwraps_Purple Hex'},
		{'Handwraps_Green Hex'},
	}

	local isUnlocked

	local mt = getrawmetatable(game)
	local oldNamecall = mt.__namecall
	setreadonly(mt, false)

	local isUnlocked

	mt.__namecall = newcclosure(function(self, ...)
		local args = {...}
		if getnamecallmethod() == "InvokeServer" and tostring(self) == "Hugh" then
			return
		end
		if getnamecallmethod() == "FireServer" then
			if args[1] == LocalPlayer.UserId then
				return
			end
			if string.len(tostring(self)) == 38 then
				if not isUnlocked then
					isUnlocked = true
					for i,v in pairs(allSkins) do
						local doSkip
						for i2,v2 in pairs(args[1]) do
							if v[1] == v2[1] then
								doSkip = true
							end
						end
						if not doSkip then
							table.insert(args[1], v)
						end
					end
				end
				return
			end
			if tostring(self) == "DataEvent" and args[1][4] then
				local currentSkin = string.split(args[1][4][1], "_")[2]
				if args[1][2] == "Both" then
					LocalPlayer["SkinFolder"]["CTFolder"][args[1][3]].Value = currentSkin
					LocalPlayer["SkinFolder"]["TFolder"][args[1][3]].Value = currentSkin
				else
					LocalPlayer["SkinFolder"][args[1][2] .. "Folder"][args[1][3]].Value = currentSkin
				end
			end
		end
		return oldNamecall(self, ...)
	end)

	setreadonly(mt, true)

	Client.CurrentInventory = allSkins

	local TClone, CTClone = LocalPlayer.SkinFolder.TFolder:Clone(), game.Players.LocalPlayer.SkinFolder.CTFolder:Clone()
	LocalPlayer.SkinFolder.TFolder:Destroy()
	LocalPlayer.SkinFolder.CTFolder:Destroy()
	TClone.Parent = LocalPlayer.SkinFolder
	CTClone.Parent = LocalPlayer.SkinFolder
	
end)
