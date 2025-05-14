local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local UIPadding = Instance.new("UIPadding")
local TextLabel = Instance.new("TextLabel")
local CopyButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIStroke_2 = Instance.new("UIStroke")

-- ScreenGui setup
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main Frame
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Size = UDim2.new(0, 350, 0, 200)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)

-- Frame Corner
UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 12)

-- Frame Stroke
UIStroke.Parent = Frame
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(60, 60, 60)
UIStroke.Thickness = 2

-- Frame Padding
UIPadding.Parent = Frame
UIPadding.PaddingBottom = UDim.new(0, 20)
UIPadding.PaddingLeft = UDim.new(0, 20)
UIPadding.PaddingRight = UDim.new(0, 20)
UIPadding.PaddingTop = UDim.new(0, 20)

-- Text Label
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 0.6, 0)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "We Moved Into New Loadstring,\nPress Button Below To Copy New Script"
TextLabel.TextColor3 = Color3.fromRGB(240, 240, 240)
TextLabel.TextSize = 16
TextLabel.TextWrapped = true
TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom

-- Copy Button
CopyButton.Name = "CopyButton"
CopyButton.Parent = Frame
CopyButton.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
CopyButton.Size = UDim2.new(1, 0, 0, 40)
CopyButton.Font = Enum.Font.GothamBold
CopyButton.Text = "COPY SCRIPT"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.TextSize = 14
CopyButton.Position = UDim2.new(0, 0, 0.65, 0)

-- Button Corner
UICorner_2.Parent = CopyButton
UICorner_2.CornerRadius = UDim.new(0, 8)

-- Button Stroke
UIStroke_2.Parent = CopyButton
UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
UIStroke_2.Thickness = 0.5

-- Button Click Function
CopyButton.MouseButton1Click:Connect(function()
    setclipboard("loadstring(game:HttpGet("https://raw.githubusercontent.com/CodeE4X-dev/Star-X/refs/heads/main/Blade-BallV3"))()") -- Replace with your actual loadstring
    CopyButton.Text = "COPIED!"
    task.wait(2)
    CopyButton.Text = "COPY SCRIPT"
end)

-- Button Hover Effects
CopyButton.MouseEnter:Connect(function()
    CopyButton.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
end)

CopyButton.MouseLeave:Connect(function()
    CopyButton.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
end)
