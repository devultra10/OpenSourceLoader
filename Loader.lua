-- [[
    Open Source Loader, Dont Skid (But can be used with this in your script / discord server : Credit To OpenSourceLoader By Aqua Core For The Launcher)
]]

-- Instances

local LAUNCHER = Instance.new("ScreenGui")
local LauncherFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local LoadingPercent = Instance.new("TextLabel")

-- Properties

LAUNCHER.Name = "LAUNCHER"
LAUNCHER.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
LAUNCHER.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

LauncherFrame.Name = "LauncherFrame"
LauncherFrame.Parent = LAUNCHER
LauncherFrame.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
LauncherFrame.BorderColor3 = Color3.new(0, 0, 0)
LauncherFrame.BorderSizePixel = 0
LauncherFrame.Position = UDim2.new(0, 492, 0, 181)
LauncherFrame.Size = UDim2.new(0, 273, 0, 83)

UICorner.Parent = LauncherFrame
UICorner.CornerRadius = UDim.new(0, 11)

Title.Name = "Title"
Title.Parent = LauncherFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.13219589, 0, 0, 0)
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "Aqua Core - Launcher"
Title.TextColor3 = Color3.new(0.705882, 0.682353, 0.682353)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

LoadingPercent.Name = "LoadingPercent"
LoadingPercent.Parent = LauncherFrame
LoadingPercent.BackgroundColor3 = Color3.new(1, 1, 1)
LoadingPercent.BackgroundTransparency = 1
LoadingPercent.BorderColor3 = Color3.new(0, 0, 0)
LoadingPercent.BorderSizePixel = 0
LoadingPercent.Position = UDim2.new(0.363259345, 0, 0.481655627, 0)
LoadingPercent.Size = UDim2.new(0, 74, 0, 30)
LoadingPercent.Font = Enum.Font.SourceSans
LoadingPercent.Text = "Loading UI..."
LoadingPercent.TextColor3 = Color3.new(0.705882, 0.682353, 0.682353)
LoadingPercent.TextSize = 25

-- IMPORTANT 

local function RJLAZ_fake_script() -- LoadingPercent.LocalScript 
	local script = Instance.new('LocalScript', LoadingPercent)

	local label = script.Parent 
	local duration = 5.5 
	local steps = 100
	local interval = duration / steps 
	
	
-- LOADER 
	if game:IsLoaded() then
		for i = 0, steps do
			label.Text = i .. "%" 
			wait(interval)
			if label.Text == "100%" then
				label.Text = "Loading Complete!"
				wait(2)
				loadstring(game:HttpGet("RAW SCRIPT LINK",true))() -- SCRIPT HERE
			end
		end
	end
	
	
end
coroutine.wrap(RJLAZ_fake_script)()
