
local id = "5679889233"
local hedef = "BakBen_DeliyimHa"





--------------------------------------------------------------------------
local args = {
    [1] = workspace.Map.SinirDuvarlari["SınırArabaGeçiti (LVL 3)"].Parti.gecis.Value,
    [2] = "}, { ",
    [3] = {
        ["Volume"] = 1,
        ["SoundId"] = "rbxassetid://"..id,
        ["Replicate"] = true,
        ["Position"] = workspace[hedef].Head,
        ["Effects"] = true,
    },
}

game:GetService("ReplicatedStorage").ChatSystemMakeMessage:FireServer(unpack(args))
--hug
