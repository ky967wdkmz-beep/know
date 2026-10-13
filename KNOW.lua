
-- KNOW | Purple & Black GUI
-- Interface only; does not automate the bomb.

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "KNOW"
gui.ResetOnSpawn = false

local parent = game:GetService("CoreGui")
pcall(function()
    gui.Parent = parent
end)

if not gui.Parent then
    gui.Parent = player:WaitForChild("PlayerGui")
end

local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.new(0, 280, 0, 190)
main.Position = UDim2.new(0.5, -140, 0.5, -95)
main.BackgroundColor3 = Color3.fromRGB(18, 14, 28)
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true
main.Parent = gui

Instance.new("UICorner", main).CornerRadius =
    UDim.new(0, 12)

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(160, 70, 255)
stroke.Thickness = 2
stroke.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -45, 0, 45)
title.Position = UDim2.new(0, 12, 0, 4)
title.BackgroundTransparency = 1
title.Text = "KNOW"
title.TextColor3 = Color3.fromRGB(195, 125, 255)
title.TextSize = 25
title.Font = Enum.Font.GothamBold
title.Parent = main

local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 32, 0, 32)
close.Position = UDim2.new(1, -38, 0, 8)
close.BackgroundColor3 = Color3.fromRGB(65, 30, 90)
close.Text = "X"
close.TextColor3 = Color3.new(1, 1, 1)
close.TextSize = 16
close.Parent = main
Instance.new("UICorner", close).CornerRadius =
    UDim.new(0, 8)

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

local info = Instance.new("TextLabel")
info.Size = UDim2.new(1, -24, 0, 55)
info.Position = UDim2.new(0, 12, 0, 55)
info.BackgroundTransparency = 1
info.Text = "KNOW GUI\nMap Time Bomb"
info.TextColor3 = Color3.fromRGB(225, 215, 240)
info.TextSize = 17
info.Font = Enum.Font.Gotham
info.Parent = main

local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -24, 0, 42)
button.Position = UDim2.new(0, 12, 0, 125)
button.BackgroundColor3 = Color3.fromRGB(115, 45, 190)
button.Text = "KNOW ACTIVE"
button.TextColor3 = Color3.new(1, 1, 1)
button.TextSize = 16
button.Font = Enum.Font.GothamBold
button.Parent = main
Instance.new("UICorner", button).CornerRadius =
    UDim.new(0, 8)

button.MouseButton1Click:Connect(function()
    button.Text = "GUI IS RUNNING"
end)
