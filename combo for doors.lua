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
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
--Combo made by MONTKBOOM (MORTIKBOOM in roblox)
