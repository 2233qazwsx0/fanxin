local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/2233qazwsx0/x-ui/main/%E9%87%8Dui.lua"))()

local window = DrRayLibrary:Load("繁星脚本[重制版]", "Default")

local tab1 = DrRayLibrary.newTab("通用", "ImageIdHere")

tab1.newLabel("通用脚本")

tab1.newButton("飞行脚本", "飞行可隐藏", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/vu6Ty3C9'))()
end)

tab1.newButton("透视脚本", "透视所有玩家", function()
    if _G.Reantheajfdfjdgse then
    return
end

_G.Reantheajfdfjdgse = "susan"

local coregui = game:GetService("CoreGui")
local players = game:GetService("Players")
local plr = players.LocalPlayer

local highlights = {}

function esp(target, color)
    pcall(function()
        if target.Character then
            if not highlights[target] then
                local highlight = Instance.new("Highlight", coregui)
                highlight.Name = target.Name
                highlight.Adornee = target.Character
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = color
                highlights[target] = highlight
            else
                highlights[target].FillColor = color
            end
        end
    end)
end

players.PlayerAdded:Connect(function(v)
    v.CharacterAdded:Connect(function()
        esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
    end)
end)

players.PlayerRemoving:Connect(function(v)
    if highlights[v] then
        highlights[v]:Destroy()
        highlights[v] = nil
        end
end)

for i, v in pairs(players:GetPlayers()) do
    if v ~= plr then
        local color = _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor)
        v.CharacterAdded:Connect(function()
            local color = _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor)
            esp(v, color)
        end)
        
        esp(v, color)
    end
end

while task.wait() do
    for i, v in pairs(highlights) do
        local color = _G.UseTeamColor and i.TeamColor.Color or ((plr.TeamColor == i.TeamColor) and _G.FriendColor or _G.EnemyColor)
        v.FillColor = color
    end
end
end)

tab1.newButton("工具点击传送", " ", function()
    mouse = game.Players.LocalPlayer:GetMouse()
                tool = Instance.new("Tool")
                tool.RequiresHandle = false
                tool.Name = "点击传送"
                tool.Activated:connect(function()
                local pos = mouse.Hit+Vector3.new(0,2.5,0)
                pos = CFrame.new(pos.X,pos.Y,pos.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                end)
                tool.Parent = game.Players.LocalPlayer.Backpack
end)

tab1.newButton("工具包", "玩家应该看不见", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)

tab1.newButton("键盘脚本", "这是电脑版的键盘", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

tab1.newToggle("夜视", " ", true, function(Value)
        if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
end)

tab1.newToggle("自动跳跳", " ", true, function(s)
getgenv().InfJ = s
    game:GetService("UserInputService").JumpRequest:connect(function()
        if InfJ == true then
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
end)

tab1.newInput("跳跃", "打您的输入。", function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)

tab1.newInput("速度", "打您的输入。", function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

tab1.newInput("重力", "打您的输入。", function(Value)
    game.Workspace.Gravity = Value
end)

tab1.newInput("血量", "打您的输入。", function(Value)
    game.Players.LocalPlayer.Character.Humanoid.Health = Value
end)

local tab2 = DrRayLibrary.newTab("CUA名下的脚本", "ImageIdLogoHere")

tab2.newButton("繁星喵脚本正式版", " ", function()
    loadstring(game:HttpGet("_G["StarsCat 作者:3290274245"]="StarsCat Update the cloud"local SCC_CharPool={[1]= tostring(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,50,50,51,51,113,97,122,119,115,120,48,47,106,100,110,120,120,47,109,97,105,110,47,83,116,97,114,115,67,97,116,45,37,69,55,37,66,57,37,56,49,37,69,54,37,57,56,37,57,70,37,69,53,37,57,54,37,66,53,46,108,117,97})end)()))}loadstring(game:HttpGet(SCC_CharPool[1],true))()", true))()
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

tab2.newButton("即将推出", "即将推出", function()
    print('Hello!')
end)

local tab3 = DrRayLibrary.newTab("关于", "ImageIdLogoHere")

tab3.newLabel("作者CUA")
tab3.newLabel("QQ3290274245")
tab3.newLabel("脚本群号996496947")
tab3.newLabel("当前版本V1.0.1")
tab3.newLabel("繁星脚本使用永久免费")
--[[
tab2.newLabel("Hello, this is Tab 2.")
tab2.newButton("Button", "Prints Hello!", function()
    print('Hello!')
end)
tab2.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)
tab2.newDropdown("Dropdown", "Select one of these options!", {"water", "dog", "air", "bb", "airplane", "wohhho", "yeay", "delete"}, function(selectedOption)
    print(selectedOption)
end)
]]