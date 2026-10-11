--!nolint
-- ================================================================
-- Auto-generated installer for: CometZ
-- Source: comet mm2 final.rbxmx (rbxmx)  hash: edfb9a10
-- Instances: 55  Scripts: 9
-- Mode: Smart
-- Generated: 2026-10-11T17:52:17.775Z
-- ================================================================

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
do
    local t0 = os.clock()
    while not LocalPlayer and os.clock() - t0 < 5 do
        task.wait(0.05)
        LocalPlayer = Players.LocalPlayer
    end
end
if not LocalPlayer then error("[xtw] LocalPlayer never appeared - run on the client.") end
local guiHost = LocalPlayer:WaitForChild("PlayerGui", 10)
if not guiHost then error("[xtw] PlayerGui not found.") end

local ourRootName = "CometZ"
do
    local prev = guiHost:FindFirstChild(ourRootName)
    if prev then prev:Destroy() end
end

local __XTW_B64_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local __XTW_B64_LOOKUP = {}
for i = 1, #__XTW_B64_CHARS do
    __XTW_B64_LOOKUP[__XTW_B64_CHARS:sub(i, i)] = i - 1
end
local function __xtw_b64decode(input)
    local output = {}
    local outN = 0
    local buffer, bits = 0, 0
    for i = 1, #input do
        local c = input:sub(i, i)
        if c == "=" then break end
        local v = __XTW_B64_LOOKUP[c]
        if v then
            buffer = buffer * 64 + v
            bits = bits + 6
            if bits >= 8 then
                bits = bits - 8
                local byte = math.floor(buffer / (2 ^ bits)) % 256
                outN = outN + 1
                output[outN] = string.char(byte)
                buffer = buffer % (2 ^ bits)
            end
        end
    end
    return table.concat(output)
end

do
    local execName = "unknown"
    pcall(function()
        if type(identifyexecutor) == "function" then execName = identifyexecutor()
        elseif type(getexecutorname) == "function" then execName = getexecutorname() end
    end)
    local hasLoadstring = type(loadstring) == "function"
    print(string.format("[xtw] executor=%s loadstring=%s", tostring(execName), hasLoadstring and "yes" or "no"))
end

local capturedErrors = {}
local errorConn
pcall(function()
    errorConn = game:GetService("ScriptContext").Error:Connect(function(msg, st, scr)
        if not scr then return end
        local root = guiHost:FindFirstChild(ourRootName)
        if not root then return end
        local ok, isDesc = pcall(function() return scr:IsDescendantOf(root) end)
        if ok and isDesc then
            capturedErrors[#capturedErrors + 1] = { name = scr.Name, cls = scr.ClassName, msg = tostring(msg):sub(1, 200) }
            warn(string.format("[xtw] runtime error in %s (%s): %s", scr.Name, scr.ClassName, tostring(msg):sub(1, 150)))
        end
    end)
end)

local n = {}

-- ==== 1. create instances (unparented) ====
do
    local ok, i = pcall(Instance.new, "ScreenGui")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.ClipToDeviceSafeArea = true end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.DisplayOrder = 0 end)
        pcall(function() i.Enabled = true end)
        pcall(function() i.Name = "CometZ" end)
        pcall(function() i.ResetOnSpawn = false end)
        pcall(function() i.SafeAreaCompatibility = Enum.SafeAreaCompatibility.None end)
        pcall(function() i.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.ZIndexBehavior = Enum.ZIndexBehavior.Sibling end)
        n[1] = i
    else
        warn("[xtw] failed to create ScreenGui #1");
        n[1] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "LocalScript")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UIController" end)
        pcall(function() i.RunContext = 0 end)
        pcall(function() i.ScriptGuid = "{CCE8A038-9928-431C-9E24-B990F831B81B}" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Disabled = true end)
        n[2] = i
    else
        warn("[xtw] failed to create LocalScript #2");
        n[2] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "Frame")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0.5,0.5) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.047059,0.047059,0.047059) end)
        pcall(function() i.BackgroundTransparency = 0.15 end)
        pcall(function() i.BorderColor3 = Color3.new(0.105882,0.164706,0.207843) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 0 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.Name = "MainFrame" end)
        pcall(function() i.Position = UDim2.new(0.796006,0,0.790038,0) end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0,460,0,290) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[3] = i
    else
        warn("[xtw] failed to create Frame #3");
        n[3] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "LocalScript")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "Background" end)
        pcall(function() i.RunContext = 0 end)
        pcall(function() i.ScriptGuid = "{1C1E324C-7804-4A23-9714-E1D2B0C6BA62}" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Disabled = true end)
        n[4] = i
    else
        warn("[xtw] failed to create LocalScript #4");
        n[4] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "LocalScript")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "Drag Mechanism" end)
        pcall(function() i.RunContext = 0 end)
        pcall(function() i.ScriptGuid = "{85180F7F-AB4F-4641-9CD6-3A5287AEB8C8}" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = 8028987965 end)
        pcall(function() i.Disabled = true end)
        n[5] = i
    else
        warn("[xtw] failed to create LocalScript #5");
        n[5] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UICorner")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BottomLeftRadius = UDim.new(0,6) end)
        pcall(function() i.BottomRightRadius = UDim.new(0,6) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UICorner" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TopLeftRadius = UDim.new(0,6) end)
        pcall(function() i.TopRightRadius = UDim.new(0,6) end)
        n[6] = i
    else
        warn("[xtw] failed to create UICorner #6");
        n[6] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "Frame")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.062745,0.062745,0.062745) end)
        pcall(function() i.BackgroundTransparency = 0.2 end)
        pcall(function() i.BorderColor3 = Color3.new(0.105882,0.164706,0.207843) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 0 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.Name = "TopBar" end)
        pcall(function() i.Position = UDim2.new(0,0,0,0) end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(1,0,0,32) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[7] = i
    else
        warn("[xtw] failed to create Frame #7");
        n[7] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "ImageLabel")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.639216,0.635294,0.647059) end)
        pcall(function() i.BackgroundTransparency = 1 end)
        pcall(function() i.BorderColor3 = Color3.new(0.105882,0.164706,0.207843) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 1 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Image = "rbxassetid://127461491551494" end)
        pcall(function() i.ImageColor3 = Color3.new(1,1,1) end)
        pcall(function() i.ImageRectOffset = Vector2.new(0,0) end)
        pcall(function() i.ImageRectSize = Vector2.new(0,0) end)
        pcall(function() i.ImageTransparency = 0 end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.Name = "TopBarIcon" end)
        pcall(function() i.Position = UDim2.new(-0.021739,10,0.125,-7) end)
        pcall(function() i.ResampleMode = 0 end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.ScaleType = Enum.ScaleType.Stretch end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0,35,0,35) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SliceScale = 1 end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TileSize = UDim2.new(1,0,1,0) end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[8] = i
    else
        warn("[xtw] failed to create ImageLabel #8");
        n[8] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "TextLabel")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.639216,0.635294,0.647059) end)
        pcall(function() i.BackgroundTransparency = 1 end)
        pcall(function() i.BorderColor3 = Color3.new(0.105882,0.164706,0.207843) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 1 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Font = Enum.Font.Gotham end)
        pcall(function() i.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal) end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.LineHeight = 1 end)
        pcall(function() i.LocalizationMatchIdentifier = "" end)
        pcall(function() i.LocalizationMatchedSourceText = "" end)
        pcall(function() i.MaxVisibleGraphemes = -1 end)
        pcall(function() i.Name = "HeaderTitle" end)
        pcall(function() i.OpenTypeFeatures = "" end)
        pcall(function() i.Position = UDim2.new(0,30,0,6) end)
        pcall(function() i.RichText = false end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0,80,0,11) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Text = "Comet Z" end)
        pcall(function() i.TextColor3 = Color3.new(1,1,1) end)
        pcall(function() i.TextDirection = 0 end)
        pcall(function() i.TextScaled = false end)
        pcall(function() i.TextSize = 11 end)
        pcall(function() i.TextStrokeColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextStrokeTransparency = 1 end)
        pcall(function() i.TextTransparency = 0 end)
        pcall(function() i.TextTruncate = Enum.TextTruncate.None end)
        pcall(function() i.TextWrapped = false end)
        pcall(function() i.TextXAlignment = Enum.TextXAlignment.Left end)
        pcall(function() i.TextYAlignment = Enum.TextYAlignment.Center end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[9] = i
    else
        warn("[xtw] failed to create TextLabel #9");
        n[9] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "TextLabel")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.639216,0.635294,0.647059) end)
        pcall(function() i.BackgroundTransparency = 1 end)
        pcall(function() i.BorderColor3 = Color3.new(0.105882,0.164706,0.207843) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 1 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Font = Enum.Font.SourceSans end)
        pcall(function() i.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal) end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.LineHeight = 1 end)
        pcall(function() i.LocalizationMatchIdentifier = "" end)
        pcall(function() i.LocalizationMatchedSourceText = "" end)
        pcall(function() i.MaxVisibleGraphemes = -1 end)
        pcall(function() i.Name = "HeaderSubtitle" end)
        pcall(function() i.OpenTypeFeatures = "" end)
        pcall(function() i.Position = UDim2.new(0,30,0,18) end)
        pcall(function() i.RichText = false end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0,100,0,9) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Text = "V0.4 // Lite" end)
        pcall(function() i.TextColor3 = Color3.new(0.54902,0.54902,0.54902) end)
        pcall(function() i.TextDirection = 0 end)
        pcall(function() i.TextScaled = false end)
        pcall(function() i.TextSize = 8 end)
        pcall(function() i.TextStrokeColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextStrokeTransparency = 1 end)
        pcall(function() i.TextTransparency = 0 end)
        pcall(function() i.TextTruncate = Enum.TextTruncate.None end)
        pcall(function() i.TextWrapped = false end)
        pcall(function() i.TextXAlignment = Enum.TextXAlignment.Left end)
        pcall(function() i.TextYAlignment = Enum.TextYAlignment.Center end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[10] = i
    else
        warn("[xtw] failed to create TextLabel #10");
        n[10] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "Frame")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.086275,0.086275,0.086275) end)
        pcall(function() i.BackgroundTransparency = 0.3 end)
        pcall(function() i.BorderColor3 = Color3.new(0.105882,0.164706,0.207843) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 1 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.Name = "StatFrame" end)
        pcall(function() i.Position = UDim2.new(1,-190,0.5,-9) end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0,150,0,18) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[11] = i
    else
        warn("[xtw] failed to create Frame #11");
        n[11] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "TextLabel")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.639216,0.635294,0.647059) end)
        pcall(function() i.BackgroundTransparency = 1 end)
        pcall(function() i.BorderColor3 = Color3.new(0.105882,0.164706,0.207843) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 1 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Font = Enum.Font.SourceSans end)
        pcall(function() i.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal) end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.LineHeight = 1 end)
        pcall(function() i.LocalizationMatchIdentifier = "" end)
        pcall(function() i.LocalizationMatchedSourceText = "" end)
        pcall(function() i.MaxVisibleGraphemes = -1 end)
        pcall(function() i.Name = "FpsBadge" end)
        pcall(function() i.OpenTypeFeatures = "" end)
        pcall(function() i.Position = UDim2.new(0,0,0,0) end)
        pcall(function() i.RichText = false end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0.5,0,1,0) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Text = "FPS: 60" end)
        pcall(function() i.TextColor3 = Color3.new(1,1,1) end)
        pcall(function() i.TextDirection = 0 end)
        pcall(function() i.TextScaled = false end)
        pcall(function() i.TextSize = 9 end)
        pcall(function() i.TextStrokeColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextStrokeTransparency = 1 end)
        pcall(function() i.TextTransparency = 0 end)
        pcall(function() i.TextTruncate = Enum.TextTruncate.None end)
        pcall(function() i.TextWrapped = false end)
        pcall(function() i.TextXAlignment = Enum.TextXAlignment.Right end)
        pcall(function() i.TextYAlignment = Enum.TextYAlignment.Center end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[12] = i
    else
        warn("[xtw] failed to create TextLabel #12");
        n[12] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "LocalScript")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "Function" end)
        pcall(function() i.RunContext = 0 end)
        pcall(function() i.ScriptGuid = "{2FC6C60E-2607-49A3-AEB8-EAD1CA9209F8}" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Disabled = true end)
        n[13] = i
    else
        warn("[xtw] failed to create LocalScript #13");
        n[13] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "TextLabel")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.639216,0.635294,0.647059) end)
        pcall(function() i.BackgroundTransparency = 1 end)
        pcall(function() i.BorderColor3 = Color3.new(0.105882,0.164706,0.207843) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 1 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Font = Enum.Font.SourceSans end)
        pcall(function() i.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal) end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.LineHeight = 1 end)
        pcall(function() i.LocalizationMatchIdentifier = "" end)
        pcall(function() i.LocalizationMatchedSourceText = "" end)
        pcall(function() i.MaxVisibleGraphemes = -1 end)
        pcall(function() i.Name = "PingBadge" end)
        pcall(function() i.OpenTypeFeatures = "" end)
        pcall(function() i.Position = UDim2.new(0.5,0,0,0) end)
        pcall(function() i.RichText = false end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0.5,0,1,0) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Text = "0ms" end)
        pcall(function() i.TextColor3 = Color3.new(0.627451,0.627451,0.627451) end)
        pcall(function() i.TextDirection = 0 end)
        pcall(function() i.TextScaled = false end)
        pcall(function() i.TextSize = 9 end)
        pcall(function() i.TextStrokeColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextStrokeTransparency = 1 end)
        pcall(function() i.TextTransparency = 0 end)
        pcall(function() i.TextTruncate = Enum.TextTruncate.None end)
        pcall(function() i.TextWrapped = false end)
        pcall(function() i.TextXAlignment = Enum.TextXAlignment.Right end)
        pcall(function() i.TextYAlignment = Enum.TextYAlignment.Center end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[14] = i
    else
        warn("[xtw] failed to create TextLabel #14");
        n[14] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "LocalScript")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "Function" end)
        pcall(function() i.RunContext = 0 end)
        pcall(function() i.ScriptGuid = "{8DED10CC-AF9C-4DAF-A946-82561094BC60}" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Disabled = true end)
        n[15] = i
    else
        warn("[xtw] failed to create LocalScript #15");
        n[15] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UIStroke")
    if ok and i then
        pcall(function() i.ApplyStrokeMode = Enum.ApplyStrokeMode.Border end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BorderOffset = UDim.new(0,0) end)
        pcall(function() i.BorderStrokePosition = 0 end)
        pcall(function() i.Color = Color3.new(0.215686,0.215686,0.215686) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Enabled = true end)
        pcall(function() i.LineJoinMode = Enum.LineJoinMode.Round end)
        pcall(function() i.Name = "UIStroke" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.StrokeSizingMode = 0 end)
        pcall(function() i.Thickness = 1 end)
        pcall(function() i.Transparency = 0.4 end)
        pcall(function() i.ZIndex = 1 end)
        n[16] = i
    else
        warn("[xtw] failed to create UIStroke #16");
        n[16] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UICorner")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BottomLeftRadius = UDim.new(0,3) end)
        pcall(function() i.BottomRightRadius = UDim.new(0,3) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UICorner" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TopLeftRadius = UDim.new(0,3) end)
        pcall(function() i.TopRightRadius = UDim.new(0,3) end)
        n[17] = i
    else
        warn("[xtw] failed to create UICorner #17");
        n[17] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "ImageButton")
    if ok and i then
        pcall(function() i.Active = true end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoButtonColor = true end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.086275,0.086275,0.086275) end)
        pcall(function() i.BackgroundTransparency = 0.3 end)
        pcall(function() i.BorderColor3 = Color3.new(0.105882,0.164706,0.207843) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 1 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Image = "rbxassetid://10747384394" end)
        pcall(function() i.ImageColor3 = Color3.new(0.627451,0.627451,0.627451) end)
        pcall(function() i.ImageRectOffset = Vector2.new(0,0) end)
        pcall(function() i.ImageRectSize = Vector2.new(0,0) end)
        pcall(function() i.ImageTransparency = 0 end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.Modal = false end)
        pcall(function() i.Name = "CloseBtn" end)
        pcall(function() i.Position = UDim2.new(1,-26,0.5,-10) end)
        pcall(function() i.ResampleMode = 0 end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.ScaleType = Enum.ScaleType.Stretch end)
        pcall(function() i.Selectable = true end)
        pcall(function() i.Selected = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 1 end)
        pcall(function() i.Size = UDim2.new(0,20,0,20) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SliceScale = 1 end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.TileSize = UDim2.new(1,0,1,0) end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[18] = i
    else
        warn("[xtw] failed to create ImageButton #18");
        n[18] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UIStroke")
    if ok and i then
        pcall(function() i.ApplyStrokeMode = Enum.ApplyStrokeMode.Border end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BorderOffset = UDim.new(0,0) end)
        pcall(function() i.BorderStrokePosition = 0 end)
        pcall(function() i.Color = Color3.new(0.215686,0.215686,0.215686) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Enabled = true end)
        pcall(function() i.LineJoinMode = Enum.LineJoinMode.Round end)
        pcall(function() i.Name = "UIStroke" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.StrokeSizingMode = 0 end)
        pcall(function() i.Thickness = 1 end)
        pcall(function() i.Transparency = 0.4 end)
        pcall(function() i.ZIndex = 1 end)
        n[19] = i
    else
        warn("[xtw] failed to create UIStroke #19");
        n[19] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UICorner")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BottomLeftRadius = UDim.new(0,3) end)
        pcall(function() i.BottomRightRadius = UDim.new(0,3) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UICorner" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TopLeftRadius = UDim.new(0,3) end)
        pcall(function() i.TopRightRadius = UDim.new(0,3) end)
        n[20] = i
    else
        warn("[xtw] failed to create UICorner #20");
        n[20] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UICorner")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BottomLeftRadius = UDim.new(0,8) end)
        pcall(function() i.BottomRightRadius = UDim.new(0,8) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UICorner" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TopLeftRadius = UDim.new(0,8) end)
        pcall(function() i.TopRightRadius = UDim.new(0,8) end)
        n[21] = i
    else
        warn("[xtw] failed to create UICorner #21");
        n[21] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "Frame")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.639216,0.635294,0.647059) end)
        pcall(function() i.BackgroundTransparency = 1 end)
        pcall(function() i.BorderColor3 = Color3.new(0.105882,0.164706,0.207843) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 1 end)
        pcall(function() i.ClipsDescendants = true end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.Name = "ContentHolder" end)
        pcall(function() i.Position = UDim2.new(0,0,0,32) end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(1.23913,-110,1,-32) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[22] = i
    else
        warn("[xtw] failed to create Frame #22");
        n[22] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "Frame")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.078431,0.078431,0.078431) end)
        pcall(function() i.BackgroundTransparency = 0.35 end)
        pcall(function() i.BorderColor3 = Color3.new(0.105882,0.164706,0.207843) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 1 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 2 end)
        pcall(function() i.Name = "RadarCard" end)
        pcall(function() i.Position = UDim2.new(0.008696,0,0.023256,0) end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(1,-8,0.767442,48) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[23] = i
    else
        warn("[xtw] failed to create Frame #23");
        n[23] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UICorner")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BottomLeftRadius = UDim.new(0,4) end)
        pcall(function() i.BottomRightRadius = UDim.new(0,4) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UICorner" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TopLeftRadius = UDim.new(0,4) end)
        pcall(function() i.TopRightRadius = UDim.new(0,4) end)
        n[24] = i
    else
        warn("[xtw] failed to create UICorner #24");
        n[24] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UIStroke")
    if ok and i then
        pcall(function() i.ApplyStrokeMode = Enum.ApplyStrokeMode.Border end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BorderOffset = UDim.new(0,0) end)
        pcall(function() i.BorderStrokePosition = 0 end)
        pcall(function() i.Color = Color3.new(0.215686,0.215686,0.215686) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Enabled = true end)
        pcall(function() i.LineJoinMode = Enum.LineJoinMode.Round end)
        pcall(function() i.Name = "UIStroke" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.StrokeSizingMode = 0 end)
        pcall(function() i.Thickness = 1 end)
        pcall(function() i.Transparency = 0.4 end)
        pcall(function() i.ZIndex = 1 end)
        n[25] = i
    else
        warn("[xtw] failed to create UIStroke #25");
        n[25] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "Frame")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.105882,0.105882,0.105882) end)
        pcall(function() i.BackgroundTransparency = 0 end)
        pcall(function() i.BorderColor3 = Color3.new(0,0,0) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 0 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.Name = "Toggles" end)
        pcall(function() i.Position = UDim2.new(0.024259,0,0.055865,0) end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0,65,0,21) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[26] = i
    else
        warn("[xtw] failed to create Frame #26");
        n[26] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "LocalScript")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "Movement" end)
        pcall(function() i.RunContext = 0 end)
        pcall(function() i.ScriptGuid = "{23857964-7DBA-4C0C-BD56-C02EA729B607}" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Disabled = true end)
        n[27] = i
    else
        warn("[xtw] failed to create LocalScript #27");
        n[27] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "Frame")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(1,1,1) end)
        pcall(function() i.BackgroundTransparency = 0 end)
        pcall(function() i.BorderColor3 = Color3.new(0,0,0) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 0 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.Name = "ESP" end)
        pcall(function() i.Position = UDim2.new(0.035068,0,0.278693,0) end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0,51,0,22) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.Visible = false end)
        pcall(function() i.ZIndex = 1 end)
        n[28] = i
    else
        warn("[xtw] failed to create Frame #28");
        n[28] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "LocalScript")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "Function" end)
        pcall(function() i.RunContext = 0 end)
        pcall(function() i.ScriptGuid = "{3826B15F-28F8-458B-952E-DFED62B7340D}" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Disabled = true end)
        n[29] = i
    else
        warn("[xtw] failed to create LocalScript #29");
        n[29] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "TextButton")
    if ok and i then
        pcall(function() i.Active = true end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoButtonColor = false end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.047059,0.047059,0.047059) end)
        pcall(function() i.BackgroundTransparency = 0 end)
        pcall(function() i.BorderColor3 = Color3.new(0,0,0) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 0 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Font = Enum.Font.SourceSans end)
        pcall(function() i.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal) end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.LineHeight = 1 end)
        pcall(function() i.LocalizationMatchIdentifier = "" end)
        pcall(function() i.LocalizationMatchedSourceText = "" end)
        pcall(function() i.MaxVisibleGraphemes = -1 end)
        pcall(function() i.Modal = false end)
        pcall(function() i.Name = "Ball" end)
        pcall(function() i.OpenTypeFeatures = "" end)
        pcall(function() i.Position = UDim2.new(0,0,-0.008995,0) end)
        pcall(function() i.RichText = false end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = true end)
        pcall(function() i.Selected = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 1 end)
        pcall(function() i.Size = UDim2.new(0,22,0,22) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.Text = "" end)
        pcall(function() i.TextColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextDirection = 0 end)
        pcall(function() i.TextScaled = false end)
        pcall(function() i.TextSize = 14 end)
        pcall(function() i.TextStrokeColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextStrokeTransparency = 1 end)
        pcall(function() i.TextTransparency = 0 end)
        pcall(function() i.TextTruncate = Enum.TextTruncate.None end)
        pcall(function() i.TextWrapped = false end)
        pcall(function() i.TextXAlignment = Enum.TextXAlignment.Right end)
        pcall(function() i.TextYAlignment = Enum.TextYAlignment.Center end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 99 end)
        n[30] = i
    else
        warn("[xtw] failed to create TextButton #30");
        n[30] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UIStroke")
    if ok and i then
        pcall(function() i.ApplyStrokeMode = Enum.ApplyStrokeMode.Border end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BorderOffset = UDim.new(0,0) end)
        pcall(function() i.BorderStrokePosition = 0 end)
        pcall(function() i.Color = Color3.new(0.215686,0.215686,0.215686) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Enabled = true end)
        pcall(function() i.LineJoinMode = Enum.LineJoinMode.Round end)
        pcall(function() i.Name = "UIStroke" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.StrokeSizingMode = 0 end)
        pcall(function() i.Thickness = 1 end)
        pcall(function() i.Transparency = 0 end)
        pcall(function() i.ZIndex = 1 end)
        n[31] = i
    else
        warn("[xtw] failed to create UIStroke #31");
        n[31] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UICorner")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BottomLeftRadius = UDim.new(1,0) end)
        pcall(function() i.BottomRightRadius = UDim.new(1,0) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UICorner" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TopLeftRadius = UDim.new(1,0) end)
        pcall(function() i.TopRightRadius = UDim.new(1,0) end)
        n[32] = i
    else
        warn("[xtw] failed to create UICorner #32");
        n[32] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "TextLabel")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(1,1,1) end)
        pcall(function() i.BackgroundTransparency = 1 end)
        pcall(function() i.BorderColor3 = Color3.new(0,0,0) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 0 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Font = Enum.Font.Kalam end)
        pcall(function() i.FontFace = Font.new("rbxasset://fonts/families/Kalam.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal) end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.LineHeight = 1 end)
        pcall(function() i.LocalizationMatchIdentifier = "" end)
        pcall(function() i.LocalizationMatchedSourceText = "" end)
        pcall(function() i.MaxVisibleGraphemes = -1 end)
        pcall(function() i.Name = "Description" end)
        pcall(function() i.OpenTypeFeatures = "" end)
        pcall(function() i.Position = UDim2.new(1.117647,0,0,0) end)
        pcall(function() i.RichText = false end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0,190,0,22) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Text = "" end)
        pcall(function() i.TextColor3 = Color3.new(1,1,1) end)
        pcall(function() i.TextDirection = 0 end)
        pcall(function() i.TextScaled = false end)
        pcall(function() i.TextSize = 14 end)
        pcall(function() i.TextStrokeColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextStrokeTransparency = 1 end)
        pcall(function() i.TextTransparency = 0 end)
        pcall(function() i.TextTruncate = Enum.TextTruncate.None end)
        pcall(function() i.TextWrapped = false end)
        pcall(function() i.TextXAlignment = Enum.TextXAlignment.Right end)
        pcall(function() i.TextYAlignment = Enum.TextYAlignment.Center end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[33] = i
    else
        warn("[xtw] failed to create TextLabel #33");
        n[33] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UICorner")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BottomLeftRadius = UDim.new(1,0) end)
        pcall(function() i.BottomRightRadius = UDim.new(1,0) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UICorner" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TopLeftRadius = UDim.new(1,0) end)
        pcall(function() i.TopRightRadius = UDim.new(1,0) end)
        n[34] = i
    else
        warn("[xtw] failed to create UICorner #34");
        n[34] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "TextLabel")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(1,1,1) end)
        pcall(function() i.BackgroundTransparency = 1 end)
        pcall(function() i.BorderColor3 = Color3.new(0,0,0) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 0 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Font = Enum.Font.Kalam end)
        pcall(function() i.FontFace = Font.new("rbxasset://fonts/families/Kalam.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal) end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.LineHeight = 1 end)
        pcall(function() i.LocalizationMatchIdentifier = "" end)
        pcall(function() i.LocalizationMatchedSourceText = "" end)
        pcall(function() i.MaxVisibleGraphemes = -1 end)
        pcall(function() i.Name = "Title" end)
        pcall(function() i.OpenTypeFeatures = "" end)
        pcall(function() i.Position = UDim2.new(0,0,0,0) end)
        pcall(function() i.RichText = false end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0,65,0,21) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Text = "Toggles" end)
        pcall(function() i.TextColor3 = Color3.new(1,1,1) end)
        pcall(function() i.TextDirection = 0 end)
        pcall(function() i.TextScaled = false end)
        pcall(function() i.TextSize = 18 end)
        pcall(function() i.TextStrokeColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextStrokeTransparency = 1 end)
        pcall(function() i.TextTransparency = 0 end)
        pcall(function() i.TextTruncate = Enum.TextTruncate.None end)
        pcall(function() i.TextWrapped = true end)
        pcall(function() i.TextXAlignment = Enum.TextXAlignment.Right end)
        pcall(function() i.TextYAlignment = Enum.TextYAlignment.Center end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[35] = i
    else
        warn("[xtw] failed to create TextLabel #35");
        n[35] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "Frame")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(1,1,1) end)
        pcall(function() i.BackgroundTransparency = 0 end)
        pcall(function() i.BorderColor3 = Color3.new(0,0,0) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 0 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.Name = "FLY" end)
        pcall(function() i.Position = UDim2.new(0.035068,0,0.278693,0) end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0,51,0,22) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.Visible = false end)
        pcall(function() i.ZIndex = 1 end)
        n[36] = i
    else
        warn("[xtw] failed to create Frame #36");
        n[36] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "LocalScript")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "Function" end)
        pcall(function() i.RunContext = 0 end)
        pcall(function() i.ScriptGuid = "{15C86727-2FCA-4A97-92E7-5A823D6F9AF7}" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Disabled = true end)
        n[37] = i
    else
        warn("[xtw] failed to create LocalScript #37");
        n[37] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UICorner")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BottomLeftRadius = UDim.new(1,0) end)
        pcall(function() i.BottomRightRadius = UDim.new(1,0) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UICorner" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TopLeftRadius = UDim.new(1,0) end)
        pcall(function() i.TopRightRadius = UDim.new(1,0) end)
        n[38] = i
    else
        warn("[xtw] failed to create UICorner #38");
        n[38] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "TextButton")
    if ok and i then
        pcall(function() i.Active = true end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoButtonColor = false end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.047059,0.047059,0.047059) end)
        pcall(function() i.BackgroundTransparency = 0 end)
        pcall(function() i.BorderColor3 = Color3.new(0,0,0) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 0 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Font = Enum.Font.SourceSans end)
        pcall(function() i.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal) end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.LineHeight = 1 end)
        pcall(function() i.LocalizationMatchIdentifier = "" end)
        pcall(function() i.LocalizationMatchedSourceText = "" end)
        pcall(function() i.MaxVisibleGraphemes = -1 end)
        pcall(function() i.Modal = false end)
        pcall(function() i.Name = "Ball" end)
        pcall(function() i.OpenTypeFeatures = "" end)
        pcall(function() i.Position = UDim2.new(0,0,-0.008995,0) end)
        pcall(function() i.RichText = false end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = true end)
        pcall(function() i.Selected = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 1 end)
        pcall(function() i.Size = UDim2.new(0,22,0,22) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.Text = "" end)
        pcall(function() i.TextColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextDirection = 0 end)
        pcall(function() i.TextScaled = false end)
        pcall(function() i.TextSize = 14 end)
        pcall(function() i.TextStrokeColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextStrokeTransparency = 1 end)
        pcall(function() i.TextTransparency = 0 end)
        pcall(function() i.TextTruncate = Enum.TextTruncate.None end)
        pcall(function() i.TextWrapped = false end)
        pcall(function() i.TextXAlignment = Enum.TextXAlignment.Right end)
        pcall(function() i.TextYAlignment = Enum.TextYAlignment.Center end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 99 end)
        n[39] = i
    else
        warn("[xtw] failed to create TextButton #39");
        n[39] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UICorner")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BottomLeftRadius = UDim.new(1,0) end)
        pcall(function() i.BottomRightRadius = UDim.new(1,0) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UICorner" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TopLeftRadius = UDim.new(1,0) end)
        pcall(function() i.TopRightRadius = UDim.new(1,0) end)
        n[40] = i
    else
        warn("[xtw] failed to create UICorner #40");
        n[40] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UIStroke")
    if ok and i then
        pcall(function() i.ApplyStrokeMode = Enum.ApplyStrokeMode.Border end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BorderOffset = UDim.new(0,0) end)
        pcall(function() i.BorderStrokePosition = 0 end)
        pcall(function() i.Color = Color3.new(0.215686,0.215686,0.215686) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Enabled = true end)
        pcall(function() i.LineJoinMode = Enum.LineJoinMode.Round end)
        pcall(function() i.Name = "UIStroke" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.StrokeSizingMode = 0 end)
        pcall(function() i.Thickness = 1 end)
        pcall(function() i.Transparency = 0 end)
        pcall(function() i.ZIndex = 1 end)
        n[41] = i
    else
        warn("[xtw] failed to create UIStroke #41");
        n[41] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "TextLabel")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(1,1,1) end)
        pcall(function() i.BackgroundTransparency = 1 end)
        pcall(function() i.BorderColor3 = Color3.new(0,0,0) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 0 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Font = Enum.Font.Kalam end)
        pcall(function() i.FontFace = Font.new("rbxasset://fonts/families/Kalam.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal) end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.LineHeight = 1 end)
        pcall(function() i.LocalizationMatchIdentifier = "" end)
        pcall(function() i.LocalizationMatchedSourceText = "" end)
        pcall(function() i.MaxVisibleGraphemes = -1 end)
        pcall(function() i.Name = "Description" end)
        pcall(function() i.OpenTypeFeatures = "" end)
        pcall(function() i.Position = UDim2.new(1.117647,0,0,0) end)
        pcall(function() i.RichText = false end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0,190,0,22) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Text = "" end)
        pcall(function() i.TextColor3 = Color3.new(1,1,1) end)
        pcall(function() i.TextDirection = 0 end)
        pcall(function() i.TextScaled = false end)
        pcall(function() i.TextSize = 14 end)
        pcall(function() i.TextStrokeColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextStrokeTransparency = 1 end)
        pcall(function() i.TextTransparency = 0 end)
        pcall(function() i.TextTruncate = Enum.TextTruncate.None end)
        pcall(function() i.TextWrapped = false end)
        pcall(function() i.TextXAlignment = Enum.TextXAlignment.Right end)
        pcall(function() i.TextYAlignment = Enum.TextYAlignment.Center end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[42] = i
    else
        warn("[xtw] failed to create TextLabel #42");
        n[42] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "Frame")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(1,1,1) end)
        pcall(function() i.BackgroundTransparency = 0 end)
        pcall(function() i.BorderColor3 = Color3.new(0,0,0) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 0 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.Name = "TELEKINESIS" end)
        pcall(function() i.Position = UDim2.new(0.035068,0,0.278693,0) end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0,51,0,22) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.Visible = false end)
        pcall(function() i.ZIndex = 1 end)
        n[43] = i
    else
        warn("[xtw] failed to create Frame #43");
        n[43] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "LocalScript")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "Function" end)
        pcall(function() i.RunContext = 0 end)
        pcall(function() i.ScriptGuid = "{3AA7E32B-E531-4DA6-A775-5424A817264B}" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Disabled = true end)
        n[44] = i
    else
        warn("[xtw] failed to create LocalScript #44");
        n[44] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "TextButton")
    if ok and i then
        pcall(function() i.Active = true end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoButtonColor = false end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.047059,0.047059,0.047059) end)
        pcall(function() i.BackgroundTransparency = 0 end)
        pcall(function() i.BorderColor3 = Color3.new(0,0,0) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 0 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Font = Enum.Font.SourceSans end)
        pcall(function() i.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal) end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.LineHeight = 1 end)
        pcall(function() i.LocalizationMatchIdentifier = "" end)
        pcall(function() i.LocalizationMatchedSourceText = "" end)
        pcall(function() i.MaxVisibleGraphemes = -1 end)
        pcall(function() i.Modal = false end)
        pcall(function() i.Name = "Ball" end)
        pcall(function() i.OpenTypeFeatures = "" end)
        pcall(function() i.Position = UDim2.new(0,0,-0.008995,0) end)
        pcall(function() i.RichText = false end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = true end)
        pcall(function() i.Selected = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 1 end)
        pcall(function() i.Size = UDim2.new(0,22,0,22) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.Text = "" end)
        pcall(function() i.TextColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextDirection = 0 end)
        pcall(function() i.TextScaled = false end)
        pcall(function() i.TextSize = 14 end)
        pcall(function() i.TextStrokeColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextStrokeTransparency = 1 end)
        pcall(function() i.TextTransparency = 0 end)
        pcall(function() i.TextTruncate = Enum.TextTruncate.None end)
        pcall(function() i.TextWrapped = false end)
        pcall(function() i.TextXAlignment = Enum.TextXAlignment.Right end)
        pcall(function() i.TextYAlignment = Enum.TextYAlignment.Center end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 99 end)
        n[45] = i
    else
        warn("[xtw] failed to create TextButton #45");
        n[45] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UICorner")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BottomLeftRadius = UDim.new(1,0) end)
        pcall(function() i.BottomRightRadius = UDim.new(1,0) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UICorner" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TopLeftRadius = UDim.new(1,0) end)
        pcall(function() i.TopRightRadius = UDim.new(1,0) end)
        n[46] = i
    else
        warn("[xtw] failed to create UICorner #46");
        n[46] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UIStroke")
    if ok and i then
        pcall(function() i.ApplyStrokeMode = Enum.ApplyStrokeMode.Border end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BorderOffset = UDim.new(0,0) end)
        pcall(function() i.BorderStrokePosition = 0 end)
        pcall(function() i.Color = Color3.new(0.215686,0.215686,0.215686) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Enabled = true end)
        pcall(function() i.LineJoinMode = Enum.LineJoinMode.Round end)
        pcall(function() i.Name = "UIStroke" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.StrokeSizingMode = 0 end)
        pcall(function() i.Thickness = 1 end)
        pcall(function() i.Transparency = 0 end)
        pcall(function() i.ZIndex = 1 end)
        n[47] = i
    else
        warn("[xtw] failed to create UIStroke #47");
        n[47] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "TextLabel")
    if ok and i then
        pcall(function() i.Active = false end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(1,1,1) end)
        pcall(function() i.BackgroundTransparency = 1 end)
        pcall(function() i.BorderColor3 = Color3.new(0,0,0) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 0 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Font = Enum.Font.Kalam end)
        pcall(function() i.FontFace = Font.new("rbxasset://fonts/families/Kalam.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal) end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.LineHeight = 1 end)
        pcall(function() i.LocalizationMatchIdentifier = "" end)
        pcall(function() i.LocalizationMatchedSourceText = "" end)
        pcall(function() i.MaxVisibleGraphemes = -1 end)
        pcall(function() i.Name = "Description" end)
        pcall(function() i.OpenTypeFeatures = "" end)
        pcall(function() i.Position = UDim2.new(1.117647,0,0,0) end)
        pcall(function() i.RichText = false end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.Selectable = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 0 end)
        pcall(function() i.Size = UDim2.new(0,190,0,22) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Text = "" end)
        pcall(function() i.TextColor3 = Color3.new(1,1,1) end)
        pcall(function() i.TextDirection = 0 end)
        pcall(function() i.TextScaled = false end)
        pcall(function() i.TextSize = 14 end)
        pcall(function() i.TextStrokeColor3 = Color3.new(0,0,0) end)
        pcall(function() i.TextStrokeTransparency = 1 end)
        pcall(function() i.TextTransparency = 0 end)
        pcall(function() i.TextTruncate = Enum.TextTruncate.None end)
        pcall(function() i.TextWrapped = false end)
        pcall(function() i.TextXAlignment = Enum.TextXAlignment.Right end)
        pcall(function() i.TextYAlignment = Enum.TextYAlignment.Center end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[48] = i
    else
        warn("[xtw] failed to create TextLabel #48");
        n[48] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UICorner")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BottomLeftRadius = UDim.new(1,0) end)
        pcall(function() i.BottomRightRadius = UDim.new(1,0) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UICorner" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TopLeftRadius = UDim.new(1,0) end)
        pcall(function() i.TopRightRadius = UDim.new(1,0) end)
        n[49] = i
    else
        warn("[xtw] failed to create UICorner #49");
        n[49] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UIStroke")
    if ok and i then
        pcall(function() i.ApplyStrokeMode = Enum.ApplyStrokeMode.Border end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BorderOffset = UDim.new(0,0) end)
        pcall(function() i.BorderStrokePosition = 0 end)
        pcall(function() i.Color = Color3.new(0.215686,0.215686,0.215686) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Enabled = true end)
        pcall(function() i.LineJoinMode = Enum.LineJoinMode.Round end)
        pcall(function() i.Name = "UIStroke" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.StrokeSizingMode = 0 end)
        pcall(function() i.Thickness = 1 end)
        pcall(function() i.Transparency = 0.4 end)
        pcall(function() i.ZIndex = 1 end)
        n[50] = i
    else
        warn("[xtw] failed to create UIStroke #50");
        n[50] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UICorner")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BottomLeftRadius = UDim.new(0,3) end)
        pcall(function() i.BottomRightRadius = UDim.new(0,3) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UICorner" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TopLeftRadius = UDim.new(0,3) end)
        pcall(function() i.TopRightRadius = UDim.new(0,3) end)
        n[51] = i
    else
        warn("[xtw] failed to create UICorner #51");
        n[51] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UIStroke")
    if ok and i then
        pcall(function() i.ApplyStrokeMode = Enum.ApplyStrokeMode.Border end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BorderOffset = UDim.new(0,0) end)
        pcall(function() i.BorderStrokePosition = 0 end)
        pcall(function() i.Color = Color3.new(0.254902,0.254902,0.254902) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Enabled = true end)
        pcall(function() i.LineJoinMode = Enum.LineJoinMode.Round end)
        pcall(function() i.Name = "UIStroke" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.StrokeSizingMode = 0 end)
        pcall(function() i.Thickness = 1.2 end)
        pcall(function() i.Transparency = 0.2 end)
        pcall(function() i.ZIndex = 1 end)
        n[52] = i
    else
        warn("[xtw] failed to create UIStroke #52");
        n[52] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "ImageButton")
    if ok and i then
        pcall(function() i.Active = true end)
        pcall(function() i.AnchorPoint = Vector2.new(0,0) end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.AutoButtonColor = true end)
        pcall(function() i.AutoLocalize = true end)
        pcall(function() i.AutomaticSize = Enum.AutomaticSize.None end)
        pcall(function() i.BackgroundColor3 = Color3.new(0.054902,0.054902,0.054902) end)
        pcall(function() i.BackgroundTransparency = 0.2 end)
        pcall(function() i.BorderColor3 = Color3.new(0.105882,0.164706,0.207843) end)
        pcall(function() i.BorderMode = Enum.BorderMode.Outline end)
        pcall(function() i.BorderSizePixel = 1 end)
        pcall(function() i.ClipsDescendants = false end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Draggable = false end)
        pcall(function() i.Image = "rbxassetid://127461491551494" end)
        pcall(function() i.ImageColor3 = Color3.new(1,1,1) end)
        pcall(function() i.ImageRectOffset = Vector2.new(0,0) end)
        pcall(function() i.ImageRectSize = Vector2.new(0,0) end)
        pcall(function() i.ImageTransparency = 0 end)
        pcall(function() i.Interactable = true end)
        pcall(function() i.LayoutOrder = 0 end)
        pcall(function() i.Modal = false end)
        pcall(function() i.Name = "FloatingToggle" end)
        pcall(function() i.Position = UDim2.new(0,16,0.5,-17) end)
        pcall(function() i.ResampleMode = 0 end)
        pcall(function() i.Rotation = 0 end)
        pcall(function() i.ScaleType = Enum.ScaleType.Stretch end)
        pcall(function() i.Selectable = true end)
        pcall(function() i.Selected = false end)
        pcall(function() i.SelectionBehaviorDown = 0 end)
        pcall(function() i.SelectionBehaviorLeft = 0 end)
        pcall(function() i.SelectionBehaviorRight = 0 end)
        pcall(function() i.SelectionBehaviorUp = 0 end)
        pcall(function() i.SelectionGroup = false end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.Sink = 1 end)
        pcall(function() i.Size = UDim2.new(0,34,0,34) end)
        pcall(function() i.SizeConstraint = Enum.SizeConstraint.RelativeXY end)
        pcall(function() i.SliceScale = 1 end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.Style = Enum.ButtonStyle.Custom end)
        pcall(function() i.TileSize = UDim2.new(1,0,1,0) end)
        pcall(function() i.Visible = true end)
        pcall(function() i.ZIndex = 1 end)
        n[53] = i
    else
        warn("[xtw] failed to create ImageButton #53");
        n[53] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UIStroke")
    if ok and i then
        pcall(function() i.ApplyStrokeMode = Enum.ApplyStrokeMode.Border end)
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BorderOffset = UDim.new(0,0) end)
        pcall(function() i.BorderStrokePosition = 0 end)
        pcall(function() i.Color = Color3.new(0.235294,0.235294,0.235294) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Enabled = true end)
        pcall(function() i.LineJoinMode = Enum.LineJoinMode.Round end)
        pcall(function() i.Name = "UIStroke" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.StrokeSizingMode = 0 end)
        pcall(function() i.Thickness = 1 end)
        pcall(function() i.Transparency = 0.3 end)
        pcall(function() i.ZIndex = 1 end)
        n[54] = i
    else
        warn("[xtw] failed to create UIStroke #54");
        n[54] = Instance.new("Folder")
    end
end
do
    local ok, i = pcall(Instance.new, "UICorner")
    if ok and i then
        pcall(function() i.AttributesSerialize = "" end)
        pcall(function() i.BottomLeftRadius = UDim.new(0,17) end)
        pcall(function() i.BottomRightRadius = UDim.new(0,17) end)
        pcall(function() i.DefinesCapabilities = false end)
        pcall(function() i.Name = "UICorner" end)
        pcall(function() i.SerializedOverrides = "" end)
        pcall(function() i.SourceAssetId = -1 end)
        pcall(function() i.TopLeftRadius = UDim.new(0,17) end)
        pcall(function() i.TopRightRadius = UDim.new(0,17) end)
        n[55] = i
    else
        warn("[xtw] failed to create UICorner #55");
        n[55] = Instance.new("Folder")
    end
end

-- ==== 3. attach non-script tree ====
pcall(function() n[1].Parent = guiHost end)
pcall(function() n[3].Parent = n[1] end)
pcall(function() n[53].Parent = n[1] end)
pcall(function() n[6].Parent = n[3] end)
pcall(function() n[7].Parent = n[3] end)
pcall(function() n[22].Parent = n[3] end)
pcall(function() n[52].Parent = n[3] end)
pcall(function() n[54].Parent = n[53] end)
pcall(function() n[55].Parent = n[53] end)
pcall(function() n[8].Parent = n[7] end)
pcall(function() n[9].Parent = n[7] end)
pcall(function() n[10].Parent = n[7] end)
pcall(function() n[11].Parent = n[7] end)
pcall(function() n[18].Parent = n[7] end)
pcall(function() n[21].Parent = n[7] end)
pcall(function() n[23].Parent = n[22] end)
pcall(function() n[26].Parent = n[22] end)
pcall(function() n[12].Parent = n[11] end)
pcall(function() n[14].Parent = n[11] end)
pcall(function() n[16].Parent = n[11] end)
pcall(function() n[17].Parent = n[11] end)
pcall(function() n[19].Parent = n[18] end)
pcall(function() n[20].Parent = n[18] end)
pcall(function() n[24].Parent = n[23] end)
pcall(function() n[25].Parent = n[23] end)
pcall(function() n[28].Parent = n[26] end)
pcall(function() n[35].Parent = n[26] end)
pcall(function() n[36].Parent = n[26] end)
pcall(function() n[43].Parent = n[26] end)
pcall(function() n[50].Parent = n[26] end)
pcall(function() n[51].Parent = n[26] end)
pcall(function() n[30].Parent = n[28] end)
pcall(function() n[33].Parent = n[28] end)
pcall(function() n[34].Parent = n[28] end)
pcall(function() n[38].Parent = n[36] end)
pcall(function() n[39].Parent = n[36] end)
pcall(function() n[42].Parent = n[36] end)
pcall(function() n[45].Parent = n[43] end)
pcall(function() n[48].Parent = n[43] end)
pcall(function() n[49].Parent = n[43] end)
pcall(function() n[31].Parent = n[30] end)
pcall(function() n[32].Parent = n[30] end)
pcall(function() n[40].Parent = n[39] end)
pcall(function() n[41].Parent = n[39] end)
pcall(function() n[46].Parent = n[45] end)
pcall(function() n[47].Parent = n[45] end)

-- ==== 6. arm runnable scripts ====
local compiled = 0
local compiledFail = 0
local ranManual = 0
local manualFail = 0
local compileErrors = {}
local runErrors = {}
do
    local s_2 = n[2]
    local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIlVJQ29udHJvbGxlciIsICJMb2NhbFNjcmlwdCIKbG9jYWwgX194dHdfc2VsZiA9IG5pbApwY2FsbChmdW5jdGlvbigpIF9feHR3X3NlbGYgPSBzY3JpcHQgZW5kKQppZiBfX3h0d19zZWxmIGFuZCBfX3h0d19zZWxmLlNldEF0dHJpYnV0ZSB0aGVuCiAgICBwY2FsbChmdW5jdGlvbigpIF9feHR3X3NlbGY6U2V0QXR0cmlidXRlKCJ4dHdfcmFuIiwgdHJ1ZSkgZW5kKQplbmQKbG9jYWwgX194dHdfb2ssIF9feHR3X2VyciA9IHhwY2FsbChmdW5jdGlvbigpCmxvY2FsIFBsYXllcnMgPSBnYW1lOkdldFNlcnZpY2UoIlBsYXllcnMiKQpsb2NhbCBVc2VySW5wdXRTZXJ2aWNlID0gZ2FtZTpHZXRTZXJ2aWNlKCJVc2VySW5wdXRTZXJ2aWNlIikKbG9jYWwgTG9jYWxQbGF5ZXIgPSBQbGF5ZXJzLkxvY2FsUGxheWVyIG9yIFBsYXllcnMuUGxheWVyQWRkZWQ6V2FpdCgpCgotLSA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KLS0gQ09ORklHOiBzZXQgdGhpcyB0byB0aGUgZXhhY3QgTmFtZSBvZiB5b3VyIFNjcmVlbkd1aS4KLS0gTGVhdmUgbmlsIHRvIGF1dG8tZmluZCBpdCAobG9va3MgZm9yIGEgU2NyZWVuR3VpIHRoYXQgaGFzIGEKLS0gIk1vZHVsZXMiIGZvbGRlciB3aXRoIHRoZSBleHBlY3RlZCBNb2R1bGVTY3JpcHRzKS4KLS0gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CmxvY2FsIFNDUkVFTl9HVUlfTkFNRSA9IG5pbAoKLS0gLS0tLS0tLS0tLSBGSU5EIFRIRSBTQ1JFRU4gR1VJIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmxvY2FsIGZ1bmN0aW9uIGZpbmRTY3JlZW5HdWkoKQoJbG9jYWwgcGcgPSBMb2NhbFBsYXllcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlBsYXllckd1aSIpCglpZiBub3QgcGcgdGhlbgoJCXBnID0gTG9jYWxQbGF5ZXI6V2FpdEZvckNoaWxkKCJQbGF5ZXJHdWkiLCAxMCkKCWVuZAoJaWYgbm90IHBnIHRoZW4gcmV0dXJuIG5pbCBlbmQKCgktLSBFeHBsaWNpdCBuYW1lIGZpcnN0CglpZiBTQ1JFRU5fR1VJX05BTUUgdGhlbgoJCWxvY2FsIGcgPSBwZzpGaW5kRmlyc3RDaGlsZChTQ1JFRU5fR1VJX05BTUUpCgkJaWYgZyBhbmQgZzpJc0EoIlNjcmVlbkd1aSIpIHRoZW4gcmV0dXJuIGcgZW5kCgllbmQKCgktLSBBdXRvOiBhIFNjcmVlbkd1aSB0aGF0IGhhcyBNb2R1bGVzIHdpdGggdGhlIGV4cGVjdGVkIGNoaWxkcmVuCglsb2NhbCByZXF1aXJlZE1vZHVsZXMgPSB7CgkJIkhlbHBlcnMiLCAiVGVsZW1ldHJ5IiwgIkRyYWdDb250cm9sbGVyIiwgIlRhYnNDb250cm9sbGVyIiwKCQkiRGFzaGJvYXJkIiwgIkFkZG9uc1N0b3JlIiwgIlZpc3VhbHMiLCAiU2V0dGluZ3MiLAoJfQoKCWxvY2FsIGJlc3QsIGJlc3RTY29yZSA9IG5pbCwgMAoJZm9yIF8sIGcgaW4gaXBhaXJzKHBnOkdldENoaWxkcmVuKCkpIGRvCgkJaWYgZzpJc0EoIlNjcmVlbkd1aSIpIHRoZW4KCQkJbG9jYWwgbW9kdWxlcyA9IGc6RmluZEZpcnN0Q2hpbGQoIk1vZHVsZXMiKQoJCQlpZiBtb2R1bGVzIHRoZW4KCQkJCWxvY2FsIHNjb3JlID0gMAoJCQkJZm9yIF8sIG5hbWUgaW4gaXBhaXJzKHJlcXVpcmVkTW9kdWxlcykgZG8KCQkJCQlpZiBtb2R1bGVzOkZpbmRGaXJzdENoaWxkKG5hbWUpIHRoZW4KCQkJCQkJc2NvcmUgKz0gMQoJCQkJCWVuZAoJCQkJZW5kCgkJCQlpZiBzY29yZSA+IGJlc3RTY29yZSB0aGVuCgkJCQkJYmVzdCwgYmVzdFNjb3JlID0gZywgc2NvcmUKCQkJCWVuZAoJCQkJLS0gUGVyZmVjdCBtYXRjaDogYmFpbCBlYXJseQoJCQkJaWYgc2NvcmUgPT0gI3JlcXVpcmVkTW9kdWxlcyB0aGVuCgkJCQkJcmV0dXJuIGcKCQkJCWVuZAoJCQllbmQKCQllbmQKCWVuZAoJcmV0dXJuIGJlc3QKZW5kCgpsb2NhbCBTY3JlZW5HdWkgPSBmaW5kU2NyZWVuR3VpKCkKaWYgbm90IFNjcmVlbkd1aSB0aGVuCgl3YXJuKCJbTG9hZF0gQ291bGQgbm90IGZpbmQgdGhlIFNjcmVlbkd1aS4gU2V0IFNDUkVFTl9HVUlfTkFNRSBhdCB0aGUgdG9wIHRvIGl0cyBleGFjdCBOYW1lLiIpCglyZXR1cm4KZW5kCgpwcmludCgiW0xvYWRdIFVzaW5nIFNjcmVlbkd1aTogIiAuLiBTY3JlZW5HdWk6R2V0RnVsbE5hbWUoKSkKCi0tIC0tLS0tLS0tLS0gUkVTVCBPRiBUSEUgU0NSSVBUICh1bmNoYW5nZWQpIC0tLS0tLS0tLS0tLS0tLS0tLS0KbG9jYWwgTW9kdWxlcyA9IFNjcmVlbkd1aTpXYWl0Rm9yQ2hpbGQoIk1vZHVsZXMiKQoKbG9jYWwgSGVscGVycyAgICAgICAgPSByZXF1aXJlKE1vZHVsZXM6V2FpdEZvckNoaWxkKCJIZWxwZXJzIikpCmxvY2FsIFRlbGVtZXRyeSAgICAgID0gcmVxdWlyZShNb2R1bGVzOldhaXRGb3JDaGlsZCgiVGVsZW1ldHJ5IikpCmxvY2FsIERyYWdDb250cm9sbGVyID0gcmVxdWlyZShNb2R1bGVzOldhaXRGb3JDaGlsZCgiRHJhZ0NvbnRyb2xsZXIiKSkKbG9jYWwgVGFic0NvbnRyb2xsZXIgPSByZXF1aXJlKE1vZHVsZXM6V2FpdEZvckNoaWxkKCJUYWJzQ29udHJvbGxlciIpKQpsb2NhbCBEYXNoYm9hcmQgICAgICA9IHJlcXVpcmUoTW9kdWxlczpXYWl0Rm9yQ2hpbGQoIkRhc2hib2FyZCIpKQpsb2NhbCBBZGRvbnNTdG9yZSAgICA9IHJlcXVpcmUoTW9kdWxlczpXYWl0Rm9yQ2hpbGQoIkFkZG9uc1N0b3JlIikpCmxvY2FsIFZpc3VhbHMgICAgICAgID0gcmVxdWlyZShNb2R1bGVzOldhaXRGb3JDaGlsZCgiVmlzdWFscyIpKQpsb2NhbCBTZXR0aW5ncyAgICAgICA9IHJlcXVpcmUoTW9kdWxlczpXYWl0Rm9yQ2hpbGQoIlNldHRpbmdzIikpCgpsb2NhbCBNYWluRnJhbWUgICAgICAgPSBTY3JlZW5HdWk6V2FpdEZvckNoaWxkKCJNYWluRnJhbWUiKQpsb2NhbCBUb3BCYXIgICAgICAgICAgPSBNYWluRnJhbWU6V2FpdEZvckNoaWxkKCJUb3BCYXIiKQpsb2NhbCBTaWRlYmFyICAgICAgICAgPSBNYWluRnJhbWU6V2FpdEZvckNoaWxkKCJTaWRlYmFyIikKbG9jYWwgQ29udGVudEhvbGRlciAgID0gTWFpbkZyYW1lOldhaXRGb3JDaGlsZCgiQ29udGVudEhvbGRlciIpCmxvY2FsIEZsb2F0aW5nVG9nZ2xlICA9IFNjcmVlbkd1aTpXYWl0Rm9yQ2hpbGQoIkZsb2F0aW5nVG9nZ2xlIikKbG9jYWwgTm90aWZDb250YWluZXIgID0gU2NyZWVuR3VpOldhaXRGb3JDaGlsZCgiTm90aWZpY2F0aW9uQ29udGFpbmVyIikKClRlbGVtZXRyeS5Jbml0KFRvcEJhcikKRHJhZ0NvbnRyb2xsZXIuSW5pdChIZWxwZXJzLCBNYWluRnJhbWUsIFRvcEJhcikKVGFic0NvbnRyb2xsZXIuSW5pdChIZWxwZXJzLCBTaWRlYmFyLCBDb250ZW50SG9sZGVyKQpEYXNoYm9hcmQuSW5pdChIZWxwZXJzLCBDb250ZW50SG9sZGVyLCBMb2NhbFBsYXllcikKQWRkb25zU3RvcmUuSW5pdChIZWxwZXJzLCBNb2R1bGVzLCBDb250ZW50SG9sZGVyLCBOb3RpZkNvbnRhaW5lciwgRGFzaGJvYXJkLCBTY3JlZW5HdWkpClZpc3VhbHMuSW5pdChIZWxwZXJzLCBDb250ZW50SG9sZGVyKQpTZXR0aW5ncy5Jbml0KEhlbHBlcnMsIENvbnRlbnRIb2xkZXIsIExvY2FsUGxheWVyKQoKbG9jYWwgSXNWaXNpYmxlID0gdHJ1ZQpsb2NhbCBmdW5jdGlvbiBTZXRWaXNpYmxlKHZpc2libGUpCglJc1Zpc2libGUgPSB2aXNpYmxlCglpZiB2aXNpYmxlIHRoZW4KCQlNYWluRnJhbWUuUG9zaXRpb24gPSBVRGltMi5uZXcoMC41LCAwLCAwLjUsIDApCgkJTWFpbkZyYW1lLlZpc2libGUgPSB0cnVlCgkJSGVscGVycy5Ud2VlbihNYWluRnJhbWUsIHtTaXplID0gVURpbTIubmV3KDAsIDQ2MCwgMCwgMjkwKSwgQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDAuMTV9LCAwLjI1LCBFbnVtLkVhc2luZ1N0eWxlLkJhY2spCgkJSGVscGVycy5Ud2VlbihGbG9hdGluZ1RvZ2dsZSwge0JhY2tncm91bmRDb2xvcjMgPSBIZWxwZXJzLlRIRU1FLldoaXRlLCBJbWFnZUNvbG9yMyA9IENvbG9yMy5mcm9tUkdCKDAsIDAsIDApfSwgMC4yKQoJZWxzZQoJCWxvY2FsIG91dCA9IEhlbHBlcnMuVHdlZW4oTWFpbkZyYW1lLCB7U2l6ZSA9IFVEaW0yLm5ldygwLCA0MjAsIDAsIDI2MCksIEJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxfSwgMC4xOCwgRW51bS5FYXNpbmdTdHlsZS5RdWFkLCBFbnVtLkVhc2luZ0RpcmVjdGlvbi5JbikKCQlvdXQuQ29tcGxldGVkOkNvbm5lY3QoZnVuY3Rpb24oKSBpZiBub3QgSXNWaXNpYmxlIHRoZW4gTWFpbkZyYW1lLlZpc2libGUgPSBmYWxzZSBlbmQgZW5kKQoJCUhlbHBlcnMuVHdlZW4oRmxvYXRpbmdUb2dnbGUsIHtCYWNrZ3JvdW5kQ29sb3IzID0gQ29sb3IzLmZyb21SR0IoMTQsIDE0LCAxNCksIEltYWdlQ29sb3IzID0gSGVscGVycy5USEVNRS5XaGl0ZX0sIDAuMikKCWVuZAplbmQKCkZsb2F0aW5nVG9nZ2xlLk1vdXNlQnV0dG9uMUNsaWNrOkNvbm5lY3QoZnVuY3Rpb24oKSBTZXRWaXNpYmxlKG5vdCBJc1Zpc2libGUpIGVuZCkKVG9wQmFyOldhaXRGb3JDaGlsZCgiQ2xvc2VCdG4iKS5Nb3VzZUJ1dHRvbjFDbGljazpDb25uZWN0KGZ1bmN0aW9uKCkgU2V0VmlzaWJsZShmYWxzZSkgZW5kKQoKVXNlcklucHV0U2VydmljZS5JbnB1dEJlZ2FuOkNvbm5lY3QoZnVuY3Rpb24oaW5wdXQsIGdwZSkKCWlmIG5vdCBncGUgYW5kIGlucHV0LktleUNvZGUgPT0gRW51bS5LZXlDb2RlLlJpZ2h0Q29udHJvbCB0aGVuIFNldFZpc2libGUobm90IElzVmlzaWJsZSkgZW5kCmVuZCkKCmxvY2FsIGZpcnN0QnRuID0gU2lkZWJhcjpGaW5kRmlyc3RDaGlsZCgiRGFzaGJvYXJkX1RhYkJ0biIpCmlmIGZpcnN0QnRuIHRoZW4KCXRhc2suc3Bhd24oZnVuY3Rpb24oKQoJCXRhc2sud2FpdCgwLjA1KQoJCVRhYnNDb250cm9sbGVyLlN3aXRjaFRhYigiRGFzaGJvYXJkIiwgZmlyc3RCdG4pCgllbmQpCmVuZAplbmQsIGZ1bmN0aW9uKGUpCiAgICBsb2NhbCB0YiA9ICIiCiAgICBwY2FsbChmdW5jdGlvbigpIHRiID0gZGVidWcudHJhY2ViYWNrKCIiLCAyKSBlbmQpCiAgICByZXR1cm4gdG9zdHJpbmcoZSkgLi4gIlxuIiAuLiB0YgplbmQpCmlmIG5vdCBfX3h0d19vayB0aGVuCiAgICBsb2NhbCBlcnJTdHIgPSB0b3N0cmluZyhfX3h0d19lcnIpCiAgICBpZiBfX3h0d19zZWxmIGFuZCBfX3h0d19zZWxmLlNldEF0dHJpYnV0ZSB0aGVuCiAgICAgICAgcGNhbGwoZnVuY3Rpb24oKSBfX3h0d19zZWxmOlNldEF0dHJpYnV0ZSgieHR3X2Vycm9yIiwgZXJyU3RyKSBlbmQpCiAgICBlbmQKICAgIHBjYWxsKGZ1bmN0aW9uKCkgd2FybigiW3h0d10gRkFJTDogIiAuLiBfX3h0d19uYW1lIC4uICIgKCIgLi4gX194dHdfY2xzIC4uICIpOiAiIC4uIGVyclN0cikgZW5kKQplbmQ=")
    local fn, cerr = loadstring(src, "@xtw:" .. tostring(s_2.Name))
    if not fn then
        compiledFail = compiledFail + 1
        compileErrors[#compileErrors + 1] = "UIController (LocalScript): " .. tostring(cerr)
    else
        compiled = compiled + 1
        pcall(function() s_2.Source = src end)
        pcall(function() s_2.Parent = n[1] end)
        pcall(function() s_2.Disabled = false end)
    end
end
do
    local s_4 = n[4]
    local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkJhY2tncm91bmQiLCAiTG9jYWxTY3JpcHQiCmxvY2FsIF9feHR3X3NlbGYgPSBuaWwKcGNhbGwoZnVuY3Rpb24oKSBfX3h0d19zZWxmID0gc2NyaXB0IGVuZCkKaWYgX194dHdfc2VsZiBhbmQgX194dHdfc2VsZi5TZXRBdHRyaWJ1dGUgdGhlbgogICAgcGNhbGwoZnVuY3Rpb24oKSBfX3h0d19zZWxmOlNldEF0dHJpYnV0ZSgieHR3X3JhbiIsIHRydWUpIGVuZCkKZW5kCmxvY2FsIF9feHR3X29rLCBfX3h0d19lcnIgPSB4cGNhbGwoZnVuY3Rpb24oKQpsb2NhbCBVc2VySW5wdXRTZXJ2aWNlID0gZ2FtZTpHZXRTZXJ2aWNlKCJVc2VySW5wdXRTZXJ2aWNlIikKbG9jYWwgUnVuU2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiUnVuU2VydmljZSIpCgpsb2NhbCBGUkFNRV9OQU1FID0gbmlsCgpsb2NhbCBmdW5jdGlvbiBnZXRFbnYoKQoJbG9jYWwgb2ssIGUgPSBwY2FsbChmdW5jdGlvbigpIHJldHVybiBnZXRnZW52IGFuZCBnZXRnZW52KCkgZW5kKQoJaWYgb2sgYW5kIHR5cGUoZSkgPT0gInRhYmxlIiB0aGVuIHJldHVybiBlIGVuZAoJcmV0dXJuIF9HCmVuZApsb2NhbCBlbnYgPSBnZXRFbnYoKQoKbG9jYWwgZ3VpID0gbmlsCgppZiBlbnYgYW5kIGVudi5YVFdfUkFEQVJfVEFSR0VUIHRoZW4KCWxvY2FsIHQgPSBlbnYuWFRXX1JBREFSX1RBUkdFVAoJaWYgdHlwZW9mKHQpID09ICJJbnN0YW5jZSIgYW5kIHQ6SXNBKCJHdWlPYmplY3QiKSB0aGVuCgkJZ3VpID0gdAoJZW5kCmVuZAoKaWYgbm90IGd1aSBhbmQgRlJBTUVfTkFNRSB0aGVuCglsb2NhbCBwbGF5ZXIgPSBnYW1lOkdldFNlcnZpY2UoIlBsYXllcnMiKS5Mb2NhbFBsYXllcgoJbG9jYWwgcGcgPSBwbGF5ZXI6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJQbGF5ZXJHdWkiKQoJaWYgcGcgdGhlbgoJCWZvciBfLCBkIGluIGlwYWlycyhwZzpHZXREZXNjZW5kYW50cygpKSBkbwoJCQlpZiBkOklzQSgiR3VpT2JqZWN0IikgYW5kIGQuTmFtZSA9PSBGUkFNRV9OQU1FIHRoZW4KCQkJCWd1aSA9IGQKCQkJCWJyZWFrCgkJCWVuZAoJCWVuZAoJZW5kCmVuZAoKaWYgbm90IGd1aSB0aGVuCglwY2FsbChmdW5jdGlvbigpCgkJbG9jYWwgcCA9IHNjcmlwdCBhbmQgc2NyaXB0LlBhcmVudAoJCWlmIHAgYW5kIHA6SXNBKCJHdWlPYmplY3QiKSB0aGVuCgkJCWd1aSA9IHAKCQllbmQKCWVuZCkKZW5kCgppZiBub3QgZ3VpIHRoZW4KCWxvY2FsIHBsYXllciA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpLkxvY2FsUGxheWVyCglsb2NhbCBwZyA9IHBsYXllcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlBsYXllckd1aSIpCglpZiBwZyB0aGVuCgkJZm9yIF8sIGQgaW4gaXBhaXJzKHBnOkdldERlc2NlbmRhbnRzKCkpIGRvCgkJCWlmIGQ6SXNBKCJHdWlPYmplY3QiKSBhbmQgZDpGaW5kRmlyc3RDaGlsZCgiQ29udGVudEhvbGRlciIsIHRydWUpIHRoZW4KCQkJCWxvY2FsIGNoID0gZDpGaW5kRmlyc3RDaGlsZCgiQ29udGVudEhvbGRlciIsIHRydWUpCgkJCQlpZiBjaCBhbmQgY2g6RmluZEZpcnN0Q2hpbGQoIlJhZGFyQ2FyZCIpIHRoZW4KCQkJCQlndWkgPSBkCgkJCQkJYnJlYWsKCQkJCWVuZAoJCQllbmQKCQllbmQKCWVuZAplbmQKCmlmIG5vdCBndWkgdGhlbgoJd2FybigiW1JhZGFyXSBObyB0YXJnZXQgZnJhbWUuIikKCXJldHVybgplbmQKCmlmIGVudi5YVFdfUkFEQVJfSEIgdGhlbgoJcGNhbGwoZnVuY3Rpb24oKSBlbnYuWFRXX1JBREFSX0hCOkRpc2Nvbm5lY3QoKSBlbmQpCmVuZAoKbG9jYWwgY2FyZCA9IGd1aTpXYWl0Rm9yQ2hpbGQoIkNvbnRlbnRIb2xkZXIiKTpXYWl0Rm9yQ2hpbGQoIlJhZGFyQ2FyZCIpCgpsb2NhbCBwb2ludGVyRG93biA9IGZhbHNlCgpVc2VySW5wdXRTZXJ2aWNlLklucHV0QmVnYW46Q29ubmVjdChmdW5jdGlvbihpbnB1dCkKCWlmIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLk1vdXNlQnV0dG9uMSBvciBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Ub3VjaCB0aGVuCgkJcG9pbnRlckRvd24gPSB0cnVlCgllbmQKZW5kKQoKVXNlcklucHV0U2VydmljZS5JbnB1dEVuZGVkOkNvbm5lY3QoZnVuY3Rpb24oaW5wdXQpCglpZiBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Nb3VzZUJ1dHRvbjEgb3IgaW5wdXQuVXNlcklucHV0VHlwZSA9PSBFbnVtLlVzZXJJbnB1dFR5cGUuVG91Y2ggdGhlbgoJCXBvaW50ZXJEb3duID0gZmFsc2UKCWVuZAplbmQpCgpsb2NhbCBybmcgPSBSYW5kb20ubmV3KCkKbG9jYWwgY2xvY2sgPSAwCmxvY2FsIFNUQVJfQ09VTlQgPSA2NApsb2NhbCBNQVhfU1RBUl9PRkZTRVQgPSAxMApsb2NhbCBNRVRFT1JfUFVTSF9TVFJFTkdUSCA9IDI2MDAKbG9jYWwgTUVURU9SX1BVU0hfRElTVCA9IDM0CgpjYXJkLkNsaXBzRGVzY2VuZGFudHMgPSB0cnVlCgpsb2NhbCBzdGFyRmllbGQgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKc3RhckZpZWxkLk5hbWUgPSAiU3RhckZpZWxkIgpzdGFyRmllbGQuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKc3RhckZpZWxkLlNpemUgPSBVRGltMi5mcm9tU2NhbGUoMSwgMSkKc3RhckZpZWxkLlpJbmRleCA9IDAKc3RhckZpZWxkLkFjdGl2ZSA9IGZhbHNlCnN0YXJGaWVsZC5QYXJlbnQgPSBjYXJkCgpsb2NhbCBzY2FsZVByb2JlID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCnNjYWxlUHJvYmUuTmFtZSA9ICJTY2FsZVByb2JlIgpzY2FsZVByb2JlLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxCnNjYWxlUHJvYmUuQm9yZGVyU2l6ZVBpeGVsID0gMApzY2FsZVByb2JlLlBvc2l0aW9uID0gVURpbTIuZnJvbU9mZnNldCgwLCAwKQpzY2FsZVByb2JlLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KDEwMCwgMTAwKQpzY2FsZVByb2JlLkFjdGl2ZSA9IGZhbHNlCnNjYWxlUHJvYmUuVmlzaWJsZSA9IGZhbHNlCnNjYWxlUHJvYmUuUGFyZW50ID0gc3RhckZpZWxkCgpsb2NhbCBmdW5jdGlvbiBnZXRGaWVsZFNjYWxlKCkKCWxvY2FsIHMgPSBzY2FsZVByb2JlLkFic29sdXRlU2l6ZS5YIC8gMTAwCglpZiBzID4gMC4wNSBhbmQgcyA8IDIwIHRoZW4KCQlyZXR1cm4gcwoJZW5kCglyZXR1cm4gMQplbmQKCmxvY2FsIHN0YXJQYWxldHRlID0gewoJQ29sb3IzLmZyb21SR0IoMjU1LCAyNTUsIDI1NSksCglDb2xvcjMuZnJvbVJHQigyNTUsIDI1NSwgMjU1KSwKCUNvbG9yMy5mcm9tUkdCKDIxNCwgMjI2LCAyNTUpLAoJQ29sb3IzLmZyb21SR0IoMjU1LCAyNDQsIDIxNCksCglDb2xvcjMuZnJvbVJHQigxOTAsIDIxMCwgMjU1KSwKfQoKbG9jYWwgc3RhcnMgPSB7fQpsb2NhbCBzaG9vdGluZ1N0YXJzID0ge30KbG9jYWwgc3BhcmtzID0ge30KCmxvY2FsIGZ1bmN0aW9uIG1ha2VSYXkocGFyZW50LCBsZW5ndGgsIHJvdGF0aW9uLCBjb2xvcikKCWxvY2FsIHJheSA9IEluc3RhbmNlLm5ldygiRnJhbWUiKQoJcmF5LkFuY2hvclBvaW50ID0gVmVjdG9yMi5uZXcoMC41LCAwLjUpCglyYXkuUG9zaXRpb24gPSBVRGltMi5mcm9tU2NhbGUoMC41LCAwLjUpCglyYXkuUm90YXRpb24gPSByb3RhdGlvbgoJcmF5LlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KGxlbmd0aCwgMSkKCXJheS5CYWNrZ3JvdW5kQ29sb3IzID0gY29sb3IKCXJheS5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJcmF5LkJvcmRlclNpemVQaXhlbCA9IDAKCXJheS5aSW5kZXggPSAwCglyYXkuUGFyZW50ID0gcGFyZW50CgoJbG9jYWwgZ3JhZGllbnQgPSBJbnN0YW5jZS5uZXcoIlVJR3JhZGllbnQiKQoJZ3JhZGllbnQuVHJhbnNwYXJlbmN5ID0gTnVtYmVyU2VxdWVuY2UubmV3KHsKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLCAxKSwKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjUsIDApLAoJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDEsIDEpLAoJfSkKCWdyYWRpZW50LlBhcmVudCA9IHJheQoKCXJldHVybiByYXkKZW5kCgpsb2NhbCBmdW5jdGlvbiBsZXJwQW5nbGUoYSwgYiwgbSkKCWxvY2FsIGRpZmYgPSAoYiAtIGEgKyAxODApICUgMzYwIC0gMTgwCglyZXR1cm4gYSArIGRpZmYgKiBtCmVuZAoKbG9jYWwgZnVuY3Rpb24gcmVyb2xsU3RhcihkYXRhKQoJbG9jYWwgaXNCcmlnaHQgPSBybmc6TmV4dE51bWJlcigpIDwgMC4xCglsb2NhbCBkZXB0aCA9IHJuZzpOZXh0TnVtYmVyKCkKCglkYXRhLmRlcHRoID0gZGVwdGgKCWRhdGEuaXNCcmlnaHQgPSBpc0JyaWdodAoKCWxvY2FsIHJhd1NpemUKCWlmIGlzQnJpZ2h0IHRoZW4KCQlyYXdTaXplID0gcm5nOk5leHROdW1iZXIoMi4yLCAzKQoJZWxzZQoJCWxvY2FsIHIgPSBybmc6TmV4dE51bWJlcigpCgkJcmF3U2l6ZSA9IDEgKyByICogciAqIDEuMwoJZW5kCglsb2NhbCBzaXplID0gbWF0aC5tYXgoMC44LCByYXdTaXplICogKDAuNiArIGRlcHRoICogMC44KSkKCglkYXRhLmJhc2VTaXplID0gc2l6ZQoJZGF0YS5jb2xvciA9IHN0YXJQYWxldHRlW3JuZzpOZXh0SW50ZWdlcigxLCAjc3RhclBhbGV0dGUpXQoJZGF0YS5iYXNlVHJhbnNwYXJlbmN5ID0gbWF0aC5jbGFtcCgKCQkoaXNCcmlnaHQgYW5kIHJuZzpOZXh0TnVtYmVyKDAuMywgMC41NSkgb3Igcm5nOk5leHROdW1iZXIoMC41NSwgMC44NSkpICsgKDEgLSBkZXB0aCkgKiAwLjE1LAoJCTAuMSwgMC45NQoJKQoJZGF0YS5hbmNob3IgPSBWZWN0b3IyLm5ldyhybmc6TmV4dE51bWJlcigwLjA0LCAwLjk2KSwgcm5nOk5leHROdW1iZXIoMC4wNCwgMC45NikpCglkYXRhLm1hc3MgPSAwLjUgKyAoc2l6ZSAvIDMpIF4gMiAqIDMKCWRhdGEuc3RpZmYgPSBpc0JyaWdodCBhbmQgcm5nOk5leHROdW1iZXIoNTUsIDg1KSBvciBybmc6TmV4dE51bWJlcigxMTAsIDE3MCkKCWRhdGEuZGFtcCA9IGlzQnJpZ2h0IGFuZCBybmc6TmV4dE51bWJlcigxLjYsIDIuOCkgb3Igcm5nOk5leHROdW1iZXIoMywgNS41KQoJZGF0YS5vZmYgPSBWZWN0b3IyLnplcm8KCWRhdGEudmVsID0gVmVjdG9yMi56ZXJvCglkYXRhLnB1c2hPZmYgPSBWZWN0b3IyLnplcm8KCWRhdGEucHVzaFZlbCA9IFZlY3RvcjIuemVybwoJZGF0YS5wdXNoVGFyZ2V0ID0gVmVjdG9yMi56ZXJvCglkYXRhLnB1c2hTdGlmZiA9IHJuZzpOZXh0TnVtYmVyKDMwLCA1NSkKCWRhdGEucHVzaERhbXAgPSBybmc6TmV4dE51bWJlcig0LjUsIDcuNSkKCWRhdGEuZmxpY2tlclNwZWVkID0gcm5nOk5leHROdW1iZXIoMC41LCAxLjgpCglkYXRhLmZsaWNrZXJQaGFzZSA9IHJuZzpOZXh0TnVtYmVyKDAsIG1hdGgucGkgKiAyKQoJZGF0YS5mbGlja2VyQW1wID0gcm5nOk5leHROdW1iZXIoMC4wMiwgMC4wNikgKiAoMC42ICsgZGVwdGggKiAwLjcpCglkYXRhLmdsb3dUaW1lciA9IHJuZzpOZXh0TnVtYmVyKDQsIDE2KQoJZGF0YS5nbG93RHVyYXRpb24gPSBybmc6TmV4dE51bWJlcigxLjUsIDMpCglkYXRhLmdsb3dQcm9ncmVzcyA9IDAKCWRhdGEuZ2xvd2luZyA9IGZhbHNlCglkYXRhLmdsb3dTdHJlbmd0aCA9IDAKCWRhdGEuZmxhc2ggPSAwCglkYXRhLmxpZmV0aW1lID0gcm5nOk5leHROdW1iZXIoNSwgMTApCglkYXRhLmFnZSA9IDAKCWRhdGEuZmFkZSA9IDAKCWRhdGEuZmFkZUluID0gcm5nOk5leHROdW1iZXIoMC44LCAxLjUpCglkYXRhLmZhZGVPdXQgPSBybmc6TmV4dE51bWJlcigwLjcsIDEuNCkKCWRhdGEucGhhc2UgPSAiaW4iCglkYXRhLmJhc2VSb3QgPSBybmc6TmV4dE51bWJlcigwLCA5MCkKCWRhdGEucm90QWxpZ24gPSAwCglkYXRhLnN0cmV0Y2ggPSAwCglkYXRhLnNoYWtlRnJlcSA9IHJuZzpOZXh0TnVtYmVyKDcsIDE0KQoJZGF0YS5zaGFrZVBoYXNlID0gcm5nOk5leHROdW1iZXIoMCwgbWF0aC5waSAqIDIpCglkYXRhLndvYkZyZXEgPSBybmc6TmV4dE51bWJlcig2LCAxMikKCWRhdGEud29iUGhhc2UgPSBybmc6TmV4dE51bWJlcigwLCBtYXRoLnBpICogMikKCWRhdGEuc3dheUFtcCA9IHJuZzpOZXh0TnVtYmVyKDEuMiwgMykgKiAoMC40ICsgZGVwdGggKiAwLjYpCglkYXRhLnN3YXlGcmVxWCA9IHJuZzpOZXh0TnVtYmVyKDAuMTUsIDAuNDUpCglkYXRhLnN3YXlGcmVxWSA9IHJuZzpOZXh0TnVtYmVyKDAuMTUsIDAuNDUpCglkYXRhLnN3YXlQaGFzZVggPSBybmc6TmV4dE51bWJlcigwLCBtYXRoLnBpICogMikKCWRhdGEuc3dheVBoYXNlWSA9IHJuZzpOZXh0TnVtYmVyKDAsIG1hdGgucGkgKiAyKQoKCWRhdGEuY29udGFpbmVyLlBvc2l0aW9uID0gVURpbTIubmV3KGRhdGEuYW5jaG9yLlgsIDAsIGRhdGEuYW5jaG9yLlksIDApCglkYXRhLmNvbnRhaW5lci5Sb3RhdGlvbiA9IGRhdGEuYmFzZVJvdAoJZGF0YS5jb250YWluZXIuWkluZGV4ID0gMSArIG1hdGguZmxvb3IoZGVwdGggKiA0Ljk5OSkKCWRhdGEuY29yZS5CYWNrZ3JvdW5kQ29sb3IzID0gZGF0YS5jb2xvcgoJZGF0YS5jb3JlLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KHNpemUsIHNpemUpCgoJbG9jYWwgcmF5TGVuID0gbWF0aC5jbGFtcChzaXplICogNSwgNywgMTYpCglkYXRhLmJhc2VSYXlMZW4gPSByYXlMZW4KCWZvciBpLCByYXkgaW4gaXBhaXJzKGRhdGEucmF5cykgZG8KCQlyYXkuQmFja2dyb3VuZENvbG9yMyA9IGRhdGEuY29sb3IKCQlyYXkuU2l6ZSA9IFVEaW0yLmZyb21PZmZzZXQocmF5TGVuLCBtYXRoLm1heCgxLCBzaXplICogMC4zKSkKCQlyYXkuVmlzaWJsZSA9IGRhdGEuaXNCcmlnaHQgb3IgaSA9PSAxIG9yIGkgPT0gMwoJZW5kCmVuZAoKbG9jYWwgZnVuY3Rpb24gY3JlYXRlU3RhcigpCglsb2NhbCBkYXRhID0ge30KCglsb2NhbCBjb250YWluZXIgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKCWNvbnRhaW5lci5BbmNob3JQb2ludCA9IFZlY3RvcjIubmV3KDAuNSwgMC41KQoJY29udGFpbmVyLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KDEsIDEpCgljb250YWluZXIuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKCWNvbnRhaW5lci5aSW5kZXggPSAxCgljb250YWluZXIuUGFyZW50ID0gc3RhckZpZWxkCgoJbG9jYWwgcmF5cyA9IHt9Cglmb3IgaSA9IDEsIDQgZG8KCQlyYXlzW2ldID0gbWFrZVJheShjb250YWluZXIsIDEwLCAoaSAtIDEpICogNDUsIENvbG9yMy5uZXcoMSwgMSwgMSkpCgllbmQKCglsb2NhbCBjb3JlID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCgljb3JlLkFuY2hvclBvaW50ID0gVmVjdG9yMi5uZXcoMC41LCAwLjUpCgljb3JlLlBvc2l0aW9uID0gVURpbTIuZnJvbVNjYWxlKDAuNSwgMC41KQoJY29yZS5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJY29yZS5Cb3JkZXJTaXplUGl4ZWwgPSAwCgljb3JlLlpJbmRleCA9IDAKCWNvcmUuUGFyZW50ID0gY29udGFpbmVyCglJbnN0YW5jZS5uZXcoIlVJQ29ybmVyIiwgY29yZSkuQ29ybmVyUmFkaXVzID0gVURpbS5uZXcoMSwgMCkKCglkYXRhLmNvbnRhaW5lciA9IGNvbnRhaW5lcgoJZGF0YS5yYXlzID0gcmF5cwoJZGF0YS5jb3JlID0gY29yZQoKCXJlcm9sbFN0YXIoZGF0YSkKCWRhdGEuYWdlID0gcm5nOk5leHROdW1iZXIoMCwgZGF0YS5saWZldGltZSkKCgl0YWJsZS5pbnNlcnQoc3RhcnMsIGRhdGEpCmVuZAoKZm9yIF8gPSAxLCBTVEFSX0NPVU5UIGRvCgljcmVhdGVTdGFyKCkKZW5kCgpsb2NhbCBuZXh0U2hvb3RpbmdTdGFyID0gcm5nOk5leHROdW1iZXIoNCwgOCkKCmxvY2FsIGZ1bmN0aW9uIHNwYXduU3BhcmsocG9zLCBiYXNlRGlyKQoJaWYgI3NwYXJrcyA+IDYwIHRoZW4gcmV0dXJuIGVuZAoKCWxvY2FsIHNpemUgPSBybmc6TmV4dE51bWJlcigwLjgsIDEuOCkKCWxvY2FsIHMgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKCXMuQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygwLjUsIDAuNSkKCXMuU2l6ZSA9IFVEaW0yLmZyb21PZmZzZXQoc2l6ZSwgc2l6ZSkKCXMuQmFja2dyb3VuZENvbG9yMyA9IHJuZzpOZXh0TnVtYmVyKCkgPCAwLjcgYW5kIENvbG9yMy5mcm9tUkdCKDIwMCwgMjIwLCAyNTUpIG9yIENvbG9yMy5mcm9tUkdCKDI1NSwgMjU1LCAyNTUpCglzLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSBybmc6TmV4dE51bWJlcigwLjEsIDAuNDUpCglzLkJvcmRlclNpemVQaXhlbCA9IDAKCXMuWkluZGV4ID0gNgoJcy5QYXJlbnQgPSBzdGFyRmllbGQKCUluc3RhbmNlLm5ldygiVUlDb3JuZXIiLCBzKS5Db3JuZXJSYWRpdXMgPSBVRGltLm5ldygxLCAwKQoKCWxvY2FsIHNwcmVhZCA9IHJuZzpOZXh0TnVtYmVyKC0wLjYsIDAuNikKCWxvY2FsIGNzLCBzbiA9IG1hdGguY29zKHNwcmVhZCksIG1hdGguc2luKHNwcmVhZCkKCWxvY2FsIGRpciA9IFZlY3RvcjIubmV3KGJhc2VEaXIuWCAqIGNzIC0gYmFzZURpci5ZICogc24sIGJhc2VEaXIuWCAqIHNuICsgYmFzZURpci5ZICogY3MpCgoJdGFibGUuaW5zZXJ0KHNwYXJrcywgewoJCWZyYW1lID0gcywKCQlwb3MgPSBwb3MgKyBWZWN0b3IyLm5ldyhybmc6TmV4dE51bWJlcigtMiwgMiksIHJuZzpOZXh0TnVtYmVyKC0yLCAyKSksCgkJdmVsID0gZGlyICogcm5nOk5leHROdW1iZXIoMjAsIDExMCksCgkJbGlmZSA9IDAsCgkJbWF4TGlmZSA9IHJuZzpOZXh0TnVtYmVyKDAuMzUsIDAuOSksCgkJc2l6ZSA9IHNpemUsCgkJYmFzZVQgPSBzLkJhY2tncm91bmRUcmFuc3BhcmVuY3ksCgl9KQplbmQKCmxvY2FsIGZ1bmN0aW9uIHNwYXduU2hvb3RpbmdTdGFyKCkKCWxvY2FsIHNpemUgPSBzdGFyRmllbGQuQWJzb2x1dGVTaXplIC8gZ2V0RmllbGRTY2FsZSgpCglpZiBzaXplLlggPCA2MCBvciBzaXplLlkgPCA2MCB0aGVuIHJldHVybiBlbmQKCglsb2NhbCBtYXJnaW4gPSA2MAoJbG9jYWwgZWRnZSA9IHJuZzpOZXh0SW50ZWdlcigwLCAzKQoJbG9jYWwgc3RhcnQKCWlmIGVkZ2UgPT0gMCB0aGVuCgkJc3RhcnQgPSBWZWN0b3IyLm5ldyhybmc6TmV4dE51bWJlcigwLCBzaXplLlgpLCAtbWFyZ2luKQoJZWxzZWlmIGVkZ2UgPT0gMSB0aGVuCgkJc3RhcnQgPSBWZWN0b3IyLm5ldyhzaXplLlggKyBtYXJnaW4sIHJuZzpOZXh0TnVtYmVyKDAsIHNpemUuWSkpCgllbHNlaWYgZWRnZSA9PSAyIHRoZW4KCQlzdGFydCA9IFZlY3RvcjIubmV3KHJuZzpOZXh0TnVtYmVyKDAsIHNpemUuWCksIHNpemUuWSArIG1hcmdpbikKCWVsc2UKCQlzdGFydCA9IFZlY3RvcjIubmV3KC1tYXJnaW4sIHJuZzpOZXh0TnVtYmVyKDAsIHNpemUuWSkpCgllbmQKCglsb2NhbCB0YXJnZXQgPSBWZWN0b3IyLm5ldyhzaXplLlggKiBybmc6TmV4dE51bWJlcigwLjIsIDAuOCksIHNpemUuWSAqIHJuZzpOZXh0TnVtYmVyKDAuMiwgMC44KSkKCWxvY2FsIGRpciA9ICh0YXJnZXQgLSBzdGFydCkuVW5pdAoJbG9jYWwgc3BlZWQgPSBybmc6TmV4dE51bWJlcigzODAsIDc2MCkKCWxvY2FsIGxpZmV0aW1lID0gKHN0YXJ0IC0gdGFyZ2V0KS5NYWduaXR1ZGUgLyBzcGVlZCArIHJuZzpOZXh0TnVtYmVyKDAuMTUsIDAuMzUpCglsb2NhbCB0cmFpbExlbiA9IHJuZzpOZXh0TnVtYmVyKDYwLCAxMTApCgoJbG9jYWwgbWV0ZW9yID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCgltZXRlb3IuQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygwLjUsIDAuNSkKCW1ldGVvci5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJbWV0ZW9yLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KDAsIDApCgltZXRlb3IuUG9zaXRpb24gPSBVRGltMi5mcm9tT2Zmc2V0KHN0YXJ0LlgsIHN0YXJ0LlkpCgltZXRlb3IuUm90YXRpb24gPSBtYXRoLmRlZyhtYXRoLmF0YW4yKGRpci5ZLCBkaXIuWCkpCgltZXRlb3IuWkluZGV4ID0gNgoJbWV0ZW9yLlBhcmVudCA9IHN0YXJGaWVsZAoKCWxvY2FsIG91dGVyID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCglvdXRlci5BbmNob3JQb2ludCA9IFZlY3RvcjIubmV3KDEsIDAuNSkKCW91dGVyLlBvc2l0aW9uID0gVURpbTIuZnJvbVNjYWxlKDAsIDApCglvdXRlci5TaXplID0gVURpbTIuZnJvbU9mZnNldCh0cmFpbExlbiwgMy40KQoJb3V0ZXIuQmFja2dyb3VuZENvbG9yMyA9IENvbG9yMy5mcm9tUkdCKDE3MCwgMjAwLCAyNTUpCglvdXRlci5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJb3V0ZXIuQm9yZGVyU2l6ZVBpeGVsID0gMAoJb3V0ZXIuWkluZGV4ID0gMAoJb3V0ZXIuUGFyZW50ID0gbWV0ZW9yCgoJbG9jYWwgb2cgPSBJbnN0YW5jZS5uZXcoIlVJR3JhZGllbnQiKQoJb2cuVHJhbnNwYXJlbmN5ID0gTnVtYmVyU2VxdWVuY2UubmV3KHsKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLCAxKSwKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjU1LCAwLjY1KSwKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygxLCAwLjIpLAoJfSkKCW9nLlBhcmVudCA9IG91dGVyCgoJbG9jYWwgaW5uZXIgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKCWlubmVyLkFuY2hvclBvaW50ID0gVmVjdG9yMi5uZXcoMSwgMC41KQoJaW5uZXIuUG9zaXRpb24gPSBVRGltMi5mcm9tU2NhbGUoMCwgMCkKCWlubmVyLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KHRyYWlsTGVuICogMC41NSwgMS40KQoJaW5uZXIuQmFja2dyb3VuZENvbG9yMyA9IENvbG9yMy5mcm9tUkdCKDI1NSwgMjU1LCAyNTUpCglpbm5lci5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJaW5uZXIuQm9yZGVyU2l6ZVBpeGVsID0gMAoJaW5uZXIuWkluZGV4ID0gMAoJaW5uZXIuUGFyZW50ID0gbWV0ZW9yCgoJbG9jYWwgaWcgPSBJbnN0YW5jZS5uZXcoIlVJR3JhZGllbnQiKQoJaWcuVHJhbnNwYXJlbmN5ID0gTnVtYmVyU2VxdWVuY2UubmV3KHsKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLCAxKSwKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjUsIDAuNCksCgkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMSwgMC4wNSksCgl9KQoJaWcuUGFyZW50ID0gaW5uZXIKCglsb2NhbCBibG9vbSA9IEluc3RhbmNlLm5ldygiRnJhbWUiKQoJYmxvb20uQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygwLjUsIDAuNSkKCWJsb29tLlBvc2l0aW9uID0gVURpbTIuZnJvbVNjYWxlKDAsIDApCglibG9vbS5TaXplID0gVURpbTIuZnJvbU9mZnNldCgxMSwgMTEpCglibG9vbS5CYWNrZ3JvdW5kQ29sb3IzID0gQ29sb3IzLmZyb21SR0IoMTg1LCAyMTAsIDI1NSkKCWJsb29tLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxCglibG9vbS5Cb3JkZXJTaXplUGl4ZWwgPSAwCglibG9vbS5aSW5kZXggPSAwCglibG9vbS5QYXJlbnQgPSBtZXRlb3IKCUluc3RhbmNlLm5ldygiVUlDb3JuZXIiLCBibG9vbSkuQ29ybmVyUmFkaXVzID0gVURpbS5uZXcoMSwgMCkKCglsb2NhbCBoZWFkID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCgloZWFkLkFuY2hvclBvaW50ID0gVmVjdG9yMi5uZXcoMC41LCAwLjUpCgloZWFkLlBvc2l0aW9uID0gVURpbTIuZnJvbVNjYWxlKDAsIDApCgloZWFkLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KDIuNCwgMi40KQoJaGVhZC5CYWNrZ3JvdW5kQ29sb3IzID0gQ29sb3IzLmZyb21SR0IoMjU1LCAyNTUsIDI1NSkKCWhlYWQuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKCWhlYWQuQm9yZGVyU2l6ZVBpeGVsID0gMAoJaGVhZC5aSW5kZXggPSAwCgloZWFkLlBhcmVudCA9IG1ldGVvcgoJSW5zdGFuY2UubmV3KCJVSUNvcm5lciIsIGhlYWQpLkNvcm5lclJhZGl1cyA9IFVEaW0ubmV3KDEsIDApCgoJdGFibGUuaW5zZXJ0KHNob290aW5nU3RhcnMsIHsKCQltZXRlb3IgPSBtZXRlb3IsCgkJb3V0ZXIgPSBvdXRlciwKCQlpbm5lciA9IGlubmVyLAoJCWJsb29tID0gYmxvb20sCgkJaGVhZCA9IGhlYWQsCgkJcG9zID0gc3RhcnQsCgkJZGlyID0gZGlyLAoJCXNwZWVkID0gc3BlZWQsCgkJY3VydmUgPSBybmc6TmV4dE51bWJlcigtMSwgMSkgKiBybmc6TmV4dE51bWJlcigwLjE1LCAwLjUpLAoJCWxpZmUgPSAwLAoJCWxpZmV0aW1lID0gbGlmZXRpbWUsCgkJc3BhcmtUaW1lciA9IDAsCgl9KQplbmQKCmxvY2FsIGxhc3RHdWlQb3MgPSBuaWwKbG9jYWwgbGFzdEd1aVZlbCA9IFZlY3RvcjIuemVybwpsb2NhbCB3YXNEb3duID0gZmFsc2UKbG9jYWwgZmxpbmdJbXB1bHNlID0gbmlsCgpsb2NhbCB1cGRhdGUgPSBmdW5jdGlvbihkdCkKCWNsb2NrICs9IGR0CglkdCA9IG1hdGgubWluKGR0LCAxIC8gMjApCgoJbG9jYWwgc2NhbGUgPSBnZXRGaWVsZFNjYWxlKCkKCWxvY2FsIGZpZWxkU2l6ZSA9IHN0YXJGaWVsZC5BYnNvbHV0ZVNpemUgLyBzY2FsZQoKCWxvY2FsIGdwID0gVmVjdG9yMi5uZXcoZ3VpLlBvc2l0aW9uLlguT2Zmc2V0LCBndWkuUG9zaXRpb24uWS5PZmZzZXQpCglsb2NhbCBndmVsID0gVmVjdG9yMi56ZXJvCglsb2NhbCBnYWNjID0gVmVjdG9yMi56ZXJvCglpZiBsYXN0R3VpUG9zIHRoZW4KCQlsb2NhbCBzYWZlRHQgPSBtYXRoLm1heChkdCwgMSAvIDI0MCkKCQlndmVsID0gKGdwIC0gbGFzdEd1aVBvcykgLyBzYWZlRHQKCQlpZiBndmVsLk1hZ25pdHVkZSA+IDMwMDAgdGhlbgoJCQlndmVsID0gZ3ZlbC5Vbml0ICogMzAwMAoJCWVuZAoJCWdhY2MgPSAoZ3ZlbCAtIGxhc3RHdWlWZWwpIC8gc2FmZUR0CgkJaWYgZ2FjYy5NYWduaXR1ZGUgPiAxMjAwMCB0aGVuCgkJCWdhY2MgPSBnYWNjLlVuaXQgKiAxMjAwMAoJCWVuZAoJZW5kCglsYXN0R3VpUG9zID0gZ3AKCWxhc3RHdWlWZWwgPSBndmVsCglsb2NhbCBzcGVlZCA9IGd2ZWwuTWFnbml0dWRlCgoJZmxpbmdJbXB1bHNlID0gbmlsCglpZiBwb2ludGVyRG93biB0aGVuCgkJd2FzRG93biA9IHRydWUKCWVsc2VpZiB3YXNEb3duIHRoZW4KCQl3YXNEb3duID0gZmFsc2UKCQlpZiBndmVsLk1hZ25pdHVkZSA+IDI1MCB0aGVuCgkJCWZsaW5nSW1wdWxzZSA9IGd2ZWwKCQllbmQKCWVuZAoKCW5leHRTaG9vdGluZ1N0YXIgLT0gZHQKCWlmIG5leHRTaG9vdGluZ1N0YXIgPD0gMCB0aGVuCgkJc3Bhd25TaG9vdGluZ1N0YXIoKQoJCW5leHRTaG9vdGluZ1N0YXIgPSBybmc6TmV4dE51bWJlcig2LCAxNCkKCWVuZAoKCWZvciBpID0gI3Nob290aW5nU3RhcnMsIDEsIC0xIGRvCgkJbG9jYWwgbSA9IHNob290aW5nU3RhcnNbaV0KCQltLmxpZmUgKz0gZHQKCgkJbG9jYWwgY3MsIHNuID0gbWF0aC5jb3MobS5jdXJ2ZSAqIGR0KSwgbWF0aC5zaW4obS5jdXJ2ZSAqIGR0KQoJCW0uZGlyID0gVmVjdG9yMi5uZXcobS5kaXIuWCAqIGNzIC0gbS5kaXIuWSAqIHNuLCBtLmRpci5YICogc24gKyBtLmRpci5ZICogY3MpCgkJbS5wb3MgKz0gbS5kaXIgKiBtLnNwZWVkICogZHQKCQltLm1ldGVvci5Qb3NpdGlvbiA9IFVEaW0yLmZyb21PZmZzZXQobS5wb3MuWCwgbS5wb3MuWSkKCQltLm1ldGVvci5Sb3RhdGlvbiA9IG1hdGguZGVnKG1hdGguYXRhbjIobS5kaXIuWSwgbS5kaXIuWCkpCgoJCWxvY2FsIGZhZGVJbiA9IG1hdGguY2xhbXAobS5saWZlIC8gMC4xNSwgMCwgMSkKCQlsb2NhbCBmYWRlT3V0ID0gbWF0aC5jbGFtcCgobS5saWZldGltZSAtIG0ubGlmZSkgLyAwLjM1LCAwLCAxKQoJCWxvY2FsIGFscGhhID0gbWF0aC5taW4oZmFkZUluLCBmYWRlT3V0KQoKCQltLmhlYWQuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEgLSBhbHBoYQoJCW0uYmxvb20uQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEgLSBhbHBoYSAqICgwLjUgKyAwLjEyICogbWF0aC5zaW4obS5saWZlICogMjYpKQoJCW0ub3V0ZXIuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEgLSBhbHBoYSAqIDAuODUKCQltLmlubmVyLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxIC0gYWxwaGEKCgkJbS5zcGFya1RpbWVyIC09IGR0CgkJaWYgbS5zcGFya1RpbWVyIDw9IDAgYW5kIGFscGhhID4gMC4yIHRoZW4KCQkJc3Bhd25TcGFyayhtLnBvcyAtIG0uZGlyICogNiwgLW0uZGlyKQoJCQltLnNwYXJrVGltZXIgPSBybmc6TmV4dE51bWJlcigwLjAzLCAwLjA3KQoJCWVuZAoKCQlpZiBtLmxpZmUgPj0gbS5saWZldGltZSB0aGVuCgkJCW0ubWV0ZW9yOkRlc3Ryb3koKQoJCQl0YWJsZS5yZW1vdmUoc2hvb3RpbmdTdGFycywgaSkKCQllbmQKCWVuZAoKCWxvY2FsIHB1c2hSYWRpdXMgPSBtYXRoLmNsYW1wKG1hdGgubWluKGZpZWxkU2l6ZS5YLCBmaWVsZFNpemUuWSkgKiAwLjI4LCA3MCwgMTMwKQoKCWZvciBfLCBkYXRhIGluIGlwYWlycyhzdGFycykgZG8KCQlpZiBkYXRhLnBoYXNlID09ICJpbiIgdGhlbgoJCQlkYXRhLmZhZGUgKz0gZHQgLyBkYXRhLmZhZGVJbgoJCQlpZiBkYXRhLmZhZGUgPj0gMSB0aGVuCgkJCQlkYXRhLmZhZGUgPSAxCgkJCQlkYXRhLnBoYXNlID0gImxpdmUiCgkJCWVuZAoJCWVsc2VpZiBkYXRhLnBoYXNlID09ICJsaXZlIiB0aGVuCgkJCWRhdGEuYWdlICs9IGR0CgkJCWlmIGRhdGEuYWdlID49IGRhdGEubGlmZXRpbWUgdGhlbgoJCQkJZGF0YS5waGFzZSA9ICJvdXQiCgkJCWVuZAoJCWVsc2UKCQkJZGF0YS5mYWRlIC09IGR0IC8gZGF0YS5mYWRlT3V0CgkJCWlmIGRhdGEuZmFkZSA8PSAwIHRoZW4KCQkJCXJlcm9sbFN0YXIoZGF0YSkKCQkJZW5kCgkJZW5kCgoJCWxvY2FsIGRlcHRoID0gZGF0YS5kZXB0aAoJCWxvY2FsIHJlYWN0ID0gMC4zNSArIGRlcHRoICogMC42NQoKCQlkYXRhLnd4ID0gZGF0YS5hbmNob3IuWCAqIGZpZWxkU2l6ZS5YICsgZGF0YS5vZmYuWCArIGRhdGEucHVzaE9mZi5YCgkJZGF0YS53eSA9IGRhdGEuYW5jaG9yLlkgKiBmaWVsZFNpemUuWSArIGRhdGEub2ZmLlkgKyBkYXRhLnB1c2hPZmYuWQoKCQlkYXRhLnB1c2hUYXJnZXQgPSBWZWN0b3IyLnplcm8KCgkJaWYgI3Nob290aW5nU3RhcnMgPiAwIHRoZW4KCQkJZm9yIF8sIG0gaW4gaXBhaXJzKHNob290aW5nU3RhcnMpIGRvCgkJCQlsb2NhbCBkeCA9IGRhdGEud3ggLSBtLnBvcy5YCgkJCQlsb2NhbCBkeSA9IGRhdGEud3kgLSBtLnBvcy5ZCgkJCQlsb2NhbCBkaXN0ID0gbWF0aC5zcXJ0KGR4ICogZHggKyBkeSAqIGR5KQoJCQkJaWYgZGlzdCA8IHB1c2hSYWRpdXMgYW5kIGRpc3QgPiAwLjAwMSB0aGVuCgkJCQkJbG9jYWwgZiA9IDEgLSBkaXN0IC8gcHVzaFJhZGl1cwoJCQkJCWxvY2FsIGVuZXJneSA9IGYgKiBmCgkJCQkJbG9jYWwgdXggPSBkeCAvIGRpc3QKCQkJCQlsb2NhbCB1eSA9IGR5IC8gZGlzdAoJCQkJCWxvY2FsIHN4ID0gdXggKiAwLjcgKyBtLmRpci5YICogMC40NQoJCQkJCWxvY2FsIHN5ID0gdXkgKiAwLjcgKyBtLmRpci5ZICogMC40NQoJCQkJCWxvY2FsIHNsID0gbWF0aC5zcXJ0KHN4ICogc3ggKyBzeSAqIHN5KQoJCQkJCWlmIHNsID4gMC4wMDEgdGhlbgoJCQkJCQlsb2NhbCBwdXNoID0gTUVURU9SX1BVU0hfU1RSRU5HVEggKiBlbmVyZ3kgKiByZWFjdCAvICgwLjggKyBkYXRhLm1hc3MgKiAwLjMpCgkJCQkJCWRhdGEucHVzaFZlbCArPSBWZWN0b3IyLm5ldyhzeCAvIHNsLCBzeSAvIHNsKSAqIHB1c2ggKiBkdAoJCQkJCWVuZAoJCQkJCWRhdGEucHVzaFRhcmdldCArPSBWZWN0b3IyLm5ldyh1eCwgdXkpICogKGVuZXJneSAqIE1FVEVPUl9QVVNIX0RJU1QgKiByZWFjdCkKCQkJCQlpZiBlbmVyZ3kgPiBkYXRhLmZsYXNoIHRoZW4KCQkJCQkJZGF0YS5mbGFzaCA9IGVuZXJneQoJCQkJCWVuZAoJCQkJZW5kCgkJCWVuZAoJCWVuZAoKCQlpZiBwb2ludGVyRG93biBhbmQgc3BlZWQgPiAxNSB0aGVuCgkJCWxvY2FsIHNoYWtlQW1wID0gKDE0ICsgc3BlZWQgKiAwLjYpICogKDAuNDUgKyBkZXB0aCAqIDAuOTUpIC8gZGF0YS5tYXNzCgkJCWxvY2FsIHN4ID0gbWF0aC5zaW4oY2xvY2sgKiBkYXRhLnNoYWtlRnJlcSArIGRhdGEuc2hha2VQaGFzZSkKCQkJbG9jYWwgc3kgPSBtYXRoLmNvcyhjbG9jayAqIGRhdGEuc2hha2VGcmVxICogMS4xNyArIGRhdGEuc2hha2VQaGFzZSkKCQkJZGF0YS52ZWwgKz0gVmVjdG9yMi5uZXcoc3gsIHN5KSAqIHNoYWtlQW1wICogZHQKCQllbmQKCgkJaWYgZmxpbmdJbXB1bHNlIHRoZW4KCQkJZGF0YS52ZWwgKz0gZmxpbmdJbXB1bHNlICogMC4xNSAqICgwLjM1ICsgZGVwdGggKiAwLjY1KQoJCWVuZAoKCQlkYXRhLnZlbCAtPSBnYWNjICogZHQgKiAoMC4wMiArIGRlcHRoICogMC4wNikKCQlkYXRhLm9mZiAtPSBndmVsICogZHQgKiAoMC4xNCArIGRlcHRoICogMC40MikKCgkJbG9jYWwgYWNjID0gLWRhdGEuc3RpZmYgKiBkYXRhLm9mZiAtIGRhdGEuZGFtcCAqIGRhdGEudmVsCgkJZGF0YS52ZWwgKz0gYWNjICogZHQKCQlkYXRhLm9mZiArPSBkYXRhLnZlbCAqIGR0CgoJCWlmIGRhdGEub2ZmLk1hZ25pdHVkZSA+IE1BWF9TVEFSX09GRlNFVCAqICgwLjUgKyBkZXB0aCAqIDAuNSkgdGhlbgoJCQlkYXRhLm9mZiA9IGRhdGEub2ZmLlVuaXQgKiBNQVhfU1RBUl9PRkZTRVQgKiAoMC41ICsgZGVwdGggKiAwLjUpCgkJZW5kCgkJaWYgZGF0YS52ZWwuTWFnbml0dWRlID4gNzAwIHRoZW4KCQkJZGF0YS52ZWwgPSBkYXRhLnZlbC5Vbml0ICogNzAwCgkJZW5kCgoJCWxvY2FsIHB1c2hBY2MgPSAoZGF0YS5wdXNoVGFyZ2V0IC0gZGF0YS5wdXNoT2ZmKSAqIGRhdGEucHVzaFN0aWZmIC0gZGF0YS5wdXNoVmVsICogZGF0YS5wdXNoRGFtcAoJCWRhdGEucHVzaFZlbCArPSBwdXNoQWNjICogZHQKCQlkYXRhLnB1c2hPZmYgKz0gZGF0YS5wdXNoVmVsICogZHQKCgkJbG9jYWwgcE1heCA9IE1FVEVPUl9QVVNIX0RJU1QgKiAoMC41ICsgZGVwdGggKiAwLjUpICogMS45CgkJaWYgZGF0YS5wdXNoT2ZmLk1hZ25pdHVkZSA+IHBNYXggdGhlbgoJCQlkYXRhLnB1c2hPZmYgPSBkYXRhLnB1c2hPZmYuVW5pdCAqIHBNYXgKCQllbmQKCQlpZiBkYXRhLnB1c2hWZWwuTWFnbml0dWRlID4gMTgwMCB0aGVuCgkJCWRhdGEucHVzaFZlbCA9IGRhdGEucHVzaFZlbC5Vbml0ICogMTgwMAoJCWVuZAoKCQlpZiBkYXRhLmdsb3dpbmcgdGhlbgoJCQlkYXRhLmdsb3dQcm9ncmVzcyArPSBkdCAvIGRhdGEuZ2xvd0R1cmF0aW9uCgkJCWlmIGRhdGEuZ2xvd1Byb2dyZXNzID49IDEgdGhlbgoJCQkJZGF0YS5nbG93aW5nID0gZmFsc2UKCQkJCWRhdGEuZ2xvd1N0cmVuZ3RoID0gMAoJCQkJZGF0YS5nbG93VGltZXIgPSBybmc6TmV4dE51bWJlcig1LCAxOCkKCQkJZWxzZQoJCQkJZGF0YS5nbG93U3RyZW5ndGggPSBtYXRoLnNpbihkYXRhLmdsb3dQcm9ncmVzcyAqIG1hdGgucGkpCgkJCWVuZAoJCWVsc2UKCQkJZGF0YS5nbG93VGltZXIgLT0gZHQKCQkJaWYgZGF0YS5nbG93VGltZXIgPD0gMCB0aGVuCgkJCQlkYXRhLmdsb3dpbmcgPSB0cnVlCgkJCQlkYXRhLmdsb3dQcm9ncmVzcyA9IDAKCQkJZW5kCgkJZW5kCgoJCWlmIGRhdGEuZmxhc2ggPiAwIHRoZW4KCQkJZGF0YS5mbGFzaCAtPSBkdCAqIDEuNgoJCQlpZiBkYXRhLmZsYXNoIDwgMCB0aGVuCgkJCQlkYXRhLmZsYXNoID0gMAoJCQllbmQKCQllbmQKCgkJbG9jYWwgZmxpY2sgPSBtYXRoLnNpbihjbG9jayAqIGRhdGEuZmxpY2tlclNwZWVkICogbWF0aC5waSAqIDIgKyBkYXRhLmZsaWNrZXJQaGFzZSkgKiBkYXRhLmZsaWNrZXJBbXAKCQlsb2NhbCBnID0gZGF0YS5nbG93U3RyZW5ndGggKiAoMC4zNSArIGRlcHRoICogMC42NSkgKyBkYXRhLmZsYXNoICogKDAuNSArIGRlcHRoICogMC41KQoJCWxvY2FsIGEgPSBkYXRhLmZhZGUKCgkJbG9jYWwgc3dheVggPSBtYXRoLnNpbihjbG9jayAqIGRhdGEuc3dheUZyZXFYICogbWF0aC5waSAqIDIgKyBkYXRhLnN3YXlQaGFzZVgpICogZGF0YS5zd2F5QW1wCgkJbG9jYWwgc3dheVkgPSBtYXRoLmNvcyhjbG9jayAqIGRhdGEuc3dheUZyZXFZICogbWF0aC5waSAqIDIgKyBkYXRhLnN3YXlQaGFzZVkpICogZGF0YS5zd2F5QW1wCgoJCWRhdGEuY29udGFpbmVyLlBvc2l0aW9uID0gVURpbTIubmV3KAoJCQlkYXRhLmFuY2hvci5YLAoJCQlkYXRhLm9mZi5YICsgZGF0YS5wdXNoT2ZmLlggKyBzd2F5WCwKCQkJZGF0YS5hbmNob3IuWSwKCQkJZGF0YS5vZmYuWSArIGRhdGEucHVzaE9mZi5ZICsgc3dheVkKCQkpCgoJCWxvY2FsIG1vdGlvbkFuZ2xlID0gMAoJCWlmIHNwZWVkID4gNDAgdGhlbgoJCQltb3Rpb25BbmdsZSA9IG1hdGguZGVnKG1hdGguYXRhbjIoZ3ZlbC5ZLCBndmVsLlgpKQoJCWVuZAoJCWxvY2FsIGFsaWduVCA9IG1hdGguY2xhbXAoKHNwZWVkIC0gNDApIC8gNzAwLCAwLCAxKQoJCWRhdGEucm90QWxpZ24gKz0gKGFsaWduVCAtIGRhdGEucm90QWxpZ24pICogbWF0aC5taW4oZHQgKiA4LCAxKQoJCWxvY2FsIHdvYmJsZSA9IG1hdGguc2luKGNsb2NrICogZGF0YS53b2JGcmVxICsgZGF0YS53b2JQaGFzZSkKCQkJKiBtYXRoLmNsYW1wKHNwZWVkICogMC4wMDQsIDAsIDYpCgkJCSogKDAuMyArIGRlcHRoICogMC43KQoJCWRhdGEuY29udGFpbmVyLlJvdGF0aW9uID0gbGVycEFuZ2xlKGRhdGEuYmFzZVJvdCwgbW90aW9uQW5nbGUsIGRhdGEucm90QWxpZ24pICsgd29iYmxlCgoJCWxvY2FsIHRhcmdldFN0cmV0Y2ggPSBtYXRoLmNsYW1wKChzcGVlZCAtIDEyMCkgLyAyNDAwLCAwLCAxKSAqIDAuOAoJCWRhdGEuc3RyZXRjaCArPSAodGFyZ2V0U3RyZXRjaCAtIGRhdGEuc3RyZXRjaCkgKiBtYXRoLm1pbihkdCAqIDgsIDEpCgkJbG9jYWwgc3QgPSBkYXRhLnN0cmV0Y2gKCgkJZGF0YS5jb3JlLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KAoJCQlkYXRhLmJhc2VTaXplICogKDEgKyBzdCksCgkJCWRhdGEuYmFzZVNpemUgKiAoMSAtIHN0ICogMC4zNSkKCQkpCgoJCWxvY2FsIGNvcmVUID0gbWF0aC5jbGFtcChkYXRhLmJhc2VUcmFuc3BhcmVuY3kgLSBmbGljayAtIGcgKiAwLjQsIDAuMDUsIDEpCgkJZGF0YS5jb3JlLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxIC0gKDEgLSBjb3JlVCkgKiBhCgoJCWxvY2FsIHJheVJlc3QgPSAoZGF0YS5pc0JyaWdodCBhbmQgMC44NSBvciAxKSArICgxIC0gZGVwdGgpICogMC4xCgkJbG9jYWwgcmF5VCA9IG1hdGguY2xhbXAocmF5UmVzdCAtIGcgKiAwLjY1LCAwLjMsIDEpCgkJbG9jYWwgcmF5SCA9IGRhdGEuYmFzZVJheUxlbiAqICgxICsgc3QpCgkJbG9jYWwgcmF5ViA9IGRhdGEuYmFzZVJheUxlbiAqICgxIC0gc3QgKiAwLjMpCgkJbG9jYWwgcmF5RCA9IGRhdGEuYmFzZVJheUxlbiAqICgxICsgc3QgKiAwLjM1KQoJCWZvciBpLCByYXkgaW4gaXBhaXJzKGRhdGEucmF5cykgZG8KCQkJcmF5LkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxIC0gKDEgLSByYXlUKSAqIGEKCQkJbG9jYWwgbGVuID0gKGkgPT0gMSBvciBpID09IDMpIGFuZCAoaSA9PSAxIGFuZCByYXlIIG9yIHJheVYpIG9yIHJheUQKCQkJcmF5LlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KGxlbiwgbWF0aC5tYXgoMSwgZGF0YS5iYXNlU2l6ZSAqIDAuMykpCgkJZW5kCgllbmQKCglmb3IgaSA9ICNzcGFya3MsIDEsIC0xIGRvCgkJbG9jYWwgcyA9IHNwYXJrc1tpXQoJCXMubGlmZSArPSBkdAoJCWlmIHMubGlmZSA+PSBzLm1heExpZmUgdGhlbgoJCQlzLmZyYW1lOkRlc3Ryb3koKQoJCQl0YWJsZS5yZW1vdmUoc3BhcmtzLCBpKQoJCWVsc2UKCQkJcy5wb3MgKz0gcy52ZWwgKiBkdAoJCQlzLnZlbCAqPSAxIC0gbWF0aC5taW4oMi41ICogZHQsIDEpCgkJCWxvY2FsIGYgPSAxIC0gcy5saWZlIC8gcy5tYXhMaWZlCgkJCXMuZnJhbWUuUG9zaXRpb24gPSBVRGltMi5mcm9tT2Zmc2V0KHMucG9zLlgsIHMucG9zLlkpCgkJCXMuZnJhbWUuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEgLSAoMSAtIHMuYmFzZVQpICogZgoJCQlsb2NhbCBzeiA9IHMuc2l6ZSAqICgwLjQgKyAwLjYgKiBmKQoJCQlzLmZyYW1lLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KHN6LCBzeikKCQllbmQKCWVuZAplbmQKCmVudi5YVFdfUkFEQVJfSEIgPSBSdW5TZXJ2aWNlLkhlYXJ0YmVhdDpDb25uZWN0KHVwZGF0ZSkKZW5kLCBmdW5jdGlvbihlKQogICAgbG9jYWwgdGIgPSAiIgogICAgcGNhbGwoZnVuY3Rpb24oKSB0YiA9IGRlYnVnLnRyYWNlYmFjaygiIiwgMikgZW5kKQogICAgcmV0dXJuIHRvc3RyaW5nKGUpIC4uICJcbiIgLi4gdGIKZW5kKQppZiBub3QgX194dHdfb2sgdGhlbgogICAgbG9jYWwgZXJyU3RyID0gdG9zdHJpbmcoX194dHdfZXJyKQogICAgaWYgX194dHdfc2VsZiBhbmQgX194dHdfc2VsZi5TZXRBdHRyaWJ1dGUgdGhlbgogICAgICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19lcnJvciIsIGVyclN0cikgZW5kKQogICAgZW5kCiAgICBwY2FsbChmdW5jdGlvbigpIHdhcm4oIlt4dHddIEZBSUw6ICIgLi4gX194dHdfbmFtZSAuLiAiICgiIC4uIF9feHR3X2NscyAuLiAiKTogIiAuLiBlcnJTdHIpIGVuZCkKZW5k")
    local fn, cerr = loadstring(src, "@xtw:" .. tostring(s_4.Name))
    if not fn then
        compiledFail = compiledFail + 1
        compileErrors[#compileErrors + 1] = "Background (LocalScript): " .. tostring(cerr)
    else
        compiled = compiled + 1
        pcall(function() s_4.Source = src end)
        pcall(function() s_4.Parent = n[3] end)
        pcall(function() s_4.Disabled = false end)
    end
end
do
    local s_5 = n[5]
    local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkRyYWcgTWVjaGFuaXNtIiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgVXNlcklucHV0U2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVXNlcklucHV0U2VydmljZSIpCmxvY2FsIFJ1blNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlJ1blNlcnZpY2UiKQoKbG9jYWwgRlJBTUVfTkFNRSA9IG5pbAoKbG9jYWwgZnVuY3Rpb24gZ2V0RW52KCkKCWxvY2FsIG9rLCBlID0gcGNhbGwoZnVuY3Rpb24oKSByZXR1cm4gZ2V0Z2VudiBhbmQgZ2V0Z2VudigpIGVuZCkKCWlmIG9rIGFuZCB0eXBlKGUpID09ICJ0YWJsZSIgdGhlbiByZXR1cm4gZSBlbmQKCXJldHVybiBfRwplbmQKbG9jYWwgZW52ID0gZ2V0RW52KCkKCmxvY2FsIGd1aSA9IG5pbAoKaWYgZW52IGFuZCBlbnYuWFRXX0RSQUdfVEFSR0VUIHRoZW4KCWxvY2FsIHQgPSBlbnYuWFRXX0RSQUdfVEFSR0VUCglpZiB0eXBlb2YodCkgPT0gIkluc3RhbmNlIiBhbmQgdDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCQlndWkgPSB0CgllbmQKZW5kCgppZiBub3QgZ3VpIGFuZCBGUkFNRV9OQU1FIHRoZW4KCWxvY2FsIHBsYXllciA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpLkxvY2FsUGxheWVyCglsb2NhbCBwZyA9IHBsYXllcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlBsYXllckd1aSIpCglpZiBwZyB0aGVuCgkJZm9yIF8sIGQgaW4gaXBhaXJzKHBnOkdldERlc2NlbmRhbnRzKCkpIGRvCgkJCWlmIGQ6SXNBKCJHdWlPYmplY3QiKSBhbmQgZC5OYW1lID09IEZSQU1FX05BTUUgdGhlbgoJCQkJZ3VpID0gZAoJCQkJYnJlYWsKCQkJZW5kCgkJZW5kCgllbmQKZW5kCgppZiBub3QgZ3VpIHRoZW4KCXBjYWxsKGZ1bmN0aW9uKCkKCQlsb2NhbCBwID0gc2NyaXB0IGFuZCBzY3JpcHQuUGFyZW50CgkJaWYgcCBhbmQgcDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCQkJZ3VpID0gcAoJCWVuZAoJZW5kKQplbmQKCmlmIG5vdCBndWkgdGhlbgoJd2FybigiW0RyYWddIE5vIHRhcmdldCBmcmFtZS4iKQoJcmV0dXJuCmVuZAoKaWYgZW52LlhUV19EUkFHX0hCIHRoZW4KCXBjYWxsKGZ1bmN0aW9uKCkgZW52LlhUV19EUkFHX0hCOkRpc2Nvbm5lY3QoKSBlbmQpCmVuZAoKbG9jYWwgZHJhZ2dpbmcgPSBmYWxzZQpsb2NhbCBkcmFnSW5wdXQKbG9jYWwgZHJhZ1N0YXJ0CmxvY2FsIHN0YXJ0UG9zCgpsb2NhbCBsYXN0TW91c2VQb3MKbG9jYWwgbGFzdEdvYWxQb3MKbG9jYWwgRFJBR19TUEVFRCA9IDQwCgpsb2NhbCBmdW5jdGlvbiBMZXJwKGEsIGIsIG0pCglyZXR1cm4gYSArIChiIC0gYSkgKiBtCmVuZAoKbG9jYWwgZnVuY3Rpb24gVXBkYXRlKGR0KQoJaWYgbm90IHN0YXJ0UG9zIHRoZW4gcmV0dXJuIGVuZAoKCWlmIGRyYWdnaW5nIHRoZW4KCQlsb2NhbCBkZWx0YSA9IChsYXN0TW91c2VQb3MgLSBVc2VySW5wdXRTZXJ2aWNlOkdldE1vdXNlTG9jYXRpb24oKSkKCQlsb2NhbCB4R29hbCA9IChzdGFydFBvcy5YLk9mZnNldCAtIGRlbHRhLlgpCgkJbG9jYWwgeUdvYWwgPSAoc3RhcnRQb3MuWS5PZmZzZXQgLSBkZWx0YS5ZKQoJCWxhc3RHb2FsUG9zID0gVURpbTIubmV3KHN0YXJ0UG9zLlguU2NhbGUsIHhHb2FsLCBzdGFydFBvcy5ZLlNjYWxlLCB5R29hbCkKCgkJZ3VpLlBvc2l0aW9uID0gVURpbTIubmV3KAoJCQlzdGFydFBvcy5YLlNjYWxlLAoJCQlMZXJwKGd1aS5Qb3NpdGlvbi5YLk9mZnNldCwgeEdvYWwsIGR0ICogRFJBR19TUEVFRCksCgkJCXN0YXJ0UG9zLlkuU2NhbGUsCgkJCUxlcnAoZ3VpLlBvc2l0aW9uLlkuT2Zmc2V0LCB5R29hbCwgZHQgKiBEUkFHX1NQRUVEKQoJCSkKCWVsc2UKCQlpZiBsYXN0R29hbFBvcyB0aGVuCgkJCWd1aS5Qb3NpdGlvbiA9IFVEaW0yLm5ldygKCQkJCXN0YXJ0UG9zLlguU2NhbGUsCgkJCQlMZXJwKGd1aS5Qb3NpdGlvbi5YLk9mZnNldCwgbGFzdEdvYWxQb3MuWC5PZmZzZXQsIGR0ICogRFJBR19TUEVFRCksCgkJCQlzdGFydFBvcy5ZLlNjYWxlLAoJCQkJTGVycChndWkuUG9zaXRpb24uWS5PZmZzZXQsIGxhc3RHb2FsUG9zLlkuT2Zmc2V0LCBkdCAqIERSQUdfU1BFRUQpCgkJCSkKCQllbmQKCWVuZAplbmQKCmd1aS5JbnB1dEJlZ2FuOkNvbm5lY3QoZnVuY3Rpb24oaW5wdXQpCglpZiBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Nb3VzZUJ1dHRvbjEKCQlvciBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Ub3VjaCB0aGVuCgkJZHJhZ2dpbmcgPSB0cnVlCgkJZHJhZ1N0YXJ0ID0gaW5wdXQuUG9zaXRpb24KCQlzdGFydFBvcyA9IGd1aS5Qb3NpdGlvbgoJCWxhc3RNb3VzZVBvcyA9IFVzZXJJbnB1dFNlcnZpY2U6R2V0TW91c2VMb2NhdGlvbigpCgoJCWlucHV0LkNoYW5nZWQ6Q29ubmVjdChmdW5jdGlvbigpCgkJCWlmIGlucHV0LlVzZXJJbnB1dFN0YXRlID09IEVudW0uVXNlcklucHV0U3RhdGUuRW5kIHRoZW4KCQkJCWRyYWdnaW5nID0gZmFsc2UKCQkJZW5kCgkJZW5kKQoJZW5kCmVuZCkKCmd1aS5JbnB1dENoYW5nZWQ6Q29ubmVjdChmdW5jdGlvbihpbnB1dCkKCWlmIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLk1vdXNlTW92ZW1lbnQKCQlvciBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Ub3VjaCB0aGVuCgkJZHJhZ0lucHV0ID0gaW5wdXQKCWVuZAplbmQpCgplbnYuWFRXX0RSQUdfSEIgPSBSdW5TZXJ2aWNlLkhlYXJ0YmVhdDpDb25uZWN0KFVwZGF0ZSkKZW5kLCBmdW5jdGlvbihlKQogICAgbG9jYWwgdGIgPSAiIgogICAgcGNhbGwoZnVuY3Rpb24oKSB0YiA9IGRlYnVnLnRyYWNlYmFjaygiIiwgMikgZW5kKQogICAgcmV0dXJuIHRvc3RyaW5nKGUpIC4uICJcbiIgLi4gdGIKZW5kKQppZiBub3QgX194dHdfb2sgdGhlbgogICAgbG9jYWwgZXJyU3RyID0gdG9zdHJpbmcoX194dHdfZXJyKQogICAgaWYgX194dHdfc2VsZiBhbmQgX194dHdfc2VsZi5TZXRBdHRyaWJ1dGUgdGhlbgogICAgICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19lcnJvciIsIGVyclN0cikgZW5kKQogICAgZW5kCiAgICBwY2FsbChmdW5jdGlvbigpIHdhcm4oIlt4dHddIEZBSUw6ICIgLi4gX194dHdfbmFtZSAuLiAiICgiIC4uIF9feHR3X2NscyAuLiAiKTogIiAuLiBlcnJTdHIpIGVuZCkKZW5k")
    local fn, cerr = loadstring(src, "@xtw:" .. tostring(s_5.Name))
    if not fn then
        compiledFail = compiledFail + 1
        compileErrors[#compileErrors + 1] = "Drag Mechanism (LocalScript): " .. tostring(cerr)
    else
        compiled = compiled + 1
        pcall(function() s_5.Source = src end)
        pcall(function() s_5.Parent = n[3] end)
        pcall(function() s_5.Disabled = false end)
    end
end
do
    local s_27 = n[27]
    local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIk1vdmVtZW50IiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgVXNlcklucHV0U2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVXNlcklucHV0U2VydmljZSIpCmxvY2FsIFJ1blNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlJ1blNlcnZpY2UiKQpsb2NhbCBUd2VlblNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlR3ZWVuU2VydmljZSIpCgpsb2NhbCBGUkFNRV9OQU1FID0gbmlsCgpsb2NhbCBmdW5jdGlvbiBnZXRFbnYoKQoJbG9jYWwgb2ssIGUgPSBwY2FsbChmdW5jdGlvbigpIHJldHVybiBnZXRnZW52IGFuZCBnZXRnZW52KCkgZW5kKQoJaWYgb2sgYW5kIHR5cGUoZSkgPT0gInRhYmxlIiB0aGVuIHJldHVybiBlIGVuZAoJcmV0dXJuIF9HCmVuZApsb2NhbCBlbnYgPSBnZXRFbnYoKQoKbG9jYWwgZ3VpID0gbmlsCgppZiBlbnYgYW5kIGVudi5YVFdfRVhQQU5EX1RBUkdFVCB0aGVuCglsb2NhbCB0ID0gZW52LlhUV19FWFBBTkRfVEFSR0VUCglpZiB0eXBlb2YodCkgPT0gIkluc3RhbmNlIiBhbmQgdDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCQlndWkgPSB0CgllbmQKZW5kCgppZiBub3QgZ3VpIGFuZCBGUkFNRV9OQU1FIHRoZW4KCWxvY2FsIHBsYXllciA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpLkxvY2FsUGxheWVyCglsb2NhbCBwZyA9IHBsYXllcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlBsYXllckd1aSIpCglpZiBwZyB0aGVuCgkJZm9yIF8sIGQgaW4gaXBhaXJzKHBnOkdldERlc2NlbmRhbnRzKCkpIGRvCgkJCWlmIGQ6SXNBKCJHdWlPYmplY3QiKSBhbmQgZC5OYW1lID09IEZSQU1FX05BTUUgdGhlbgoJCQkJZ3VpID0gZAoJCQkJYnJlYWsKCQkJZW5kCgkJZW5kCgllbmQKZW5kCgppZiBub3QgZ3VpIHRoZW4KCXBjYWxsKGZ1bmN0aW9uKCkKCQlsb2NhbCBwID0gc2NyaXB0IGFuZCBzY3JpcHQuUGFyZW50CgkJaWYgcCBhbmQgcDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCQkJZ3VpID0gcAoJCWVuZAoJZW5kKQplbmQKCmlmIG5vdCBndWkgdGhlbgoJd2FybigiW0V4cGFuZF0gTm8gdGFyZ2V0IGZyYW1lLiIpCglyZXR1cm4KZW5kCgppZiBlbnYuWFRXX0VYUEFORF9IQiB0aGVuCglwY2FsbChmdW5jdGlvbigpIGVudi5YVFdfRVhQQU5EX0hCOkRpc2Nvbm5lY3QoKSBlbmQpCmVuZAoKbG9jYWwgcGFyZW50ID0gZ3VpLlBhcmVudAoKZ3VpLkFjdGl2ZSA9IHRydWUKCmxvY2FsIHBhcmVudERyYWcgPSBuaWwKZG8KCWxvY2FsIG5vZGUgPSBwYXJlbnQKCXdoaWxlIG5vZGUgZG8KCQlsb2NhbCBzID0gbm9kZTpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIkxvY2FsU2NyaXB0IikKCQlpZiBzIGFuZCBzIH49IHNjcmlwdCB0aGVuCgkJCXBhcmVudERyYWcgPSBzCgkJCWJyZWFrCgkJZW5kCgkJbm9kZSA9IG5vZGUuUGFyZW50CgllbmQKZW5kCgpmb3IgXywgYyBpbiBpcGFpcnMoZ3VpOkdldENoaWxkcmVuKCkpIGRvCglpZiBjLk5hbWUgPT0gIkhlYWRlciIgYW5kIGM6SXNBKCJUZXh0QnV0dG9uIikgdGhlbgoJCWM6RGVzdHJveSgpCgllbmQKZW5kCgpsb2NhbCBoZWFkZXIgPSBJbnN0YW5jZS5uZXcoIlRleHRCdXR0b24iKQpoZWFkZXIuTmFtZSA9ICJIZWFkZXIiCmhlYWRlci5UZXh0ID0gIiIKaGVhZGVyLkF1dG9CdXR0b25Db2xvciA9IGZhbHNlCmhlYWRlci5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQpoZWFkZXIuQWN0aXZlID0gdHJ1ZQpoZWFkZXIuWkluZGV4ID0gMTAKaGVhZGVyLlNpemUgPSBVRGltMi5uZXcoMSwgMCwgMSwgMCkKaGVhZGVyLlBhcmVudCA9IGd1aQoKbG9jYWwgcm93cyA9IHt9CmZvciBfLCBjIGluIGlwYWlycyhndWk6R2V0Q2hpbGRyZW4oKSkgZG8KCWlmIGM6SXNBKCJGcmFtZSIpIGFuZCBjIH49IGhlYWRlciBhbmQgYzpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIkxvY2FsU2NyaXB0IikgdGhlbgoJCXJvd3NbI3Jvd3MgKyAxXSA9IGMKCWVuZAplbmQKdGFibGUuc29ydChyb3dzLCBmdW5jdGlvbihhLCBiKQoJaWYgYS5MYXlvdXRPcmRlciB+PSBiLkxheW91dE9yZGVyIHRoZW4KCQlyZXR1cm4gYS5MYXlvdXRPcmRlciA8IGIuTGF5b3V0T3JkZXIKCWVuZAoJcmV0dXJuIGEuTmFtZSA8IGIuTmFtZQplbmQpCgpmb3IgXywgciBpbiBpcGFpcnMocm93cykgZG8KCXIuVmlzaWJsZSA9IGZhbHNlCmVuZAoKbG9jYWwgZHJhZ2dpbmcgPSBmYWxzZQpsb2NhbCBkcmFnSW5wdXQKbG9jYWwgZHJhZ1N0YXJ0CmxvY2FsIHN0YXJ0UG9zCgpsb2NhbCBsYXN0TW91c2VQb3MKbG9jYWwgbGFzdEdvYWxQb3MKbG9jYWwgRFJBR19TUEVFRCA9IDQwCgpsb2NhbCBleHBhbmRlZCA9IGZhbHNlCmxvY2FsIGFuaW1hdGluZyA9IGZhbHNlCmxvY2FsIGNvbGxhcHNlZEhlaWdodCA9IG5pbApsb2NhbCByb3dIZWlnaHRzID0ge30KbG9jYWwgZXhwYW5kZWRIZWlnaHQgPSAwCmxvY2FsIHByZXNzUG9zID0gbmlsCmxvY2FsIG1vdmVkID0gZmFsc2UKCmZ1bmN0aW9uIExlcnAoYSwgYiwgbSkKCXJldHVybiBhICsgKGIgLSBhKSAqIG0KZW5kCgpsb2NhbCBmdW5jdGlvbiBjbGFtcEdvYWwocG9zKQoJaWYgbm90IHBhcmVudCB0aGVuIHJldHVybiBwb3MgZW5kCgoJbG9jYWwgcHcgPSBwYXJlbnQuQWJzb2x1dGVTaXplLlgKCWxvY2FsIHBoID0gcGFyZW50LkFic29sdXRlU2l6ZS5ZCglsb2NhbCBndyA9IGd1aS5BYnNvbHV0ZVNpemUuWAoJbG9jYWwgZ2ggPSBndWkuQWJzb2x1dGVTaXplLlkKCWxvY2FsIGF4ID0gZ3VpLkFuY2hvclBvaW50LlgKCWxvY2FsIGF5ID0gZ3VpLkFuY2hvclBvaW50LlkKCglsb2NhbCBtaW5YID0gYXggKiBndyAtIHBvcy5YLlNjYWxlICogcHcKCWxvY2FsIG1heFggPSBtaW5YICsgKHB3IC0gZ3cpCglsb2NhbCBtaW5ZID0gYXkgKiBnaCAtIHBvcy5ZLlNjYWxlICogcGgKCWxvY2FsIG1heFkgPSBtaW5ZICsgKHBoIC0gZ2gpCgoJbG9jYWwgZnVuY3Rpb24gZml0KHYsIGxvLCBoaSkKCQlpZiBsbyA+IGhpIHRoZW4KCQkJcmV0dXJuIChsbyArIGhpKSAqIDAuNQoJCWVuZAoJCXJldHVybiBtYXRoLmNsYW1wKHYsIGxvLCBoaSkKCWVuZAoKCXJldHVybiBVRGltMi5uZXcoCgkJcG9zLlguU2NhbGUsCgkJZml0KHBvcy5YLk9mZnNldCwgbWluWCwgbWF4WCksCgkJcG9zLlkuU2NhbGUsCgkJZml0KHBvcy5ZLk9mZnNldCwgbWluWSwgbWF4WSkKCSkKZW5kCgpsb2NhbCBmdW5jdGlvbiBjYXB0dXJlU2l6ZXMoKQoJY29sbGFwc2VkSGVpZ2h0ID0gZ3VpLkFic29sdXRlU2l6ZS5ZCglpZiBjb2xsYXBzZWRIZWlnaHQgPD0gMCB0aGVuCgkJY29sbGFwc2VkSGVpZ2h0ID0gMzAKCWVuZAoJZm9yIGksIHIgaW4gaXBhaXJzKHJvd3MpIGRvCgkJcm93SGVpZ2h0c1tpXSA9IG1hdGgubWF4KHIuQWJzb2x1dGVTaXplLlksIDIwKQoJZW5kCgloZWFkZXIuU2l6ZSA9IFVEaW0yLm5ldygxLCAwLCAwLCBjb2xsYXBzZWRIZWlnaHQpCmVuZAoKbG9jYWwgZnVuY3Rpb24gbGF5b3V0Um93cygpCglsb2NhbCB5ID0gY29sbGFwc2VkSGVpZ2h0ICsgNgoJZm9yIGksIHIgaW4gaXBhaXJzKHJvd3MpIGRvCgkJci5Qb3NpdGlvbiA9IFVEaW0yLm5ldygwLCA2LCAwLCB5KQoJCXIuU2l6ZSA9IFVEaW0yLm5ldygxLCAtMTIsIDAsIHJvd0hlaWdodHNbaV0pCgkJeSA9IHkgKyByb3dIZWlnaHRzW2ldICsgNgoJZW5kCglleHBhbmRlZEhlaWdodCA9IHkKZW5kCgpsb2NhbCBmdW5jdGlvbiB0b2dnbGVFeHBhbmQoKQoJaWYgYW5pbWF0aW5nIG9yIG5vdCBwYXJlbnQgdGhlbiByZXR1cm4gZW5kCglpZiBub3QgY29sbGFwc2VkSGVpZ2h0IHRoZW4KCQljYXB0dXJlU2l6ZXMoKQoJZW5kCgoJYW5pbWF0aW5nID0gdHJ1ZQoKCWxvY2FsIHdpbGxFeHBhbmQgPSBub3QgZXhwYW5kZWQKCWxvY2FsIHRhcmdldEggPSB3aWxsRXhwYW5kIGFuZCBleHBhbmRlZEhlaWdodCBvciBjb2xsYXBzZWRIZWlnaHQKCglpZiB3aWxsRXhwYW5kIHRoZW4KCQlsYXlvdXRSb3dzKCkKCQlmb3IgXywgciBpbiBpcGFpcnMocm93cykgZG8KCQkJci5WaXNpYmxlID0gdHJ1ZQoJCWVuZAoJZW5kCgoJbG9jYWwgcGggPSBwYXJlbnQuQWJzb2x1dGVTaXplLlkKCWxvY2FsIHNjYWxlWSA9IGd1aS5Qb3NpdGlvbi5ZLlNjYWxlCglsb2NhbCBheSA9IGd1aS5BbmNob3JQb2ludC5ZCglsb2NhbCBjdXJUb3AgPSBndWkuQWJzb2x1dGVQb3NpdGlvbi5ZIC0gcGFyZW50LkFic29sdXRlUG9zaXRpb24uWQoJbG9jYWwgdGFyZ2V0VG9wID0gY3VyVG9wCglpZiB0YXJnZXRUb3AgKyB0YXJnZXRIID4gcGggdGhlbgoJCXRhcmdldFRvcCA9IG1hdGgubWF4KHBoIC0gdGFyZ2V0SCwgMCkKCWVuZAoKCWd1aS5DbGlwc0Rlc2NlbmRhbnRzID0gdHJ1ZQoKCVR3ZWVuU2VydmljZTpDcmVhdGUoZ3VpLCBUd2VlbkluZm8ubmV3KDAuMjUsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uT3V0KSwgewoJCVNpemUgPSBVRGltMi5uZXcoZ3VpLlNpemUuWC5TY2FsZSwgZ3VpLlNpemUuWC5PZmZzZXQsIDAsIHRhcmdldEgpLAoJCVBvc2l0aW9uID0gVURpbTIubmV3KGd1aS5Qb3NpdGlvbi5YLlNjYWxlLCBndWkuUG9zaXRpb24uWC5PZmZzZXQsIHNjYWxlWSwgdGFyZ2V0VG9wICsgYXkgKiB0YXJnZXRIIC0gc2NhbGVZICogcGgpLAoJfSk6UGxheSgpCgoJdGFzay5kZWxheSgwLjI2LCBmdW5jdGlvbigpCgkJaWYgd2lsbEV4cGFuZCB0aGVuCgkJCWd1aS5DbGlwc0Rlc2NlbmRhbnRzID0gZmFsc2UKCQllbHNlCgkJCWZvciBfLCByIGluIGlwYWlycyhyb3dzKSBkbwoJCQkJci5WaXNpYmxlID0gZmFsc2UKCQkJZW5kCgkJCWd1aS5DbGlwc0Rlc2NlbmRhbnRzID0gZmFsc2UKCQllbmQKCQlsYXN0R29hbFBvcyA9IGd1aS5Qb3NpdGlvbgoJCWFuaW1hdGluZyA9IGZhbHNlCgllbmQpCgoJZXhwYW5kZWQgPSB3aWxsRXhwYW5kCmVuZAoKZnVuY3Rpb24gVXBkYXRlKGR0KQoJaWYgYW5pbWF0aW5nIHRoZW4gcmV0dXJuIGVuZAoJaWYgbm90IHN0YXJ0UG9zIHRoZW4gcmV0dXJuIGVuZAoJbG9jYWwgYSA9IG1hdGgubWluKGR0ICogRFJBR19TUEVFRCwgMSkKCglpZiBkcmFnZ2luZyB0aGVuCgkJbG9jYWwgbW91c2UgPSBVc2VySW5wdXRTZXJ2aWNlOkdldE1vdXNlTG9jYXRpb24oKQoJCWlmIG5vdCBtb3ZlZCBhbmQgcHJlc3NQb3MKCQkJYW5kIChtYXRoLmFicyhtb3VzZS5YIC0gcHJlc3NQb3MuWCkgPiA1IG9yIG1hdGguYWJzKG1vdXNlLlkgLSBwcmVzc1Bvcy5ZKSA+IDUpIHRoZW4KCQkJbW92ZWQgPSB0cnVlCgkJZW5kCgkJbG9jYWwgZGVsdGEgPSAobGFzdE1vdXNlUG9zIC0gbW91c2UpCgkJbG9jYWwgeEdvYWwgPSAoc3RhcnRQb3MuWC5PZmZzZXQgLSBkZWx0YS5YKQoJCWxvY2FsIHlHb2FsID0gKHN0YXJ0UG9zLlkuT2Zmc2V0IC0gZGVsdGEuWSkKCQlsYXN0R29hbFBvcyA9IGNsYW1wR29hbChVRGltMi5uZXcoc3RhcnRQb3MuWC5TY2FsZSwgeEdvYWwsIHN0YXJ0UG9zLlkuU2NhbGUsIHlHb2FsKSkKCgkJZ3VpLlBvc2l0aW9uID0gVURpbTIubmV3KAoJCQlzdGFydFBvcy5YLlNjYWxlLAoJCQlMZXJwKGd1aS5Qb3NpdGlvbi5YLk9mZnNldCwgbGFzdEdvYWxQb3MuWC5PZmZzZXQsIGEpLAoJCQlzdGFydFBvcy5ZLlNjYWxlLAoJCQlMZXJwKGd1aS5Qb3NpdGlvbi5ZLk9mZnNldCwgbGFzdEdvYWxQb3MuWS5PZmZzZXQsIGEpCgkJKQoJZWxzZQoJCWlmIGxhc3RHb2FsUG9zIHRoZW4KCQkJZ3VpLlBvc2l0aW9uID0gVURpbTIubmV3KAoJCQkJc3RhcnRQb3MuWC5TY2FsZSwKCQkJCUxlcnAoZ3VpLlBvc2l0aW9uLlguT2Zmc2V0LCBsYXN0R29hbFBvcy5YLk9mZnNldCwgYSksCgkJCQlzdGFydFBvcy5ZLlNjYWxlLAoJCQkJTGVycChndWkuUG9zaXRpb24uWS5PZmZzZXQsIGxhc3RHb2FsUG9zLlkuT2Zmc2V0LCBhKQoJCQkpCgkJZW5kCgllbmQKZW5kCgpsb2NhbCBpbml0aWFsaXplZCA9IGZhbHNlCmxvY2FsIGZ1bmN0aW9uIGluaXRFeHBhbmRlZCgpCglpZiBpbml0aWFsaXplZCB0aGVuIHJldHVybiBlbmQKCWlmIG5vdCBwYXJlbnQgb3IgZ3VpLkFic29sdXRlU2l6ZS5ZIDw9IDAgdGhlbiByZXR1cm4gZW5kCglpbml0aWFsaXplZCA9IHRydWUKCgljYXB0dXJlU2l6ZXMoKQoJbGF5b3V0Um93cygpCglmb3IgXywgciBpbiBpcGFpcnMocm93cykgZG8KCQlyLlZpc2libGUgPSB0cnVlCgllbmQKCglsb2NhbCBwaCA9IHBhcmVudC5BYnNvbHV0ZVNpemUuWQoJbG9jYWwgc2NhbGVZID0gZ3VpLlBvc2l0aW9uLlkuU2NhbGUKCWxvY2FsIGF5ID0gZ3VpLkFuY2hvclBvaW50LlkKCWxvY2FsIGN1clRvcCA9IGd1aS5BYnNvbHV0ZVBvc2l0aW9uLlkgLSBwYXJlbnQuQWJzb2x1dGVQb3NpdGlvbi5ZCglsb2NhbCB0YXJnZXRUb3AgPSBjdXJUb3AKCWlmIHRhcmdldFRvcCArIGV4cGFuZGVkSGVpZ2h0ID4gcGggdGhlbgoJCXRhcmdldFRvcCA9IG1hdGgubWF4KHBoIC0gZXhwYW5kZWRIZWlnaHQsIDApCgllbmQKCglndWkuU2l6ZSA9IFVEaW0yLm5ldyhndWkuU2l6ZS5YLlNjYWxlLCBndWkuU2l6ZS5YLk9mZnNldCwgMCwgZXhwYW5kZWRIZWlnaHQpCglndWkuUG9zaXRpb24gPSBVRGltMi5uZXcoZ3VpLlBvc2l0aW9uLlguU2NhbGUsIGd1aS5Qb3NpdGlvbi5YLk9mZnNldCwgc2NhbGVZLCB0YXJnZXRUb3AgKyBheSAqIGV4cGFuZGVkSGVpZ2h0IC0gc2NhbGVZICogcGgpCglndWkuQ2xpcHNEZXNjZW5kYW50cyA9IGZhbHNlCglleHBhbmRlZCA9IHRydWUKZW5kCgppZiBndWkuQWJzb2x1dGVTaXplLlkgPiAwIHRoZW4KCXRhc2suZGVmZXIoaW5pdEV4cGFuZGVkKQplbHNlCglsb2NhbCBjb25uCgljb25uID0gZ3VpOkdldFByb3BlcnR5Q2hhbmdlZFNpZ25hbCgiQWJzb2x1dGVTaXplIik6Q29ubmVjdChmdW5jdGlvbigpCgkJaWYgZ3VpLkFic29sdXRlU2l6ZS5ZID4gMCB0aGVuCgkJCWNvbm46RGlzY29ubmVjdCgpCgkJCWluaXRFeHBhbmRlZCgpCgkJZW5kCgllbmQpCmVuZAoKaGVhZGVyLklucHV0QmVnYW46Q29ubmVjdChmdW5jdGlvbihpbnB1dCkKCWlmIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLk1vdXNlQnV0dG9uMSBvciBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Ub3VjaCB0aGVuCgkJaWYgbm90IGNvbGxhcHNlZEhlaWdodCB0aGVuCgkJCWNhcHR1cmVTaXplcygpCgkJZW5kCgoJCWRyYWdnaW5nID0gdHJ1ZQoJCWRyYWdTdGFydCA9IGlucHV0LlBvc2l0aW9uCgkJc3RhcnRQb3MgPSBndWkuUG9zaXRpb24KCQlsYXN0TW91c2VQb3MgPSBVc2VySW5wdXRTZXJ2aWNlOkdldE1vdXNlTG9jYXRpb24oKQoJCXByZXNzUG9zID0gbGFzdE1vdXNlUG9zCgkJbW92ZWQgPSBmYWxzZQoKCQlsb2NhbCB3YXNFbmFibGVkID0gbmlsCgkJaWYgcGFyZW50RHJhZyB0aGVuCgkJCXdhc0VuYWJsZWQgPSBub3QgcGFyZW50RHJhZy5EaXNhYmxlZAoJCQlwYXJlbnREcmFnLkRpc2FibGVkID0gdHJ1ZQoJCWVuZAoKCQlpbnB1dC5DaGFuZ2VkOkNvbm5lY3QoZnVuY3Rpb24oKQoJCQlpZiBpbnB1dC5Vc2VySW5wdXRTdGF0ZSA9PSBFbnVtLlVzZXJJbnB1dFN0YXRlLkVuZCB0aGVuCgkJCQlkcmFnZ2luZyA9IGZhbHNlCgkJCQlpZiBwYXJlbnREcmFnIGFuZCB3YXNFbmFibGVkIHRoZW4KCQkJCQlwYXJlbnREcmFnLkRpc2FibGVkID0gZmFsc2UKCQkJCWVuZAoJCQllbmQKCQllbmQpCgllbmQKZW5kKQoKaGVhZGVyLkFjdGl2YXRlZDpDb25uZWN0KGZ1bmN0aW9uKCkKCWlmIG5vdCBtb3ZlZCB0aGVuCgkJdG9nZ2xlRXhwYW5kKCkKCWVuZAplbmQpCgpoZWFkZXIuSW5wdXRDaGFuZ2VkOkNvbm5lY3QoZnVuY3Rpb24oaW5wdXQpCglpZiBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Nb3VzZU1vdmVtZW50IG9yIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLlRvdWNoIHRoZW4KCQlkcmFnSW5wdXQgPSBpbnB1dAoJZW5kCmVuZCkKCmVudi5YVFdfRVhQQU5EX0hCID0gUnVuU2VydmljZS5IZWFydGJlYXQ6Q29ubmVjdChVcGRhdGUpCmVuZCwgZnVuY3Rpb24oZSkKICAgIGxvY2FsIHRiID0gIiIKICAgIHBjYWxsKGZ1bmN0aW9uKCkgdGIgPSBkZWJ1Zy50cmFjZWJhY2soIiIsIDIpIGVuZCkKICAgIHJldHVybiB0b3N0cmluZyhlKSAuLiAiXG4iIC4uIHRiCmVuZCkKaWYgbm90IF9feHR3X29rIHRoZW4KICAgIGxvY2FsIGVyclN0ciA9IHRvc3RyaW5nKF9feHR3X2VycikKICAgIGlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgICAgICBwY2FsbChmdW5jdGlvbigpIF9feHR3X3NlbGY6U2V0QXR0cmlidXRlKCJ4dHdfZXJyb3IiLCBlcnJTdHIpIGVuZCkKICAgIGVuZAogICAgcGNhbGwoZnVuY3Rpb24oKSB3YXJuKCJbeHR3XSBGQUlMOiAiIC4uIF9feHR3X25hbWUgLi4gIiAoIiAuLiBfX3h0d19jbHMgLi4gIik6ICIgLi4gZXJyU3RyKSBlbmQpCmVuZA==")
    local fn, cerr = loadstring(src, "@xtw:" .. tostring(s_27.Name))
    if not fn then
        compiledFail = compiledFail + 1
        compileErrors[#compileErrors + 1] = "Movement (LocalScript): " .. tostring(cerr)
    else
        compiled = compiled + 1
        pcall(function() s_27.Source = src end)
        pcall(function() s_27.Parent = n[26] end)
        pcall(function() s_27.Disabled = false end)
    end
end
do
    local s_13 = n[13]
    local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkZ1bmN0aW9uIiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgUnVuU2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiUnVuU2VydmljZSIpCmxvY2FsIFR3ZWVuU2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVHdlZW5TZXJ2aWNlIikKCmxvY2FsIExBQkVMX05BTUUgPSBuaWwKCmxvY2FsIGZ1bmN0aW9uIGdldEVudigpCglsb2NhbCBvaywgZSA9IHBjYWxsKGZ1bmN0aW9uKCkgcmV0dXJuIGdldGdlbnYgYW5kIGdldGdlbnYoKSBlbmQpCglpZiBvayBhbmQgdHlwZShlKSA9PSAidGFibGUiIHRoZW4gcmV0dXJuIGUgZW5kCglyZXR1cm4gX0cKZW5kCmxvY2FsIGVudiA9IGdldEVudigpCgpsb2NhbCBsYWJlbCA9IG5pbAoKaWYgZW52IGFuZCBlbnYuWFRXX0ZQU19MQUJFTCB0aGVuCglsb2NhbCB0ID0gZW52LlhUV19GUFNfTEFCRUwKCWlmIHR5cGVvZih0KSA9PSAiSW5zdGFuY2UiIGFuZCB0OklzQSgiVGV4dExhYmVsIikgdGhlbgoJCWxhYmVsID0gdAoJZW5kCmVuZAoKaWYgbm90IGxhYmVsIGFuZCBMQUJFTF9OQU1FIHRoZW4KCWxvY2FsIHBsYXllciA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpLkxvY2FsUGxheWVyCglsb2NhbCBwZyA9IHBsYXllcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlBsYXllckd1aSIpCglpZiBwZyB0aGVuCgkJZm9yIF8sIGQgaW4gaXBhaXJzKHBnOkdldERlc2NlbmRhbnRzKCkpIGRvCgkJCWlmIGQ6SXNBKCJUZXh0TGFiZWwiKSBhbmQgZC5OYW1lID09IExBQkVMX05BTUUgdGhlbgoJCQkJbGFiZWwgPSBkCgkJCQlicmVhawoJCQllbmQKCQllbmQKCWVuZAplbmQKCmlmIG5vdCBsYWJlbCB0aGVuCglwY2FsbChmdW5jdGlvbigpCgkJbG9jYWwgcCA9IHNjcmlwdCBhbmQgc2NyaXB0LlBhcmVudAoJCWlmIHAgYW5kIHA6SXNBKCJUZXh0TGFiZWwiKSB0aGVuCgkJCWxhYmVsID0gcAoJCWVsc2VpZiBwIHRoZW4KCQkJbGFiZWwgPSBwOkZpbmRGaXJzdENoaWxkV2hpY2hJc0EoIlRleHRMYWJlbCIsIHRydWUpCgkJZW5kCgllbmQpCmVuZAoKaWYgbm90IGxhYmVsIG9yIG5vdCBsYWJlbDpJc0EoIlRleHRMYWJlbCIpIHRoZW4KCXdhcm4oIltGUFNdIE5vIHRhcmdldCBUZXh0TGFiZWwuIikKCXJldHVybgplbmQKCmlmIGVudi5YVFdfRlBTX0hCIHRoZW4KCXBjYWxsKGZ1bmN0aW9uKCkgZW52LlhUV19GUFNfSEI6RGlzY29ubmVjdCgpIGVuZCkKZW5kCgpsb2NhbCByb3cgPSBuaWwKbG9jYWwgc3RhcnRlZCA9IGZhbHNlCmxvY2FsIGRpZ2l0cyA9IHt9Cgpsb2NhbCBmdW5jdGlvbiBidWlsZFJvdygpCglyb3cgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKCXJvdy5OYW1lID0gIkZwc1JvdyIKCXJvdy5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJcm93LlBvc2l0aW9uID0gbGFiZWwuUG9zaXRpb24KCXJvdy5BbmNob3JQb2ludCA9IGxhYmVsLkFuY2hvclBvaW50Cglyb3cuU2l6ZSA9IGxhYmVsLlNpemUKCXJvdy5aSW5kZXggPSBsYWJlbC5aSW5kZXgKCXJvdy5QYXJlbnQgPSBsYWJlbC5QYXJlbnQKCglsb2NhbCBsYXlvdXQgPSBJbnN0YW5jZS5uZXcoIlVJTGlzdExheW91dCIpCglsYXlvdXQuRmlsbERpcmVjdGlvbiA9IEVudW0uRmlsbERpcmVjdGlvbi5Ib3Jpem9udGFsCglsYXlvdXQuU29ydE9yZGVyID0gRW51bS5Tb3J0T3JkZXIuTGF5b3V0T3JkZXIKCWxheW91dC5QYWRkaW5nID0gVURpbS5uZXcoKQoJbGF5b3V0LlZlcnRpY2FsQWxpZ25tZW50ID0gRW51bS5WZXJ0aWNhbEFsaWdubWVudC5DZW50ZXIKCWxvY2FsIGFsaWduID0gbGFiZWwuVGV4dFhBbGlnbm1lbnQKCWlmIGFsaWduID09IEVudW0uVGV4dFhBbGlnbm1lbnQuQ2VudGVyIHRoZW4KCQlsYXlvdXQuSG9yaXpvbnRhbEFsaWdubWVudCA9IEVudW0uSG9yaXpvbnRhbEFsaWdubWVudC5DZW50ZXIKCWVsc2VpZiBhbGlnbiA9PSBFbnVtLlRleHRYQWxpZ25tZW50LlJpZ2h0IHRoZW4KCQlsYXlvdXQuSG9yaXpvbnRhbEFsaWdubWVudCA9IEVudW0uSG9yaXpvbnRhbEFsaWdubWVudC5SaWdodAoJZWxzZQoJCWxheW91dC5Ib3Jpem9udGFsQWxpZ25tZW50ID0gRW51bS5Ib3Jpem9udGFsQWxpZ25tZW50LkxlZnQKCWVuZAoJbGF5b3V0LlBhcmVudCA9IHJvdwoKCWxvY2FsIHJlbmRlcmVkID0gbGFiZWwuVGV4dEJvdW5kcy5ZCglpZiBsYWJlbC5UZXh0U2NhbGVkIHRoZW4KCQlsYWJlbC5UZXh0U2NhbGVkID0gZmFsc2UKCQlsYWJlbC5UZXh0U2l6ZSA9IG1hdGgubWF4KDEsIG1hdGguZmxvb3IocmVuZGVyZWQgPiAwIGFuZCByZW5kZXJlZCBvciBsYWJlbC5BYnNvbHV0ZVNpemUuWSAqIDAuNykpCgllbmQKCglsYWJlbC5UZXh0V3JhcHBlZCA9IGZhbHNlCglsYWJlbC5UZXh0ID0gIkZQUzogIgoJbGFiZWwuUG9zaXRpb24gPSBVRGltMi5mcm9tT2Zmc2V0KDAsIDApCglsYWJlbC5BbmNob3JQb2ludCA9IFZlY3RvcjIubmV3KCkKCWxhYmVsLlNpemUgPSBVRGltMi5uZXcoMCwgMCwgMSwgMCkKCWxhYmVsLkF1dG9tYXRpY1NpemUgPSBFbnVtLkF1dG9tYXRpY1NpemUuWAoJbGFiZWwuTGF5b3V0T3JkZXIgPSAwCglsYWJlbC5QYXJlbnQgPSByb3cKZW5kCgpsb2NhbCBmdW5jdGlvbiBtYWtlRGlnaXQoaSkKCWxvY2FsIGQgPSBsYWJlbDpDbG9uZSgpCgoJZm9yIF8sIGMgaW4gaXBhaXJzKGQ6R2V0RGVzY2VuZGFudHMoKSkgZG8KCQlpZiBjOklzQSgiTHVhU291cmNlQ29udGFpbmVyIikgb3IgYzpJc0EoIlVJUGFkZGluZyIpIHRoZW4KCQkJYzpEZXN0cm95KCkKCQllbmQKCWVuZAoKCWQuTmFtZSA9ICJEaWdpdCIKCWQuVGV4dCA9ICIiCglkLlRleHRXcmFwcGVkID0gZmFsc2UKCWQuVGV4dFNjYWxlZCA9IGZhbHNlCglkLlBvc2l0aW9uID0gVURpbTIuZnJvbU9mZnNldCgwLCAwKQoJZC5BbmNob3JQb2ludCA9IFZlY3RvcjIubmV3KCkKCWQuU2l6ZSA9IFVEaW0yLm5ldygwLCAwLCAxLCAwKQoJZC5BdXRvbWF0aWNTaXplID0gRW51bS5BdXRvbWF0aWNTaXplLlgKCWQuTGF5b3V0T3JkZXIgPSBpCglkLlBhcmVudCA9IHJvdwoJcmV0dXJuIGQKZW5kCgpsb2NhbCBmdW5jdGlvbiBzZXROdW1iZXIobikKCWlmIG4gfj0gbiB0aGVuIHJldHVybiBlbmQKCWxvY2FsIHMgPSB0b3N0cmluZyhtYXRoLmNsYW1wKG1hdGguZmxvb3IobiArIDAuNSksIDAsIDk5OSkpCglpZiAjcyA+IDMgdGhlbiByZXR1cm4gZW5kCgoJaWYgbm90IHJvdyB0aGVuCgkJaWYgbGFiZWwuQWJzb2x1dGVTaXplLlkgPD0gMCB0aGVuIHJldHVybiBlbmQKCQlidWlsZFJvdygpCgllbmQKCglpZiAjcyB+PSAjZGlnaXRzIHRoZW4KCQlmb3IgXywgZCBpbiBpcGFpcnMoZGlnaXRzKSBkbyBkOkRlc3Ryb3koKSBlbmQKCQl0YWJsZS5jbGVhcihkaWdpdHMpCgoJCWxvY2FsIGZhZGVJbiA9IHN0YXJ0ZWQKCQlzdGFydGVkID0gdHJ1ZQoKCQlmb3IgaSA9IDEsICNzIGRvCgkJCWxvY2FsIGQgPSBtYWtlRGlnaXQoaSkKCQkJZGlnaXRzW2ldID0gZAoJCQlkLlRleHQgPSBzOnN1YihpLCBpKQoJCQlpZiBmYWRlSW4gdGhlbgoJCQkJZC5UZXh0VHJhbnNwYXJlbmN5ID0gMQoJCQkJVHdlZW5TZXJ2aWNlOkNyZWF0ZShkLCBUd2VlbkluZm8ubmV3KDAuMTIsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uT3V0KSwgewoJCQkJCVRleHRUcmFuc3BhcmVuY3kgPSAwCgkJCQl9KTpQbGF5KCkKCQkJZW5kCgkJZW5kCgllbHNlCgkJZm9yIGkgPSAxLCAjcyBkbwoJCQlsb2NhbCBjaCA9IHM6c3ViKGksIGkpCgkJCWxvY2FsIGQgPSBkaWdpdHNbaV0KCQkJaWYgY2ggfj0gZC5UZXh0IHRoZW4KCQkJCVR3ZWVuU2VydmljZTpDcmVhdGUoZCwgVHdlZW5JbmZvLm5ldygwLjEyLCBFbnVtLkVhc2luZ1N0eWxlLlF1YWQsIEVudW0uRWFzaW5nRGlyZWN0aW9uLkluKSwgewoJCQkJCVRleHRUcmFuc3BhcmVuY3kgPSAxCgkJCQl9KTpQbGF5KCkKCQkJCXRhc2suZGVsYXkoMC4xMiwgZnVuY3Rpb24oKQoJCQkJCWlmIGQuUGFyZW50IHRoZW4KCQkJCQkJZC5UZXh0ID0gY2gKCQkJCQkJVHdlZW5TZXJ2aWNlOkNyZWF0ZShkLCBUd2VlbkluZm8ubmV3KDAuMTIsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uT3V0KSwgewoJCQkJCQkJVGV4dFRyYW5zcGFyZW5jeSA9IDAKCQkJCQkJfSk6UGxheSgpCgkJCQkJZW5kCgkJCQllbmQpCgkJCWVuZAoJCWVuZAoJZW5kCmVuZAoKbG9jYWwgZnJhbWVzLCBlbGFwc2VkID0gMCwgMApsb2NhbCBzYW1wbGVzID0ge30KCmVudi5YVFdfRlBTX0hCID0gUnVuU2VydmljZS5SZW5kZXJTdGVwcGVkOkNvbm5lY3QoZnVuY3Rpb24oZHQpCglpZiBkdCA+IDAgdGhlbgoJCWZyYW1lcyArPSAxCgkJZWxhcHNlZCArPSBkdAoJZW5kCglpZiBlbGFwc2VkID49IDEgdGhlbgoJCXNhbXBsZXNbI3NhbXBsZXMgKyAxXSA9IG1hdGguY2xhbXAoZnJhbWVzIC8gZWxhcHNlZCwgMCwgOTk5KQoJCWlmICNzYW1wbGVzID4gMTAgdGhlbiB0YWJsZS5yZW1vdmUoc2FtcGxlcywgMSkgZW5kCgkJZnJhbWVzLCBlbGFwc2VkID0gMCwgMAoKCQlsb2NhbCBzdW0gPSAwCgkJZm9yIF8sIHYgaW4gaXBhaXJzKHNhbXBsZXMpIGRvIHN1bSArPSB2IGVuZAoJCXNldE51bWJlcihzdW0gLyAjc2FtcGxlcykKCWVuZAplbmQpCmVuZCwgZnVuY3Rpb24oZSkKICAgIGxvY2FsIHRiID0gIiIKICAgIHBjYWxsKGZ1bmN0aW9uKCkgdGIgPSBkZWJ1Zy50cmFjZWJhY2soIiIsIDIpIGVuZCkKICAgIHJldHVybiB0b3N0cmluZyhlKSAuLiAiXG4iIC4uIHRiCmVuZCkKaWYgbm90IF9feHR3X29rIHRoZW4KICAgIGxvY2FsIGVyclN0ciA9IHRvc3RyaW5nKF9feHR3X2VycikKICAgIGlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgICAgICBwY2FsbChmdW5jdGlvbigpIF9feHR3X3NlbGY6U2V0QXR0cmlidXRlKCJ4dHdfZXJyb3IiLCBlcnJTdHIpIGVuZCkKICAgIGVuZAogICAgcGNhbGwoZnVuY3Rpb24oKSB3YXJuKCJbeHR3XSBGQUlMOiAiIC4uIF9feHR3X25hbWUgLi4gIiAoIiAuLiBfX3h0d19jbHMgLi4gIik6ICIgLi4gZXJyU3RyKSBlbmQpCmVuZA==")
    local fn, cerr = loadstring(src, "@xtw:" .. tostring(s_13.Name))
    if not fn then
        compiledFail = compiledFail + 1
        compileErrors[#compileErrors + 1] = "Function (LocalScript): " .. tostring(cerr)
    else
        compiled = compiled + 1
        pcall(function() s_13.Source = src end)
        pcall(function() s_13.Parent = n[12] end)
        pcall(function() s_13.Disabled = false end)
    end
end
do
    local s_15 = n[15]
    local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkZ1bmN0aW9uIiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgUnVuU2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiUnVuU2VydmljZSIpCmxvY2FsIFR3ZWVuU2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVHdlZW5TZXJ2aWNlIikKbG9jYWwgUGxheWVycyA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpCgpsb2NhbCBMQUJFTF9OQU1FID0gbmlsCgpsb2NhbCBmdW5jdGlvbiBnZXRFbnYoKQoJbG9jYWwgb2ssIGUgPSBwY2FsbChmdW5jdGlvbigpIHJldHVybiBnZXRnZW52IGFuZCBnZXRnZW52KCkgZW5kKQoJaWYgb2sgYW5kIHR5cGUoZSkgPT0gInRhYmxlIiB0aGVuIHJldHVybiBlIGVuZAoJcmV0dXJuIF9HCmVuZApsb2NhbCBlbnYgPSBnZXRFbnYoKQoKbG9jYWwgbGFiZWwgPSBuaWwKCmlmIGVudiBhbmQgZW52LlhUV19QSU5HX0xBQkVMIHRoZW4KCWxvY2FsIHQgPSBlbnYuWFRXX1BJTkdfTEFCRUwKCWlmIHR5cGVvZih0KSA9PSAiSW5zdGFuY2UiIGFuZCB0OklzQSgiVGV4dExhYmVsIikgdGhlbgoJCWxhYmVsID0gdAoJZW5kCmVuZAoKaWYgbm90IGxhYmVsIGFuZCBMQUJFTF9OQU1FIHRoZW4KCWxvY2FsIHBnID0gUGxheWVycy5Mb2NhbFBsYXllcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlBsYXllckd1aSIpCglpZiBwZyB0aGVuCgkJZm9yIF8sIGQgaW4gaXBhaXJzKHBnOkdldERlc2NlbmRhbnRzKCkpIGRvCgkJCWlmIGQ6SXNBKCJUZXh0TGFiZWwiKSBhbmQgZC5OYW1lID09IExBQkVMX05BTUUgdGhlbgoJCQkJbGFiZWwgPSBkCgkJCQlicmVhawoJCQllbmQKCQllbmQKCWVuZAplbmQKCmlmIG5vdCBsYWJlbCB0aGVuCglwY2FsbChmdW5jdGlvbigpCgkJbG9jYWwgcCA9IHNjcmlwdCBhbmQgc2NyaXB0LlBhcmVudAoJCWlmIHAgYW5kIHA6SXNBKCJUZXh0TGFiZWwiKSB0aGVuCgkJCWxhYmVsID0gcAoJCWVsc2VpZiBwIHRoZW4KCQkJbGFiZWwgPSBwOkZpbmRGaXJzdENoaWxkV2hpY2hJc0EoIlRleHRMYWJlbCIsIHRydWUpCgkJZW5kCgllbmQpCmVuZAoKaWYgbm90IGxhYmVsIG9yIG5vdCBsYWJlbDpJc0EoIlRleHRMYWJlbCIpIHRoZW4KCXdhcm4oIltQaW5nXSBObyB0YXJnZXQgVGV4dExhYmVsLiIpCglyZXR1cm4KZW5kCgppZiBlbnYuWFRXX1BJTkdfVEhSRUFEIHRoZW4KCXBjYWxsKGZ1bmN0aW9uKCkgZW52LlhUV19QSU5HX1RIUkVBRCA9IG5pbCBlbmQpCmVuZAppZiBlbnYuWFRXX1BJTkdfSEIgdGhlbgoJcGNhbGwoZnVuY3Rpb24oKSBlbnYuWFRXX1BJTkdfSEI6RGlzY29ubmVjdCgpIGVuZCkKZW5kCgpsb2NhbCBwbGF5ZXIgPSBQbGF5ZXJzLkxvY2FsUGxheWVyCgpsb2NhbCByb3cgPSBuaWwKbG9jYWwgc3RhcnRlZCA9IGZhbHNlCmxvY2FsIGRpZ2l0cyA9IHt9CmxvY2FsIGN1ckNvbG9yID0gbmlsCgpsb2NhbCBmdW5jdGlvbiBidWlsZFJvdygpCglmb3IgXywgYyBpbiBpcGFpcnMobGFiZWw6R2V0Q2hpbGRyZW4oKSkgZG8KCQlpZiBjOklzQSgiVUlHcmFkaWVudCIpIHRoZW4KCQkJYzpEZXN0cm95KCkKCQllbmQKCWVuZAoKCXJvdyA9IEluc3RhbmNlLm5ldygiRnJhbWUiKQoJcm93LkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxCglyb3cuUG9zaXRpb24gPSBsYWJlbC5Qb3NpdGlvbgoJcm93LkFuY2hvclBvaW50ID0gbGFiZWwuQW5jaG9yUG9pbnQKCXJvdy5TaXplID0gbGFiZWwuU2l6ZQoJcm93LlpJbmRleCA9IGxhYmVsLlpJbmRleAoJcm93LlBhcmVudCA9IGxhYmVsLlBhcmVudAoKCWxvY2FsIGxheW91dCA9IEluc3RhbmNlLm5ldygiVUlMaXN0TGF5b3V0IikKCWxheW91dC5GaWxsRGlyZWN0aW9uID0gRW51bS5GaWxsRGlyZWN0aW9uLkhvcml6b250YWwKCWxheW91dC5Tb3J0T3JkZXIgPSBFbnVtLlNvcnRPcmRlci5MYXlvdXRPcmRlcgoJbGF5b3V0LlBhZGRpbmcgPSBVRGltLm5ldygpCglsYXlvdXQuVmVydGljYWxBbGlnbm1lbnQgPSBFbnVtLlZlcnRpY2FsQWxpZ25tZW50LkNlbnRlcgoJbG9jYWwgYWxpZ24gPSBsYWJlbC5UZXh0WEFsaWdubWVudAoJaWYgYWxpZ24gPT0gRW51bS5UZXh0WEFsaWdubWVudC5DZW50ZXIgdGhlbgoJCWxheW91dC5Ib3Jpem9udGFsQWxpZ25tZW50ID0gRW51bS5Ib3Jpem9udGFsQWxpZ25tZW50LkNlbnRlcgoJZWxzZWlmIGFsaWduID09IEVudW0uVGV4dFhBbGlnbm1lbnQuUmlnaHQgdGhlbgoJCWxheW91dC5Ib3Jpem9udGFsQWxpZ25tZW50ID0gRW51bS5Ib3Jpem9udGFsQWxpZ25tZW50LlJpZ2h0CgllbHNlCgkJbGF5b3V0Lkhvcml6b250YWxBbGlnbm1lbnQgPSBFbnVtLkhvcml6b250YWxBbGlnbm1lbnQuTGVmdAoJZW5kCglsYXlvdXQuUGFyZW50ID0gcm93CgoJbG9jYWwgaGVpZ2h0ID0gbGFiZWwuQWJzb2x1dGVTaXplLlkKCWxvY2FsIHJlbmRlcmVkID0gbGFiZWwuVGV4dEJvdW5kcy5ZCglpZiBsYWJlbC5UZXh0U2NhbGVkIHRoZW4KCQlsYWJlbC5UZXh0U2NhbGVkID0gZmFsc2UKCQlsYWJlbC5UZXh0U2l6ZSA9IG1hdGgubWF4KDEsIG1hdGguZmxvb3IocmVuZGVyZWQgPiAwIGFuZCByZW5kZXJlZCBvciBoZWlnaHQgKiAwLjcpKQoJZW5kCgoJbGFiZWwuVGV4dFdyYXBwZWQgPSBmYWxzZQoJbGFiZWwuVGV4dCA9ICJtcyIKCWxhYmVsLlBvc2l0aW9uID0gVURpbTIuZnJvbU9mZnNldCgwLCAwKQoJbGFiZWwuQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygpCglsYWJlbC5TaXplID0gVURpbTIubmV3KDAsIDAsIDEsIDApCglsYWJlbC5BdXRvbWF0aWNTaXplID0gRW51bS5BdXRvbWF0aWNTaXplLlgKCWxhYmVsLkxheW91dE9yZGVyID0gMTAwCglsYWJlbC5QYXJlbnQgPSByb3cKZW5kCgpsb2NhbCBmdW5jdGlvbiBtYWtlRGlnaXQoaSkKCWxvY2FsIGQgPSBsYWJlbDpDbG9uZSgpCglmb3IgXywgYyBpbiBpcGFpcnMoZDpHZXREZXNjZW5kYW50cygpKSBkbwoJCWlmIGM6SXNBKCJMdWFTb3VyY2VDb250YWluZXIiKSBvciBjOklzQSgiVUlQYWRkaW5nIikgb3IgYzpJc0EoIlVJR3JhZGllbnQiKSB0aGVuCgkJCWM6RGVzdHJveSgpCgkJZW5kCgllbmQKCglkLk5hbWUgPSAiRGlnaXQiCglkLlRleHQgPSAiIgoJZC5UZXh0V3JhcHBlZCA9IGZhbHNlCglkLlRleHRTY2FsZWQgPSBmYWxzZQoJZC5Qb3NpdGlvbiA9IFVEaW0yLmZyb21PZmZzZXQoMCwgMCkKCWQuQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygpCglkLlNpemUgPSBVRGltMi5uZXcoMCwgMCwgMSwgMCkKCWQuQXV0b21hdGljU2l6ZSA9IEVudW0uQXV0b21hdGljU2l6ZS5YCglkLkxheW91dE9yZGVyID0gaQoJZC5QYXJlbnQgPSByb3cKCXJldHVybiBkCmVuZAoKbG9jYWwgZnVuY3Rpb24gc2V0Q29sb3IobikKCWxvY2FsIHQgPSBtYXRoLmNsYW1wKG4gLyAyMDAsIDAsIDEpCglsb2NhbCBjb2wgPSBDb2xvcjMuZnJvbVJHQig4NSwgMjU1LCA4NSk6TGVycChDb2xvcjMuZnJvbVJHQigyNTUsIDAsIDApLCB0KQoJaWYgY3VyQ29sb3IgYW5kIG1hdGguYWJzKGN1ckNvbG9yLlIgLSBjb2wuUikgKyBtYXRoLmFicyhjdXJDb2xvci5HIC0gY29sLkcpICsgbWF0aC5hYnMoY3VyQ29sb3IuQiAtIGNvbC5CKSA8IDAuMDEgdGhlbgoJCXJldHVybgoJZW5kCgljdXJDb2xvciA9IGNvbAoKCWxvY2FsIHRpID0gVHdlZW5JbmZvLm5ldygwLjMsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uT3V0KQoJVHdlZW5TZXJ2aWNlOkNyZWF0ZShsYWJlbCwgdGksIHtUZXh0Q29sb3IzID0gY29sfSk6UGxheSgpCglmb3IgXywgZCBpbiBpcGFpcnMoZGlnaXRzKSBkbwoJCVR3ZWVuU2VydmljZTpDcmVhdGUoZCwgdGksIHtUZXh0Q29sb3IzID0gY29sfSk6UGxheSgpCgllbmQKZW5kCgpsb2NhbCBmdW5jdGlvbiBzZXRQaW5nKG4pCglpZiBuIH49IG4gdGhlbiByZXR1cm4gZW5kCgluID0gbWF0aC5jbGFtcChtYXRoLmZsb29yKG4gKyAwLjUpLCAwLCA5OTkpCglsb2NhbCBzID0gdG9zdHJpbmcobikKCWlmICNzID4gMyB0aGVuIHJldHVybiBlbmQKCglpZiBub3Qgcm93IHRoZW4KCQlpZiBsYWJlbC5BYnNvbHV0ZVNpemUuWSA8PSAwIHRoZW4gcmV0dXJuIGVuZAoJCWJ1aWxkUm93KCkKCWVuZAoKCWlmICNzIH49ICNkaWdpdHMgdGhlbgoJCWZvciBfLCBkIGluIGlwYWlycyhkaWdpdHMpIGRvIGQ6RGVzdHJveSgpIGVuZAoJCXRhYmxlLmNsZWFyKGRpZ2l0cykKCgkJbG9jYWwgZmFkZUluID0gc3RhcnRlZAoJCXN0YXJ0ZWQgPSB0cnVlCgoJCWZvciBpID0gMSwgI3MgZG8KCQkJbG9jYWwgZCA9IG1ha2VEaWdpdChpKQoJCQlkaWdpdHNbaV0gPSBkCgkJCWQuVGV4dCA9IHM6c3ViKGksIGkpCgkJCWlmIGZhZGVJbiB0aGVuCgkJCQlkLlRleHRUcmFuc3BhcmVuY3kgPSAxCgkJCQlUd2VlblNlcnZpY2U6Q3JlYXRlKGQsIFR3ZWVuSW5mby5uZXcoMC4xMiwgRW51bS5FYXNpbmdTdHlsZS5RdWFkLCBFbnVtLkVhc2luZ0RpcmVjdGlvbi5PdXQpLCB7CgkJCQkJVGV4dFRyYW5zcGFyZW5jeSA9IDAKCQkJCX0pOlBsYXkoKQoJCQllbmQKCQllbmQKCWVsc2UKCQlmb3IgaSA9IDEsICNzIGRvCgkJCWxvY2FsIGNoID0gczpzdWIoaSwgaSkKCQkJbG9jYWwgZCA9IGRpZ2l0c1tpXQoJCQlpZiBjaCB+PSBkLlRleHQgdGhlbgoJCQkJVHdlZW5TZXJ2aWNlOkNyZWF0ZShkLCBUd2VlbkluZm8ubmV3KDAuMTIsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uSW4pLCB7CgkJCQkJVGV4dFRyYW5zcGFyZW5jeSA9IDEKCQkJCX0pOlBsYXkoKQoJCQkJdGFzay5kZWxheSgwLjEyLCBmdW5jdGlvbigpCgkJCQkJaWYgZC5QYXJlbnQgdGhlbgoJCQkJCQlkLlRleHQgPSBjaAoJCQkJCQlUd2VlblNlcnZpY2U6Q3JlYXRlKGQsIFR3ZWVuSW5mby5uZXcoMC4xMiwgRW51bS5FYXNpbmdTdHlsZS5RdWFkLCBFbnVtLkVhc2luZ0RpcmVjdGlvbi5PdXQpLCB7CgkJCQkJCQlUZXh0VHJhbnNwYXJlbmN5ID0gMAoJCQkJCQl9KTpQbGF5KCkKCQkJCQllbmQKCQkJCWVuZCkKCQkJZW5kCgkJZW5kCgllbmQKCglzZXRDb2xvcihuKQplbmQKCmVudi5YVFdfUElOR19USFJFQUQgPSB0YXNrLnNwYXduKGZ1bmN0aW9uKCkKCWxvY2FsIHNhbXBsZXMgPSB7fQoJd2hpbGUgZW52LlhUV19QSU5HX1RIUkVBRCBkbwoJCXRhc2sud2FpdCgxKQoJCWxvY2FsIG9rLCBwID0gcGNhbGwoZnVuY3Rpb24oKQoJCQlyZXR1cm4gcGxheWVyOkdldE5ldHdvcmtQaW5nKCkKCQllbmQpCgkJbG9jYWwgdiA9IDAKCQlpZiBvayBhbmQgdHlwZShwKSA9PSAibnVtYmVyIiBhbmQgcCA9PSBwIGFuZCBwID4gMCB0aGVuCgkJCXYgPSBwICogMTAwMAoJCWVuZAoJCXNhbXBsZXNbI3NhbXBsZXMgKyAxXSA9IHYKCQlpZiAjc2FtcGxlcyA+IDEwIHRoZW4gdGFibGUucmVtb3ZlKHNhbXBsZXMsIDEpIGVuZAoKCQlsb2NhbCBzdW0gPSAwCgkJZm9yIF8sIHggaW4gaXBhaXJzKHNhbXBsZXMpIGRvIHN1bSArPSB4IGVuZAoJCXNldFBpbmcoc3VtIC8gI3NhbXBsZXMpCgllbmQKZW5kKQplbmQsIGZ1bmN0aW9uKGUpCiAgICBsb2NhbCB0YiA9ICIiCiAgICBwY2FsbChmdW5jdGlvbigpIHRiID0gZGVidWcudHJhY2ViYWNrKCIiLCAyKSBlbmQpCiAgICByZXR1cm4gdG9zdHJpbmcoZSkgLi4gIlxuIiAuLiB0YgplbmQpCmlmIG5vdCBfX3h0d19vayB0aGVuCiAgICBsb2NhbCBlcnJTdHIgPSB0b3N0cmluZyhfX3h0d19lcnIpCiAgICBpZiBfX3h0d19zZWxmIGFuZCBfX3h0d19zZWxmLlNldEF0dHJpYnV0ZSB0aGVuCiAgICAgICAgcGNhbGwoZnVuY3Rpb24oKSBfX3h0d19zZWxmOlNldEF0dHJpYnV0ZSgieHR3X2Vycm9yIiwgZXJyU3RyKSBlbmQpCiAgICBlbmQKICAgIHBjYWxsKGZ1bmN0aW9uKCkgd2FybigiW3h0d10gRkFJTDogIiAuLiBfX3h0d19uYW1lIC4uICIgKCIgLi4gX194dHdfY2xzIC4uICIpOiAiIC4uIGVyclN0cikgZW5kKQplbmQ=")
    local fn, cerr = loadstring(src, "@xtw:" .. tostring(s_15.Name))
    if not fn then
        compiledFail = compiledFail + 1
        compileErrors[#compileErrors + 1] = "Function (LocalScript): " .. tostring(cerr)
    else
        compiled = compiled + 1
        pcall(function() s_15.Source = src end)
        pcall(function() s_15.Parent = n[14] end)
        pcall(function() s_15.Disabled = false end)
    end
end
do
    local s_29 = n[29]
    local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkZ1bmN0aW9uIiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgUGxheWVycyA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpCmxvY2FsIFJ1blNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlJ1blNlcnZpY2UiKQpsb2NhbCBUd2VlblNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlR3ZWVuU2VydmljZSIpCmxvY2FsIERlYnJpcyA9IGdhbWU6R2V0U2VydmljZSgiRGVicmlzIikKbG9jYWwgVGV4dFNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlRleHRTZXJ2aWNlIikKCmxvY2FsIFJPV19OQU1FID0gbmlsCgpsb2NhbCBmdW5jdGlvbiBnZXRFbnYoKQoJbG9jYWwgb2ssIGUgPSBwY2FsbChmdW5jdGlvbigpIHJldHVybiBnZXRnZW52IGFuZCBnZXRnZW52KCkgZW5kKQoJaWYgb2sgYW5kIHR5cGUoZSkgPT0gInRhYmxlIiB0aGVuIHJldHVybiBlIGVuZAoJcmV0dXJuIF9HCmVuZApsb2NhbCBlbnYgPSBnZXRFbnYoKQoKbG9jYWwgcm93ID0gbmlsCgppZiBlbnYgYW5kIGVudi5YVFdfRVNQX1RBUkdFVCB0aGVuCglsb2NhbCB0ID0gZW52LlhUV19FU1BfVEFSR0VUCglpZiB0eXBlb2YodCkgPT0gIkluc3RhbmNlIiBhbmQgdDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCQlyb3cgPSB0CgllbmQKZW5kCgppZiBub3Qgcm93IGFuZCBST1dfTkFNRSB0aGVuCglsb2NhbCBwZyA9IFBsYXllcnMuTG9jYWxQbGF5ZXI6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJQbGF5ZXJHdWkiKQoJaWYgcGcgdGhlbgoJCWZvciBfLCBkIGluIGlwYWlycyhwZzpHZXREZXNjZW5kYW50cygpKSBkbwoJCQlpZiBkOklzQSgiR3VpT2JqZWN0IikgYW5kIGQuTmFtZSA9PSBST1dfTkFNRSBhbmQgZDpGaW5kRmlyc3RDaGlsZCgiQmFsbCIsIHRydWUpIHRoZW4KCQkJCXJvdyA9IGQKCQkJCWJyZWFrCgkJCWVuZAoJCWVuZAoJZW5kCmVuZAoKaWYgbm90IHJvdyB0aGVuCglwY2FsbChmdW5jdGlvbigpCgkJbG9jYWwgcCA9IHNjcmlwdCBhbmQgc2NyaXB0LlBhcmVudAoJCWlmIHAgYW5kIHA6SXNBKCJHdWlPYmplY3QiKSB0aGVuCgkJCXJvdyA9IHAKCQllbmQKCWVuZCkKZW5kCgppZiBub3Qgcm93IHRoZW4KCXdhcm4oIltFU1BdIE5vIHRhcmdldCByb3cgZnJhbWUuIikKCXJldHVybgplbmQKCmxvY2FsIGJhbGxzID0gcm93OkZpbmRGaXJzdENoaWxkKCJCYWxsIiwgdHJ1ZSkKaWYgbm90IGJhbGxzIHRoZW4KCWJhbGxzID0gcm93OldhaXRGb3JDaGlsZCgiQmFsbCIsIDUpCmVuZAppZiBub3QgYmFsbHMgdGhlbgoJd2FybigiW0VTUF0gTm8gQmFsbCBjaGlsZCBpbiByb3cuIikKCXJldHVybgplbmQKCmxvY2FsIGRlc2NyaXB0aW9uID0gcm93OldhaXRGb3JDaGlsZCgiRGVzY3JpcHRpb24iLCA1KQppZiBub3QgZGVzY3JpcHRpb24gdGhlbgoJd2FybigiW0VTUF0gTm8gRGVzY3JpcHRpb24gY2hpbGQgaW4gcm93LiIpCglyZXR1cm4KZW5kCgpsb2NhbCBwbGF5ZXIgPSBQbGF5ZXJzLkxvY2FsUGxheWVyCgpyb3cuQWN0aXZlID0gdHJ1ZQpiYWxscy5BY3RpdmUgPSB0cnVlCmJhbGxzLkF1dG9CdXR0b25Db2xvciA9IGZhbHNlCgpsb2NhbCBsZWZ0b3ZlciA9IHJvdzpGaW5kRmlyc3RDaGlsZCgiRGVzY1BhbmVsIiwgdHJ1ZSkKaWYgbGVmdG92ZXIgdGhlbgoJbGVmdG92ZXI6RGVzdHJveSgpCmVuZAoKbG9jYWwgZGFya3llbGxvdyA9IENvbG9yMy5mcm9tUkdCKDQwLCA0MCwgNDApCmxvY2FsIHllbGxvdyA9IENvbG9yMy5mcm9tUkdCKDAsIDExMCwgMCkKCmxvY2FsIGdyYWRpZW50ID0gcm93OkZpbmRGaXJzdENoaWxkT2ZDbGFzcygiVUlHcmFkaWVudCIpIG9yIEluc3RhbmNlLm5ldygiVUlHcmFkaWVudCIpCmdyYWRpZW50LkNvbG9yID0gQ29sb3JTZXF1ZW5jZS5uZXcoewoJQ29sb3JTZXF1ZW5jZUtleXBvaW50Lm5ldygwLCB5ZWxsb3cpLAoJQ29sb3JTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjQ5OSwgeWVsbG93KSwKCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMC41LCBkYXJreWVsbG93KSwKCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMSwgZGFya3llbGxvdyksCn0pCmdyYWRpZW50Lk9mZnNldCA9IFZlY3RvcjIubmV3KC0wLjUsIDApCmdyYWRpZW50LlBhcmVudCA9IHJvdwoKbG9jYWwgb2ZmUG9zID0gYmFsbHMuUG9zaXRpb24KbG9jYWwgb25Qb3MgPSBVRGltMi5uZXcoCgkxIC0gb2ZmUG9zLlguU2NhbGUgLSBiYWxscy5TaXplLlguU2NhbGUsCglvZmZQb3MuWC5PZmZzZXQgLSBiYWxscy5TaXplLlguT2Zmc2V0LAoJb2ZmUG9zLlkuU2NhbGUsCglvZmZQb3MuWS5PZmZzZXQKKQoKbG9jYWwgb2ZmQyA9IDAKbG9jYWwgb25DID0gMAoKbG9jYWwgZnVuY3Rpb24gbWVhc3VyZSgpCglsb2NhbCB3ID0gcm93LkFic29sdXRlU2l6ZS5YCglpZiB3IDw9IDAgdGhlbiByZXR1cm4gZW5kCglsb2NhbCBoYWxmID0gKDAuNSAtIGJhbGxzLkFuY2hvclBvaW50LlgpICogKGJhbGxzLlNpemUuWC5TY2FsZSArIGJhbGxzLlNpemUuWC5PZmZzZXQgLyB3KQoJb2ZmQyA9IG9mZlBvcy5YLlNjYWxlICsgb2ZmUG9zLlguT2Zmc2V0IC8gdyArIGhhbGYKCW9uQyA9IG9uUG9zLlguU2NhbGUgKyBvblBvcy5YLk9mZnNldCAvIHcgKyBoYWxmCmVuZAoKbG9jYWwgYW5pbSA9IEluc3RhbmNlLm5ldygiTnVtYmVyVmFsdWUiKQphbmltLlZhbHVlID0gMAoKbG9jYWwgZnVuY3Rpb24gYXBwbHkodSkKCWxvY2FsIHN4ID0gb2ZmUG9zLlguU2NhbGUgKyAob25Qb3MuWC5TY2FsZSAtIG9mZlBvcy5YLlNjYWxlKSAqIHUKCWxvY2FsIG94ID0gb2ZmUG9zLlguT2Zmc2V0ICsgKG9uUG9zLlguT2Zmc2V0IC0gb2ZmUG9zLlguT2Zmc2V0KSAqIHUKCWJhbGxzLlBvc2l0aW9uID0gVURpbTIubmV3KHN4LCBveCwgb2ZmUG9zLlkuU2NhbGUsIG9mZlBvcy5ZLk9mZnNldCkKCWdyYWRpZW50Lk9mZnNldCA9IFZlY3RvcjIubmV3KChvZmZDICsgKG9uQyAtIG9mZkMpICogdSkgLSAwLjUsIDApCmVuZAoKYW5pbS5DaGFuZ2VkOkNvbm5lY3QoYXBwbHkpCm1lYXN1cmUoKQphcHBseSgwKQoKcm93OkdldFByb3BlcnR5Q2hhbmdlZFNpZ25hbCgiQWJzb2x1dGVTaXplIik6Q29ubmVjdChmdW5jdGlvbigpCgltZWFzdXJlKCkKCWFwcGx5KGFuaW0uVmFsdWUpCmVuZCkKCmxvY2FsIGRlc2NUZXh0ID0gIlRoaXMgaXMgeW91ciBFeHRyYXNlbnNvcnkgUGVyY2VwdGlvbiB0b2dnbGUuIgoKaWYgZGVzY3JpcHRpb24uVGV4dFNjYWxlZCB0aGVuCglsb2NhbCByZW5kZXJlZCA9IGRlc2NyaXB0aW9uLlRleHRCb3VuZHMuWQoJZGVzY3JpcHRpb24uVGV4dFNjYWxlZCA9IGZhbHNlCglkZXNjcmlwdGlvbi5UZXh0U2l6ZSA9IG1hdGgubWF4KDEsIG1hdGguZmxvb3IocmVuZGVyZWQgPiAwIGFuZCByZW5kZXJlZCBvciByb3cuQWJzb2x1dGVTaXplLlkgKiAwLjcpKQplbmQKCmZvciBfLCBjIGluIGlwYWlycyhkZXNjcmlwdGlvbjpHZXRDaGlsZHJlbigpKSBkbwoJaWYgYzpJc0EoIlVJU3Ryb2tlIikgb3IgYy5OYW1lID09ICJUb3BMaW5lIiBvciBjLk5hbWUgPT0gIkJvdHRvbUxpbmUiIG9yIGMuTmFtZSA9PSAiUmlnaHRMaW5lIgoJCW9yIGMuTmFtZSA9PSAiU2VhbVBhdGNoIiBvciBjLk5hbWUgPT0gIlRvcEJyaWRnZSIgb3IgYy5OYW1lID09ICJCb3R0b21CcmlkZ2UiCgkJb3IgYy5OYW1lID09ICJDYXBDbGlwIiBvciBjLk5hbWUgPT0gIkNhcCIgb3IgYy5OYW1lID09ICJEZXNjQ29ybmVyIgoJCW9yIGMuTmFtZSA9PSAiTGVmdEd1YXJkIiB0aGVuCgkJYzpEZXN0cm95KCkKCWVuZAplbmQKCmxvY2FsIGhvc3QgPSByb3cuUGFyZW50CmxvY2FsIHN0cm9rZUNvbG9yID0gbmlsCmxvY2FsIHN0cm9rZVRyYW5zcGFyZW5jeSA9IDAKbG9jYWwgc3Ryb2tlRXhhY3QgPSAxCmxvY2FsIHN0cm9rZU1vZGUgPSBFbnVtLkFwcGx5U3Ryb2tlTW9kZS5Cb3JkZXIKbG9jYWwgY29ybmVyUmFkaXVzID0gMAoKaWYgaG9zdCBhbmQgaG9zdDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCWRlc2NyaXB0aW9uLkJhY2tncm91bmRDb2xvcjMgPSBob3N0LkJhY2tncm91bmRDb2xvcjMKCWRlc2NyaXB0aW9uLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSBob3N0LkJhY2tncm91bmRUcmFuc3BhcmVuY3kKCWxvY2FsIGhzID0gaG9zdDpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlVJU3Ryb2tlIikKCWlmIGhzIHRoZW4KCQlzdHJva2VDb2xvciA9IGhzLkNvbG9yCgkJc3Ryb2tlVHJhbnNwYXJlbmN5ID0gaHMuVHJhbnNwYXJlbmN5CgkJc3Ryb2tlRXhhY3QgPSBocy5UaGlja25lc3MKCQlzdHJva2VNb2RlID0gaHMuQXBwbHlTdHJva2VNb2RlCgkJaWYgc3Ryb2tlRXhhY3QgPCAxIHRoZW4KCQkJc3Ryb2tlRXhhY3QgPSAxCgkJZW5kCgllbmQKCWxvY2FsIGhjID0gaG9zdDpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlVJQ29ybmVyIikKCWlmIGhjIHRoZW4KCQlsb2NhbCByaCA9IHJvdy5BYnNvbHV0ZVNpemUuWQoJCWlmIHJoIDwgMCB0aGVuIHJoID0gMCBlbmQKCQljb3JuZXJSYWRpdXMgPSBtYXRoLmZsb29yKGhjLkNvcm5lclJhZGl1cy5PZmZzZXQgKyBoYy5Db3JuZXJSYWRpdXMuU2NhbGUgKiByaCArIDAuNSkKCQlpZiBjb3JuZXJSYWRpdXMgPCAwIHRoZW4gY29ybmVyUmFkaXVzID0gMCBlbmQKCQlsb2NhbCBtYXhSID0gbWF0aC5mbG9vcihyaCAvIDIpCgkJaWYgbWF4UiA+IDYgdGhlbgoJCQltYXhSID0gNgoJCWVuZAoJCWlmIGNvcm5lclJhZGl1cyA+IG1heFIgdGhlbgoJCQljb3JuZXJSYWRpdXMgPSBtYXhSCgkJZW5kCgllbmQKZWxzZQoJZGVzY3JpcHRpb24uQmFja2dyb3VuZENvbG9yMyA9IENvbG9yMy5mcm9tUkdCKDM1LCAzNSwgMzUpCglkZXNjcmlwdGlvbi5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMC4xCmVuZAoKbG9jYWwgcGFkID0gZGVzY3JpcHRpb246RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJVSVBhZGRpbmciKQppZiBub3QgcGFkIHRoZW4KCXBhZCA9IEluc3RhbmNlLm5ldygiVUlQYWRkaW5nIikKCXBhZC5QYXJlbnQgPSBkZXNjcmlwdGlvbgplbmQKcGFkLlBhZGRpbmdMZWZ0ID0gVURpbS5uZXcoMCwgOCkKcGFkLlBhZGRpbmdSaWdodCA9IFVEaW0ubmV3KDAsIDIpCgpsb2NhbCBwYWRMZWZ0ID0gOApsb2NhbCBwYWRSaWdodCA9IDIKZG8KCWxvY2FsIHAgPSBkZXNjcmlwdGlvbjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlVJUGFkZGluZyIpCglpZiBwIHRoZW4KCQlwYWRMZWZ0ID0gcC5QYWRkaW5nTGVmdC5PZmZzZXQKCQlwYWRSaWdodCA9IHAuUGFkZGluZ1JpZ2h0Lk9mZnNldAoJZW5kCmVuZAoKZGVzY3JpcHRpb24uVGV4dFdyYXBwZWQgPSBmYWxzZQpkZXNjcmlwdGlvbi5UZXh0WEFsaWdubWVudCA9IEVudW0uVGV4dFhBbGlnbm1lbnQuTGVmdApkZXNjcmlwdGlvbi5BbmNob3JQb2ludCA9IFZlY3RvcjIubmV3KDAsIDApCmRlc2NyaXB0aW9uLkF1dG9tYXRpY1NpemUgPSBFbnVtLkF1dG9tYXRpY1NpemUuTm9uZQpkZXNjcmlwdGlvbi5Qb3NpdGlvbiA9IFVEaW0yLm5ldygxLCAwLCAwLCAwKQpkZXNjcmlwdGlvbi5TaXplID0gVURpbTIubmV3KDAsIDAsIDEsIDApCmRlc2NyaXB0aW9uLlpJbmRleCA9IDUKZGVzY3JpcHRpb24uVGV4dCA9ICIiCmRlc2NyaXB0aW9uLlZpc2libGUgPSBmYWxzZQpkZXNjcmlwdGlvbi5DbGlwc0Rlc2NlbmRhbnRzID0gZmFsc2UKCmlmIGNvcm5lclJhZGl1cyA+IDAgdGhlbgoJbG9jYWwgZGVzY0Nvcm5lciA9IEluc3RhbmNlLm5ldygiVUlDb3JuZXIiKQoJZGVzY0Nvcm5lci5OYW1lID0gIkRlc2NDb3JuZXIiCglkZXNjQ29ybmVyLkNvcm5lclJhZGl1cyA9IFVEaW0ubmV3KDAsIGNvcm5lclJhZGl1cykKCWRlc2NDb3JuZXIuUGFyZW50ID0gZGVzY3JpcHRpb24KZW5kCgppZiBzdHJva2VDb2xvciB0aGVuCglsb2NhbCBndWFyZFggPSAtKG1hdGguY2VpbChzdHJva2VFeGFjdCkgKyAxKQoJbG9jYWwgY2FwTGVmdCA9IC0oY29ybmVyUmFkaXVzICsgc3Ryb2tlRXhhY3QgKyAyKQoJbG9jYWwgbVkgPSBzdHJva2VFeGFjdCArIDEKCglsb2NhbCBsZWZ0R3VhcmQgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKCWxlZnRHdWFyZC5OYW1lID0gIkxlZnRHdWFyZCIKCWxlZnRHdWFyZC5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJbGVmdEd1YXJkLkJvcmRlclNpemVQaXhlbCA9IDAKCWxlZnRHdWFyZC5DbGlwc0Rlc2NlbmRhbnRzID0gdHJ1ZQoJbGVmdEd1YXJkLlpJbmRleCA9IDYKCWxlZnRHdWFyZC5Qb3NpdGlvbiA9IFVEaW0yLm5ldygwLCBndWFyZFgsIDAsIC1tWSkKCWxlZnRHdWFyZC5TaXplID0gVURpbTIubmV3KDEsIHN0cm9rZUV4YWN0ICsgMSAtIGd1YXJkWCwgMSwgMiAqIG1ZKQoJbGVmdEd1YXJkLlBhcmVudCA9IGRlc2NyaXB0aW9uCgoJbG9jYWwgY2FwID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCgljYXAuTmFtZSA9ICJDYXAiCgljYXAuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKCWNhcC5Cb3JkZXJTaXplUGl4ZWwgPSAwCgljYXAuWkluZGV4ID0gNgoJY2FwLlBvc2l0aW9uID0gVURpbTIubmV3KDAsIGNhcExlZnQgLSBndWFyZFgsIDAsIG1ZKQoJY2FwLlNpemUgPSBVRGltMi5uZXcoMSwgY29ybmVyUmFkaXVzICsgZ3VhcmRYICsgMSwgMSwgLTIgKiBtWSkKCWNhcC5QYXJlbnQgPSBsZWZ0R3VhcmQKCglsb2NhbCBjYXBDb3JuZXIgPSBJbnN0YW5jZS5uZXcoIlVJQ29ybmVyIikKCWNhcENvcm5lci5Db3JuZXJSYWRpdXMgPSBVRGltLm5ldygwLCBjb3JuZXJSYWRpdXMpCgljYXBDb3JuZXIuUGFyZW50ID0gY2FwCgoJbG9jYWwgY2FwU3Ryb2tlID0gSW5zdGFuY2UubmV3KCJVSVN0cm9rZSIpCgljYXBTdHJva2UuQ29sb3IgPSBzdHJva2VDb2xvcgoJY2FwU3Ryb2tlLlRoaWNrbmVzcyA9IHN0cm9rZUV4YWN0CgljYXBTdHJva2UuVHJhbnNwYXJlbmN5ID0gc3Ryb2tlVHJhbnNwYXJlbmN5CgljYXBTdHJva2UuQXBwbHlTdHJva2VNb2RlID0gc3Ryb2tlTW9kZQoJY2FwU3Ryb2tlLkxpbmVKb2luTW9kZSA9IEVudW0uTGluZUpvaW5Nb2RlLlJvdW5kCgljYXBTdHJva2UuUGFyZW50ID0gY2FwCmVuZAoKbG9jYWwgZnVuY3Rpb24gc2V0RGVzY1RleHQodGV4dCkKCWRlc2NyaXB0aW9uLlRleHQgPSB0ZXh0Cglsb2NhbCB3ID0gVGV4dFNlcnZpY2U6R2V0VGV4dFNpemUodGV4dCwgZGVzY3JpcHRpb24uVGV4dFNpemUsIGRlc2NyaXB0aW9uLkZvbnQsIFZlY3RvcjIubmV3KDEwMDAwLCAxMDAwMCkpLlgKCXcgPSB3ICsgcGFkTGVmdCArIHBhZFJpZ2h0ICsgNAoJZGVzY3JpcHRpb24uU2l6ZSA9IFVEaW0yLm5ldygwLCB3LCAxLCAwKQplbmQKCmxvY2FsIGRlc2NHZW4gPSAwCmxvY2FsIGRlc2NNb2RlID0gImlkbGUiCmxvY2FsIGRlc2NUd2VlbiA9IG5pbApsb2NhbCBkZXNjUmV0cmFjdGluZyA9IGZhbHNlCgpsb2NhbCBmdW5jdGlvbiBzdG9wRGVzY1R3ZWVuKCkKCWlmIGRlc2NUd2VlbiB0aGVuCgkJZGVzY1R3ZWVuOkNhbmNlbCgpCgkJZGVzY1R3ZWVuID0gbmlsCgllbmQKCWRlc2NSZXRyYWN0aW5nID0gZmFsc2UKCWRlc2NyaXB0aW9uLkNsaXBzRGVzY2VuZGFudHMgPSBmYWxzZQplbmQKClJ1blNlcnZpY2UuUmVuZGVyU3RlcHBlZDpDb25uZWN0KGZ1bmN0aW9uKCkKCWlmIGRlc2NyaXB0aW9uLlZpc2libGUgYW5kIGRlc2NyaXB0aW9uLlRleHQgfj0gIiIgYW5kIG5vdCBkZXNjUmV0cmFjdGluZyB0aGVuCgkJbG9jYWwgdyA9IGRlc2NyaXB0aW9uLlRleHRCb3VuZHMuWCArIHBhZExlZnQgKyBwYWRSaWdodCArIDIKCQlpZiBtYXRoLmFicyhkZXNjcmlwdGlvbi5TaXplLlguT2Zmc2V0IC0gdykgPiAxIHRoZW4KCQkJZGVzY3JpcHRpb24uU2l6ZSA9IFVEaW0yLm5ldygwLCB3LCAxLCAwKQoJCWVuZAoJZW5kCmVuZCkKCmxvY2FsIHNvdW5kSWRzID0gewoJWzJdID0gMTEzMTA4ODMwMjQwMzUzLAoJWzNdID0gNzE5MDI0ODE3NTk2NjAsCglbNF0gPSA3MjgyNjU2NTAxODc2NSwKCVs1XSA9IDEwMjg1NTUzNTU0MzkzMCwKfQoKbG9jYWwgdHlwZVNvdW5kcyA9IHt9CmZvciBpID0gMiwgNCBkbwoJbG9jYWwgcyA9IHJvdzpGaW5kRmlyc3RDaGlsZCh0b3N0cmluZyhpKSwgdHJ1ZSkKCWlmIHMgYW5kIHM6SXNBKCJTb3VuZCIpIHRoZW4KCQl0eXBlU291bmRzWyN0eXBlU291bmRzICsgMV0gPSBzCgllbHNlCgkJcyA9IEluc3RhbmNlLm5ldygiU291bmQiKQoJCXMuTmFtZSA9IHRvc3RyaW5nKGkpCgkJcy5Tb3VuZElkID0gInJieGFzc2V0aWQ6Ly8iIC4uIHNvdW5kSWRzW2ldCgkJcy5Wb2x1bWUgPSAxCgkJcy5QYXJlbnQgPSBkZXNjcmlwdGlvbgoJCXR5cGVTb3VuZHNbI3R5cGVTb3VuZHMgKyAxXSA9IHMKCWVuZAplbmQKCmxvY2FsIGRlbGV0ZVNvdW5kID0gcm93OkZpbmRGaXJzdENoaWxkKCI1IiwgdHJ1ZSkKaWYgbm90IChkZWxldGVTb3VuZCBhbmQgZGVsZXRlU291bmQ6SXNBKCJTb3VuZCIpKSB0aGVuCglkZWxldGVTb3VuZCA9IEluc3RhbmNlLm5ldygiU291bmQiKQoJZGVsZXRlU291bmQuTmFtZSA9ICI1IgoJZGVsZXRlU291bmQuU291bmRJZCA9ICJyYnhhc3NldGlkOi8vIiAuLiBzb3VuZElkc1s1XQoJZGVsZXRlU291bmQuVm9sdW1lID0gMQoJZGVsZXRlU291bmQuUGFyZW50ID0gZGVzY3JpcHRpb24KZW5kCgpsb2NhbCBmdW5jdGlvbiBwbGF5SGl0KHNvdW5kKQoJaWYgbm90IHNvdW5kIHRoZW4gcmV0dXJuIGVuZAoJbG9jYWwgcyA9IHNvdW5kOkNsb25lKCkKCXMuUGFyZW50ID0gZGVzY3JpcHRpb24KCXM6UGxheSgpCglEZWJyaXM6QWRkSXRlbShzLCA1KQplbmQKCmxvY2FsIGZ1bmN0aW9uIHN0YXJ0VHlwaW5nKCkKCXN0b3BEZXNjVHdlZW4oKQoJZGVzY0dlbiArPSAxCglkZXNjTW9kZSA9ICJ0eXBpbmciCglsb2NhbCBnZW4gPSBkZXNjR2VuCgl0YXNrLnNwYXduKGZ1bmN0aW9uKCkKCQlkZXNjcmlwdGlvbi5WaXNpYmxlID0gdHJ1ZQoJCWxvY2FsIHNob3duID0gI2Rlc2NyaXB0aW9uLlRleHQKCQl3aGlsZSBzaG93biA8ICNkZXNjVGV4dCBhbmQgZ2VuID09IGRlc2NHZW4gZG8KCQkJc2hvd24gKz0gMQoJCQlzZXREZXNjVGV4dChzdHJpbmcuc3ViKGRlc2NUZXh0LCAxLCBzaG93bikpCgkJCWlmIHNob3duICUgMiA9PSAwIGFuZCAjdHlwZVNvdW5kcyA+IDAgdGhlbgoJCQkJcGxheUhpdCh0eXBlU291bmRzW21hdGgucmFuZG9tKDEsICN0eXBlU291bmRzKV0pCgkJCWVuZAoJCQl0YXNrLndhaXQoMC4wNCkKCQllbmQKCQlpZiBnZW4gPT0gZGVzY0dlbiB0aGVuCgkJCWRlc2NNb2RlID0gImlkbGUiCgkJZW5kCgllbmQpCmVuZAoKbG9jYWwgZnVuY3Rpb24gc3RhcnREZWxldGluZygpCglzdG9wRGVzY1R3ZWVuKCkKCWRlc2NHZW4gKz0gMQoJZGVzY01vZGUgPSAiZGVsZXRpbmciCglsb2NhbCBnZW4gPSBkZXNjR2VuCgl0YXNrLnNwYXduKGZ1bmN0aW9uKCkKCQlsb2NhbCBzaG93biA9ICNkZXNjcmlwdGlvbi5UZXh0CgkJbG9jYWwgbmV4dEhpdCA9IG1hdGgucmFuZG9tKDIsIDMpCgkJbG9jYWwgcmV0cmFjdGluZyA9IGZhbHNlCgkJd2hpbGUgc2hvd24gPiAwIGFuZCBnZW4gPT0gZGVzY0dlbiBkbwoJCQlzaG93biAtPSAxCgkJCW5leHRIaXQgLT0gMQoJCQlpZiByZXRyYWN0aW5nIHRoZW4KCQkJCWRlc2NyaXB0aW9uLlRleHQgPSBzdHJpbmcuc3ViKGRlc2NUZXh0LCAxLCBzaG93bikKCQkJZWxzZQoJCQkJc2V0RGVzY1RleHQoc3RyaW5nLnN1YihkZXNjVGV4dCwgMSwgc2hvd24pKQoJCQllbmQKCQkJaWYgbm90IHJldHJhY3RpbmcgYW5kIG5leHRIaXQgPD0gMCB0aGVuCgkJCQlwbGF5SGl0KGRlbGV0ZVNvdW5kKQoJCQkJbmV4dEhpdCA9IG1hdGgucmFuZG9tKDIsIDMpCgkJCWVuZAoJCQlpZiBub3QgcmV0cmFjdGluZyBhbmQgc2hvd24gPD0gMyB0aGVuCgkJCQlyZXRyYWN0aW5nID0gdHJ1ZQoJCQkJZGVzY1JldHJhY3RpbmcgPSB0cnVlCgkJCQlkZXNjcmlwdGlvbi5DbGlwc0Rlc2NlbmRhbnRzID0gdHJ1ZQoJCQkJbG9jYWwgdHcgPSBUd2VlblNlcnZpY2U6Q3JlYXRlKAoJCQkJCWRlc2NyaXB0aW9uLAoJCQkJCVR3ZWVuSW5mby5uZXcoMC4xNiwgRW51bS5FYXNpbmdTdHlsZS5RdWFkLCBFbnVtLkVhc2luZ0RpcmVjdGlvbi5JbiksCgkJCQkJewoJCQkJCQlTaXplID0gVURpbTIubmV3KDAsIDAsIDEsIDApLAoJCQkJCQlUZXh0VHJhbnNwYXJlbmN5ID0gMSwKCQkJCQl9CgkJCQkpCgkJCQlkZXNjVHdlZW4gPSB0dwoJCQkJdHc6UGxheSgpCgkJCWVuZAoJCQl0YXNrLndhaXQoMC4wMykKCQllbmQKCQlpZiBnZW4gfj0gZGVzY0dlbiB0aGVuIHJldHVybiBlbmQKCQlpZiBkZXNjVHdlZW4gdGhlbgoJCQlkZXNjVHdlZW4uQ29tcGxldGVkOldhaXQoKQoJCWVuZAoJCWlmIGdlbiA9PSBkZXNjR2VuIHRoZW4KCQkJZGVzY01vZGUgPSAiaWRsZSIKCQkJZGVzY3JpcHRpb24uVmlzaWJsZSA9IGZhbHNlCgkJCWRlc2NyaXB0aW9uLlRleHQgPSAiIgoJCQlkZXNjcmlwdGlvbi5UZXh0VHJhbnNwYXJlbmN5ID0gMAoJCWVuZAoJCWRlc2NUd2VlbiA9IG5pbAoJCWRlc2NSZXRyYWN0aW5nID0gZmFsc2UKCQlkZXNjcmlwdGlvbi5DbGlwc0Rlc2NlbmRhbnRzID0gZmFsc2UKCWVuZCkKZW5kCgpsb2NhbCBob3ZlcmVkID0ge30KbG9jYWwgaG92ZXJTZXNzaW9uID0gMApsb2NhbCBzZXNzaW9uQ291bnQgPSAwCmxvY2FsIGVuZEdlbiA9IDAKCmxvY2FsIGZ1bmN0aW9uIGhvdmVyQ2hhbmdlZCgpCglsb2NhbCBvdmVyID0gbmV4dChob3ZlcmVkKSB+PSBuaWwKCglpZiBvdmVyIHRoZW4KCQllbmRHZW4gKz0gMQoJCWlmIGhvdmVyU2Vzc2lvbiA9PSAwIHRoZW4KCQkJc2Vzc2lvbkNvdW50ICs9IDEKCQkJaG92ZXJTZXNzaW9uID0gc2Vzc2lvbkNvdW50CgkJCWxvY2FsIHNpZCA9IGhvdmVyU2Vzc2lvbgoJCQlpZiBkZXNjTW9kZSA9PSAiZGVsZXRpbmciIHRoZW4KCQkJCXN0YXJ0VHlwaW5nKCkKCQkJZWxzZQoJCQkJdGFzay5kZWxheSgwLjgsIGZ1bmN0aW9uKCkKCQkJCQlpZiBob3ZlclNlc3Npb24gPT0gc2lkIHRoZW4KCQkJCQkJc3RhcnRUeXBpbmcoKQoJCQkJCWVuZAoJCQkJZW5kKQoJCQllbmQKCQllbmQKCWVsc2UKCQlpZiBob3ZlclNlc3Npb24gfj0gMCB0aGVuCgkJCWVuZEdlbiArPSAxCgkJCWxvY2FsIGcgPSBlbmRHZW4KCQkJdGFzay5kZWxheSgwLjA1LCBmdW5jdGlvbigpCgkJCQlpZiBnID09IGVuZEdlbiBhbmQgbmV4dChob3ZlcmVkKSA9PSBuaWwgdGhlbgoJCQkJCWhvdmVyU2Vzc2lvbiA9IDAKCQkJCQlzdGFydERlbGV0aW5nKCkKCQkJCWVuZAoJCQllbmQpCgkJZW5kCgllbmQKZW5kCgpsb2NhbCBmdW5jdGlvbiBiaW5kSG92ZXIoZ3VpKQoJZ3VpLk1vdXNlRW50ZXI6Q29ubmVjdChmdW5jdGlvbigpCgkJaG92ZXJlZFtndWldID0gdHJ1ZQoJCWhvdmVyQ2hhbmdlZCgpCgllbmQpCglndWkuTW91c2VMZWF2ZTpDb25uZWN0KGZ1bmN0aW9uKCkKCQlob3ZlcmVkW2d1aV0gPSBuaWwKCQlob3ZlckNoYW5nZWQoKQoJZW5kKQplbmQKCmJpbmRIb3Zlcihyb3cpCmJpbmRIb3ZlcihiYWxscykKZm9yIF8sIGMgaW4gaXBhaXJzKHJvdzpHZXREZXNjZW5kYW50cygpKSBkbwoJaWYgYzpJc0EoIkd1aU9iamVjdCIpIGFuZCBjIH49IGJhbGxzIHRoZW4KCQliaW5kSG92ZXIoYykKCWVuZAplbmQKCmxvY2FsIFNDUklQVF9JRCA9IHRvc3RyaW5nKHJvdykgLi4gIl8iIC4uIHRvc3RyaW5nKG9zLnRpbWUoKSkKbG9jYWwgU1RPUF9LRVkgPSAiWFRXX0VTUF9TVE9QIgpsb2NhbCBFU1BfR1VJX05BTUUgPSAiUGxheWVyQm94RVNQIgoKaWYgZW52W1NUT1BfS0VZXSB0aGVuCglwY2FsbChlbnZbU1RPUF9LRVldKQplbmQKCmxvY2FsIGNhbWVyYSA9IHdvcmtzcGFjZS5DdXJyZW50Q2FtZXJhCgpsb2NhbCBncmVlbiA9IENvbG9yMy5mcm9tUkdCKDAsIDI1NSwgMCkKbG9jYWwgYmx1ZSA9IENvbG9yMy5mcm9tUkdCKDAsIDE3MCwgMjU1KQpsb2NhbCByZWQgPSBDb2xvcjMuZnJvbVJHQigyNTUsIDYwLCA2MCkKbG9jYWwgZ3JleSA9IENvbG9yMy5mcm9tUkdCKDEzMCwgMTMwLCAxMzApCmxvY2FsIHRoaWNrbmVzcyA9IDEuNQpsb2NhbCBzbW9vdGhTcGVlZCA9IDE0CmxvY2FsIGNvbG9yU3BlZWQgPSA5CmxvY2FsIHJlc3Bhd25TaGllbGRUaW1lID0gNQpsb2NhbCBpY29uVGludCA9IHRydWUKbG9jYWwgcGFkZGluZyA9IDIKbG9jYWwgaW5jbHVkZUFjY2Vzc29yaWVzID0gZmFsc2UKbG9jYWwgaW5jbHVkZVRvb2xzID0gZmFsc2UKbG9jYWwgbWF4UGFydHMgPSA2NApsb2NhbCBmYWRlU3BlZWQgPSA2CmxvY2FsIGljb25GYWRlT3V0ID0gMC4xMgpsb2NhbCBpY29uRmFkZUluID0gMC4yNQpsb2NhbCBzY3JlZW5NYXJnaW4gPSAxMjAKCmxvY2FsIGljb25JZHMgPSB7CglrbmlmZSA9IDExMzAxNTU5MzE0MDc4NywKCWdyaW4gPSAxMDc3NzgyMDMxNzk0MzQsCglndW4gPSAxMTM1ODM4NjU0ODg5MzUsCglza3VsbCA9IDEyMTcyNzQzNDgwOTA5MiwKCXNoaWVsZCA9IDc3MTU1MzI3MDQyOTk4LAp9Cgpsb2NhbCBpY29ucyA9IHt9CmZvciBraW5kLCBpZCBpbiBwYWlycyhpY29uSWRzKSBkbwoJaWNvbnNba2luZF0gPSAicmJ4YXNzZXRpZDovLyIgLi4gaWQKZW5kCgpsb2NhbCBndWlQYXJlbnQgPSBwbGF5ZXI6V2FpdEZvckNoaWxkKCJQbGF5ZXJHdWkiKQpkbwoJbG9jYWwgb2ssIGh1aSA9IHBjYWxsKGZ1bmN0aW9uKCkKCQlyZXR1cm4gZ2V0aHVpIGFuZCBnZXRodWkoKQoJZW5kKQoJaWYgb2sgYW5kIGh1aSB0aGVuCgkJZ3VpUGFyZW50ID0gaHVpCgllbmQKCWxvY2FsIG9sZCA9IGd1aVBhcmVudDpGaW5kRmlyc3RDaGlsZChFU1BfR1VJX05BTUUpCglpZiBvbGQgdGhlbgoJCW9sZDpEZXN0cm95KCkKCWVuZAplbmQKCmxvY2FsIGVzcEd1aSA9IEluc3RhbmNlLm5ldygiU2NyZWVuR3VpIikKZXNwR3VpLk5hbWUgPSBFU1BfR1VJX05BTUUKZXNwR3VpLlJlc2V0T25TcGF3biA9IGZhbHNlCmVzcEd1aS5JZ25vcmVHdWlJbnNldCA9IHRydWUKZXNwR3VpLkRpc3BsYXlPcmRlciA9IDk5OQplc3BHdWkuUGFyZW50ID0gZ3VpUGFyZW50Cgpsb2NhbCBmdW5jdGlvbiBuZXdCb3gocGxyKQoJbG9jYWwgZnJhbWUgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKCWZyYW1lLlZpc2libGUgPSBmYWxzZQoJZnJhbWUuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKCWZyYW1lLkJvcmRlclNpemVQaXhlbCA9IDAKCglsb2NhbCBzdHJva2UgPSBJbnN0YW5jZS5uZXcoIlVJU3Ryb2tlIikKCXN0cm9rZS5UaGlja25lc3MgPSB0aGlja25lc3MKCXN0cm9rZS5Db2xvciA9IGdyZWVuCglzdHJva2UuQXBwbHlTdHJva2VNb2RlID0gRW51bS5BcHBseVN0cm9rZU1vZGUuQm9yZGVyCglzdHJva2UuUGFyZW50ID0gZnJhbWUKCglsb2NhbCBuYW1lID0gSW5zdGFuY2UubmV3KCJUZXh0TGFiZWwiKQoJbmFtZS5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJbmFtZS5UZXh0ID0gcGxyLk5hbWUKCW5hbWUuRm9udCA9IEVudW0uRm9udC5Hb3RoYW1Cb2xkCgluYW1lLlRleHRDb2xvcjMgPSBncmVlbgoJbmFtZS5UZXh0U3Ryb2tlVHJhbnNwYXJlbmN5ID0gMC41CgluYW1lLlRleHRTY2FsZWQgPSB0cnVlCgluYW1lLkFuY2hvclBvaW50ID0gVmVjdG9yMi5uZXcoMC41LCAxKQoJbmFtZS5Qb3NpdGlvbiA9IFVEaW0yLm5ldygwLjUsIDAsIDAsIC00KQoJbmFtZS5TaXplID0gVURpbTIubmV3KDEsIDMwLCAwLCAxNCkKCW5hbWUuWkluZGV4ID0gMgoJbmFtZS5QYXJlbnQgPSBmcmFtZQoKCWxvY2FsIGNhcCA9IEluc3RhbmNlLm5ldygiVUlUZXh0U2l6ZUNvbnN0cmFpbnQiKQoJY2FwLk1heFRleHRTaXplID0gMTQKCWNhcC5NaW5UZXh0U2l6ZSA9IDEKCWNhcC5QYXJlbnQgPSBuYW1lCgoJbG9jYWwgc2hhZG93ID0gSW5zdGFuY2UubmV3KCJJbWFnZUxhYmVsIikKCXNoYWRvdy5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJc2hhZG93LkFuY2hvclBvaW50ID0gVmVjdG9yMi5uZXcoMC41LCAwLjUpCglzaGFkb3cuUG9zaXRpb24gPSBVRGltMi5uZXcoMC41LCAxLCAwLjUsIDEpCglzaGFkb3cuU2l6ZSA9IFVEaW0yLmZyb21PZmZzZXQoMjQsIDI0KQoJc2hhZG93LkltYWdlID0gaWNvbnMuZ3JpbgoJc2hhZG93LkltYWdlQ29sb3IzID0gQ29sb3IzLm5ldygwLCAwLCAwKQoJc2hhZG93LkltYWdlVHJhbnNwYXJlbmN5ID0gMC40NQoJc2hhZG93LlpJbmRleCA9IDIKCXNoYWRvdy5QYXJlbnQgPSBmcmFtZQoKCWxvY2FsIGljb24gPSBJbnN0YW5jZS5uZXcoIkltYWdlTGFiZWwiKQoJaWNvbi5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJaWNvbi5BbmNob3JQb2ludCA9IFZlY3RvcjIubmV3KDAuNSwgMC41KQoJaWNvbi5Qb3NpdGlvbiA9IFVEaW0yLm5ldygwLjUsIDAsIDAuNSwgMCkKCWljb24uU2l6ZSA9IFVEaW0yLmZyb21PZmZzZXQoMjQsIDI0KQoJaWNvbi5JbWFnZSA9IGljb25zLmdyaW4KCWljb24uSW1hZ2VDb2xvcjMgPSBpY29uVGludCBhbmQgZ3JlZW4gb3IgQ29sb3IzLm5ldygxLCAxLCAxKQoJaWNvbi5aSW5kZXggPSAzCglpY29uLlBhcmVudCA9IGZyYW1lCgoJZnJhbWUuUGFyZW50ID0gZXNwR3VpCgoJbG9jYWwgYm94ID0gewoJCXNob3duID0gZmFsc2UsCgkJaGFzUmVjdCA9IGZhbHNlLAoJCWZhZGUgPSAwLAoJCXggPSAwLAoJCXkgPSAwLAoJCXcgPSAwLAoJCWggPSAwLAoJCWhhc0d1biA9IGZhbHNlLAoJCWhhc0tuaWZlID0gZmFsc2UsCgkJbmV4dFNjYW4gPSAwLAoJCXJlc3Bhd25VbnRpbCA9IG5pbCwKCQlpY29uS2luZCA9ICJncmluIiwKCQlzaG93bkltYWdlID0gImdyaW4iLAoJCXN3YXBQaGFzZSA9IG5pbCwKCQlzd2FwVCA9IDAsCgkJY29sb3JDdXIgPSBncmVlbiwKCQljaGFyID0gbmlsLAoJCWNoYXJDb25uID0gbmlsLAoJCWRlc2NBZGRlZCA9IG5pbCwKCQlkZXNjUmVtb3ZlZCA9IG5pbCwKCQlwYXJ0cyA9IHt9LAoJCXBhcnRzRGlydHkgPSB0cnVlLAoJfQoKCWZ1bmN0aW9uIGJveC5TZXQoeCwgeSwgdywgaCkKCQlmcmFtZS5Qb3NpdGlvbiA9IFVEaW0yLmZyb21PZmZzZXQoeCwgeSkKCQlmcmFtZS5TaXplID0gVURpbTIuZnJvbU9mZnNldCh3LCBoKQoKCQlsb2NhbCBtID0gbWF0aC5taW4odywgaCkKCQlsb2NhbCBweCA9IG1hdGguY2xhbXAobSAqIDAuNDUsIDgsIDY0KQoJCXB4ID0gbWF0aC5taW4ocHgsIG1hdGgubWF4KG0gLSA0LCAwKSkKCQlpY29uLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KHB4LCBweCkKCQlzaGFkb3cuU2l6ZSA9IFVEaW0yLmZyb21PZmZzZXQocHgsIHB4KQoKCQlsb2NhbCBuaCA9IG1hdGguY2xhbXAoaCAqIDAuMiwgNSwgMTQpCgkJbmFtZS5TaXplID0gVURpbTIubmV3KDEsIDMwLCAwLCBuaCkKCWVuZAoKCWZ1bmN0aW9uIGJveC5TZXRJY29uKGspCgkJaWNvbi5JbWFnZSA9IGljb25zW2tdCgkJc2hhZG93LkltYWdlID0gaWNvbnNba10KCQlib3guc2hvd25JbWFnZSA9IGsKCWVuZAoKCWZ1bmN0aW9uIGJveC5TbmFwSWNvbigpCgkJYm94LnNob3duSW1hZ2UgPSBib3guaWNvbktpbmQKCQlib3guc3dhcFBoYXNlID0gbmlsCgkJYm94LnN3YXBUID0gMAoJCWljb24uSW1hZ2UgPSBpY29uc1tib3guaWNvbktpbmRdCgkJc2hhZG93LkltYWdlID0gaWNvbnNbYm94Lmljb25LaW5kXQoJZW5kCgoJZnVuY3Rpb24gYm94LlVwZGF0ZUljb24oa2luZCwgZHQpCgkJaWYga2luZCB+PSBib3guaWNvbktpbmQgdGhlbgoJCQlib3guaWNvbktpbmQgPSBraW5kCgkJZW5kCgoJCWlmIGJveC5pY29uS2luZCB+PSBib3guc2hvd25JbWFnZSB0aGVuCgkJCWlmIG5vdCBib3guc3dhcFBoYXNlIHRoZW4KCQkJCWJveC5zd2FwUGhhc2UgPSAib3V0IgoJCQkJYm94LnN3YXBUID0gMAoJCQllbHNlaWYgYm94LnN3YXBQaGFzZSA9PSAiaW4iIHRoZW4KCQkJCWJveC5zd2FwUGhhc2UgPSAib3V0IgoJCQkJYm94LnN3YXBUID0gMSAtIGJveC5zd2FwVAoJCQllbmQKCQllbmQKCgkJbG9jYWwgYSA9IDEKCgkJaWYgYm94LnN3YXBQaGFzZSA9PSAib3V0IiB0aGVuCgkJCWJveC5zd2FwVCA9IG1hdGgubWluKGJveC5zd2FwVCArIGR0IC8gaWNvbkZhZGVPdXQsIDEpCgkJCWEgPSAxIC0gYm94LnN3YXBUCgkJCWlmIGJveC5zd2FwVCA+PSAxIHRoZW4KCQkJCWJveC5zaG93bkltYWdlID0gYm94Lmljb25LaW5kCgkJCQlpY29uLkltYWdlID0gaWNvbnNbYm94Lmljb25LaW5kXQoJCQkJc2hhZG93LkltYWdlID0gaWNvbnNbYm94Lmljb25LaW5kXQoJCQkJYm94LnN3YXBQaGFzZSA9ICJpbiIKCQkJCWJveC5zd2FwVCA9IDAKCQkJCWEgPSAwCgkJCWVuZAoJCWVsc2VpZiBib3guc3dhcFBoYXNlID09ICJpbiIgdGhlbgoJCQlib3guc3dhcFQgPSBtYXRoLm1pbihib3guc3dhcFQgKyBkdCAvIGljb25GYWRlSW4sIDEpCgkJCWEgPSBib3guc3dhcFQKCQkJaWYgYm94LnN3YXBUID49IDEgdGhlbgoJCQkJYm94LnN3YXBQaGFzZSA9IG5pbAoJCQkJYm94LnN3YXBUID0gMAoJCQkJYSA9IDEKCQkJZW5kCgkJZW5kCgoJCWljb24uSW1hZ2VUcmFuc3BhcmVuY3kgPSAxIC0gYm94LmZhZGUgKiBhCgkJc2hhZG93LkltYWdlVHJhbnNwYXJlbmN5ID0gMSAtIGJveC5mYWRlICogYSAqIDAuNTUKCWVuZAoKCWZ1bmN0aW9uIGJveC5TZXRDb2xvcihjKQoJCXN0cm9rZS5Db2xvciA9IGMKCQluYW1lLlRleHRDb2xvcjMgPSBjCgkJaWYgaWNvblRpbnQgdGhlbgoJCQlpY29uLkltYWdlQ29sb3IzID0gYwoJCWVuZAoJZW5kCgoJZnVuY3Rpb24gYm94LkFwcGx5RmFkZSh0KQoJCXN0cm9rZS5UcmFuc3BhcmVuY3kgPSAxIC0gdAoJCW5hbWUuVGV4dFRyYW5zcGFyZW5jeSA9IDEgLSB0CgkJbmFtZS5UZXh0U3Ryb2tlVHJhbnNwYXJlbmN5ID0gMSAtIHQgKiAwLjUKCWVuZAoKCWZ1bmN0aW9uIGJveC5TaG93KCkKCQlmcmFtZS5WaXNpYmxlID0gdHJ1ZQoJZW5kCgoJZnVuY3Rpb24gYm94LkhpZGUoKQoJCWZyYW1lLlZpc2libGUgPSBmYWxzZQoJZW5kCgoJZnVuY3Rpb24gYm94LkRlc3Ryb3koKQoJCWZyYW1lOkRlc3Ryb3koKQoJZW5kCgoJcmV0dXJuIGJveAplbmQKCmxvY2FsIENPUk5FUlMgPSB7CglWZWN0b3IzLm5ldygxLCAxLCAxKSwgVmVjdG9yMy5uZXcoMSwgMSwgLTEpLAoJVmVjdG9yMy5uZXcoMSwgLTEsIDEpLCBWZWN0b3IzLm5ldygxLCAtMSwgLTEpLAoJVmVjdG9yMy5uZXcoLTEsIDEsIDEpLCBWZWN0b3IzLm5ldygtMSwgMSwgLTEpLAoJVmVjdG9yMy5uZXcoLTEsIC0xLCAxKSwgVmVjdG9yMy5uZXcoLTEsIC0xLCAtMSksCn0KCmxvY2FsIEVTUCA9IHsKCWVuYWJsZWQgPSBmYWxzZSwKCWJveGVzID0ge30sCglyZW5kZXJDb25uID0gbmlsLAoJYWRkZWRDb25uID0gbmlsLAoJcmVtb3ZpbmdDb25uID0gbmlsLAp9Cgpsb2NhbCBmdW5jdGlvbiBzY2FuUGxheWVyKHBscikKCWxvY2FsIGhhc0d1biwgaGFzS25pZmUgPSBmYWxzZSwgZmFsc2UKCglsb2NhbCBmdW5jdGlvbiBzY2FuKHBhcmVudCkKCQlpZiBub3QgcGFyZW50IHRoZW4gcmV0dXJuIGVuZAoJCWZvciBfLCBjaGlsZCBpbiBpcGFpcnMocGFyZW50OkdldENoaWxkcmVuKCkpIGRvCgkJCWlmIGNoaWxkOklzQSgiVG9vbCIpIHRoZW4KCQkJCWlmIGNoaWxkLk5hbWUgPT0gIkd1biIgdGhlbgoJCQkJCWhhc0d1biA9IHRydWUKCQkJCWVsc2VpZiBjaGlsZC5OYW1lID09ICJLbmlmZSIgdGhlbgoJCQkJCWhhc0tuaWZlID0gdHJ1ZQoJCQkJZW5kCgkJCWVuZAoJCQlpZiAjY2hpbGQ6R2V0Q2hpbGRyZW4oKSA+IDAgdGhlbgoJCQkJc2NhbihjaGlsZCkKCQkJZW5kCgkJZW5kCgllbmQKCglzY2FuKHBscikKCXNjYW4ocGxyLkNoYXJhY3RlcikKCglyZXR1cm4gaGFzR3VuLCBoYXNLbmlmZQplbmQKCmxvY2FsIGZ1bmN0aW9uIHJlYnVpbGRQYXJ0cyhjaGFyKQoJbG9jYWwgbGlzdCA9IHt9Cglmb3IgXywgZCBpbiBpcGFpcnMoY2hhcjpHZXREZXNjZW5kYW50cygpKSBkbwoJCWlmIGQ6SXNBKCJCYXNlUGFydCIpIGFuZCBkLlRyYW5zcGFyZW5jeSA8IDEgdGhlbgoJCQlpZiBpbmNsdWRlQWNjZXNzb3JpZXMgb3Igbm90IGQ6RmluZEZpcnN0QW5jZXN0b3JPZkNsYXNzKCJBY2Nlc3NvcnkiKSB0aGVuCgkJCQlpZiBpbmNsdWRlVG9vbHMgb3Igbm90IGQ6RmluZEZpcnN0QW5jZXN0b3JPZkNsYXNzKCJUb29sIikgdGhlbgoJCQkJCWxvY2FsIHMgPSBkLlNpemUKCQkJCQlpZiBzLlggKiBzLlkgKiBzLlogPj0gMC4wMiB0aGVuCgkJCQkJCWxpc3RbI2xpc3QgKyAxXSA9IGQKCQkJCQllbmQKCQkJCWVuZAoJCQllbmQKCQllbmQKCWVuZAoJaWYgI2xpc3QgPiBtYXhQYXJ0cyB0aGVuCgkJdGFibGUuc29ydChsaXN0LCBmdW5jdGlvbihhLCBiKQoJCQlsb2NhbCBzYSwgc2IgPSBhLlNpemUsIGIuU2l6ZQoJCQlyZXR1cm4gc2EuWCAqIHNhLlkgKiBzYS5aID4gc2IuWCAqIHNiLlkgKiBzYi5aCgkJZW5kKQoJCWZvciBpID0gbWF4UGFydHMgKyAxLCAjbGlzdCBkbwoJCQlsaXN0W2ldID0gbmlsCgkJZW5kCgllbmQKCXJldHVybiBsaXN0CmVuZAoKbG9jYWwgZnVuY3Rpb24gaGlkZUJveChib3gpCglpZiBib3guc2hvd24gdGhlbgoJCWJveC5zaG93biA9IGZhbHNlCgkJYm94LkhpZGUoKQoJZW5kCglib3guaGFzUmVjdCA9IGZhbHNlCglib3guZmFkZSA9IDAKCWJveC5TbmFwSWNvbigpCmVuZAoKbG9jYWwgZnVuY3Rpb24gdXBkYXRlQm94KHBsciwgYm94LCBkdCkKCWxvY2FsIGNoYXIgPSBwbHIuQ2hhcmFjdGVyCglpZiBub3QgY2hhciBvciBub3QgY2hhci5QYXJlbnQgdGhlbgoJCWhpZGVCb3goYm94KQoJCXJldHVybgoJZW5kCgoJbG9jYWwgaHVtID0gY2hhcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIkh1bWFub2lkIikKCWxvY2FsIHJvb3QgPSBjaGFyOkZpbmRGaXJzdENoaWxkKCJIdW1hbm9pZFJvb3RQYXJ0IikKCWlmIG5vdCBodW0gb3Igbm90IHJvb3QgdGhlbgoJCWhpZGVCb3goYm94KQoJCXJldHVybgoJZW5kCgoJaWYgYm94LmNoYXIgfj0gY2hhciB0aGVuCgkJYm94LmNoYXIgPSBjaGFyCgkJYm94LnBhcnRzRGlydHkgPSB0cnVlCgkJaWYgYm94LmRlc2NBZGRlZCB0aGVuIGJveC5kZXNjQWRkZWQ6RGlzY29ubmVjdCgpIGJveC5kZXNjQWRkZWQgPSBuaWwgZW5kCgkJaWYgYm94LmRlc2NSZW1vdmVkIHRoZW4gYm94LmRlc2NSZW1vdmVkOkRpc2Nvbm5lY3QoKSBib3guZGVzY1JlbW92ZWQgPSBuaWwgZW5kCgkJYm94LmRlc2NBZGRlZCA9IGNoYXIuRGVzY2VuZGFudEFkZGVkOkNvbm5lY3QoZnVuY3Rpb24oKQoJCQlib3gucGFydHNEaXJ0eSA9IHRydWUKCQllbmQpCgkJYm94LmRlc2NSZW1vdmVkID0gY2hhci5EZXNjZW5kYW50UmVtb3ZlZDpDb25uZWN0KGZ1bmN0aW9uKCkKCQkJYm94LnBhcnRzRGlydHkgPSB0cnVlCgkJZW5kKQoJZW5kCgoJaWYgYm94LnBhcnRzRGlydHkgdGhlbgoJCWJveC5wYXJ0c0RpcnR5ID0gZmFsc2UKCQlib3gucGFydHMgPSByZWJ1aWxkUGFydHMoY2hhcikKCWVuZAoKCWxvY2FsIHJvb3RTUCA9IGNhbWVyYTpXb3JsZFRvVmlld3BvcnRQb2ludChyb290LlBvc2l0aW9uKQoJaWYgcm9vdFNQLlogPD0gMCB0aGVuCgkJaGlkZUJveChib3gpCgkJcmV0dXJuCgllbmQKCglsb2NhbCBwYXJ0cyA9IGJveC5wYXJ0cwoJbG9jYWwgbWluWCwgbWluWSA9IG1hdGguaHVnZSwgbWF0aC5odWdlCglsb2NhbCBtYXhYLCBtYXhZID0gLW1hdGguaHVnZSwgLW1hdGguaHVnZQoJbG9jYWwgYW55ID0gZmFsc2UKCglsb2NhbCBmdW5jdGlvbiBwcm9qZWN0KGNmLCBoeCwgaHksIGh6KQoJCWZvciBjID0gMSwgI0NPUk5FUlMgZG8KCQkJbG9jYWwgcyA9IENPUk5FUlNbY10KCQkJbG9jYWwgc3AgPSBjYW1lcmE6V29ybGRUb1ZpZXdwb3J0UG9pbnQoY2Y6UG9pbnRUb1dvcmxkU3BhY2UoVmVjdG9yMy5uZXcocy5YICogaHgsIHMuWSAqIGh5LCBzLlogKiBoeikpKQoJCQlpZiBzcC5aID4gMC4wNSB0aGVuCgkJCQlhbnkgPSB0cnVlCgkJCQlsb2NhbCBweCwgcHkgPSBzcC5YLCBzcC5ZCgkJCQlpZiBweCA8IG1pblggdGhlbiBtaW5YID0gcHggZW5kCgkJCQlpZiBweCA+IG1heFggdGhlbiBtYXhYID0gcHggZW5kCgkJCQlpZiBweSA8IG1pblkgdGhlbiBtaW5ZID0gcHkgZW5kCgkJCQlpZiBweSA+IG1heFkgdGhlbiBtYXhZID0gcHkgZW5kCgkJCWVuZAoJCWVuZAoJZW5kCgoJaWYgI3BhcnRzID4gMCB0aGVuCgkJZm9yIGkgPSAxLCAjcGFydHMgZG8KCQkJbG9jYWwgcGFydCA9IHBhcnRzW2ldCgkJCWlmIHBhcnQuUGFyZW50IHRoZW4KCQkJCWxvY2FsIHN6ID0gcGFydC5TaXplCgkJCQlwcm9qZWN0KHBhcnQuQ0ZyYW1lLCBzei5YICogMC41LCBzei5ZICogMC41LCBzei5aICogMC41KQoJCQllbmQKCQllbmQKCWVsc2UKCQlwcm9qZWN0KHJvb3QuQ0ZyYW1lLCAxLjI1LCAyLjc1LCAxLjI1KQoJZW5kCgoJaWYgbm90IGFueSB0aGVuCgkJaGlkZUJveChib3gpCgkJcmV0dXJuCgllbmQKCglsb2NhbCB2cyA9IGNhbWVyYS5WaWV3cG9ydFNpemUKCW1pblggPSBtYXRoLmNsYW1wKG1pblgsIC1zY3JlZW5NYXJnaW4sIHZzLlggKyBzY3JlZW5NYXJnaW4pCgltYXhYID0gbWF0aC5jbGFtcChtYXhYLCAtc2NyZWVuTWFyZ2luLCB2cy5YICsgc2NyZWVuTWFyZ2luKQoJbWluWSA9IG1hdGguY2xhbXAobWluWSwgLXNjcmVlbk1hcmdpbiwgdnMuWSArIHNjcmVlbk1hcmdpbikKCW1heFkgPSBtYXRoLmNsYW1wKG1heFksIC1zY3JlZW5NYXJnaW4sIHZzLlkgKyBzY3JlZW5NYXJnaW4pCgoJbWluWCA9IG1pblggLSBwYWRkaW5nCgltaW5ZID0gbWluWSAtIHBhZGRpbmcKCW1heFggPSBtYXhYICsgcGFkZGluZwoJbWF4WSA9IG1heFkgKyBwYWRkaW5nCgoJbG9jYWwgdHcgPSBtYXhYIC0gbWluWAoJbG9jYWwgdGggPSBtYXhZIC0gbWluWQoJaWYgdHcgPCAyIG9yIHRoIDwgMiB0aGVuCgkJaGlkZUJveChib3gpCgkJcmV0dXJuCgllbmQKCglpZiBib3guaGFzUmVjdCB0aGVuCgkJbG9jYWwgY2N4LCBjY3kgPSBib3gueCArIGJveC53ICogMC41LCBib3gueSArIGJveC5oICogMC41CgkJbG9jYWwgbmN4LCBuY3kgPSBtaW5YICsgdHcgKiAwLjUsIG1pblkgKyB0aCAqIDAuNQoJCWlmIG1hdGguYWJzKG5jeCAtIGNjeCkgPiBtYXRoLm1heChib3gudyAqIDIsIDIwMCkKCQkJb3IgbWF0aC5hYnMobmN5IC0gY2N5KSA+IG1hdGgubWF4KGJveC5oICogMiwgMjAwKSB0aGVuCgkJCWJveC54LCBib3gueSwgYm94LncsIGJveC5oID0gbWluWCwgbWluWSwgdHcsIHRoCgkJZWxzZQoJCQlsb2NhbCBhID0gMSAtIG1hdGguZXhwKC1zbW9vdGhTcGVlZCAqIGR0KQoJCQlib3gueCA9IGJveC54ICsgKG1pblggLSBib3gueCkgKiBhCgkJCWJveC55ID0gYm94LnkgKyAobWluWSAtIGJveC55KSAqIGEKCQkJYm94LncgPSBib3gudyArICh0dyAtIGJveC53KSAqIGEKCQkJYm94LmggPSBib3guaCArICh0aCAtIGJveC5oKSAqIGEKCQllbmQKCWVsc2UKCQlib3guaGFzUmVjdCA9IHRydWUKCQlib3gueCwgYm94LnksIGJveC53LCBib3guaCA9IG1pblgsIG1pblksIHR3LCB0aAoJZW5kCgoJbG9jYWwgbm93ID0gb3MuY2xvY2soKQoJbG9jYWwga2luZCwgY29sCgoJaWYgaHVtLkhlYWx0aCA8PSAwIHRoZW4KCQlraW5kLCBjb2wgPSAic2t1bGwiLCBncmV5CgllbHNlaWYgYm94LnJlc3Bhd25VbnRpbCBhbmQgbm93IDwgYm94LnJlc3Bhd25VbnRpbCB0aGVuCgkJa2luZCwgY29sID0gInNoaWVsZCIsIGdyZXkKCWVsc2VpZiBib3guaGFzR3VuIHRoZW4KCQlraW5kLCBjb2wgPSAiZ3VuIiwgYmx1ZQoJZWxzZWlmIGJveC5oYXNLbmlmZSB0aGVuCgkJa2luZCwgY29sID0gImtuaWZlIiwgcmVkCgllbHNlCgkJa2luZCwgY29sID0gImdyaW4iLCBncmVlbgoJZW5kCgoJaWYgYm94LmNvbG9yQ3VyIH49IGNvbCB0aGVuCgkJbG9jYWwgYSA9IDEgLSBtYXRoLmV4cCgtY29sb3JTcGVlZCAqIGR0KQoJCWxvY2FsIG5jID0gYm94LmNvbG9yQ3VyOkxlcnAoY29sLCBhKQoJCWlmIG1hdGguYWJzKG5jLlIgLSBjb2wuUikgKyBtYXRoLmFicyhuYy5HIC0gY29sLkcpICsgbWF0aC5hYnMobmMuQiAtIGNvbC5CKSA8IDAuMDIgdGhlbgoJCQluYyA9IGNvbAoJCWVuZAoJCWJveC5jb2xvckN1ciA9IG5jCgkJYm94LlNldENvbG9yKG5jKQoJZW5kCgoJYm94LlNldChib3gueCwgYm94LnksIGJveC53LCBib3guaCkKCglpZiBub3QgYm94LnNob3duIHRoZW4KCQlib3guc2hvd24gPSB0cnVlCgkJYm94LmZhZGUgPSAwCgkJYm94LlNob3coKQoJZW5kCgoJaWYgYm94LmZhZGUgPCAxIHRoZW4KCQlib3guZmFkZSA9IG1hdGgubWluKGJveC5mYWRlICsgZHQgKiBmYWRlU3BlZWQsIDEpCgkJYm94LkFwcGx5RmFkZShib3guZmFkZSkKCWVuZAoKCWJveC5VcGRhdGVJY29uKGtpbmQsIGR0KQplbmQKCmxvY2FsIGZ1bmN0aW9uIGFkZFBsYXllcihwbHIpCglpZiBwbHIgPT0gcGxheWVyIG9yIEVTUC5ib3hlc1twbHJdIHRoZW4KCQlyZXR1cm4KCWVuZAoJbG9jYWwgYm94ID0gbmV3Qm94KHBscikKCWJveC5jaGFyQ29ubiA9IHBsci5DaGFyYWN0ZXJBZGRlZDpDb25uZWN0KGZ1bmN0aW9uKCkKCQlib3guaGFzR3VuID0gZmFsc2UKCQlib3guaGFzS25pZmUgPSBmYWxzZQoJCWJveC5uZXh0U2NhbiA9IDAKCQlib3gucmVzcGF3blVudGlsID0gb3MuY2xvY2soKSArIHJlc3Bhd25TaGllbGRUaW1lCgllbmQpCglFU1AuYm94ZXNbcGxyXSA9IGJveAplbmQKCmxvY2FsIGZ1bmN0aW9uIHJlbW92ZVBsYXllcihwbHIpCglsb2NhbCBib3ggPSBFU1AuYm94ZXNbcGxyXQoJaWYgYm94IHRoZW4KCQlFU1AuYm94ZXNbcGxyXSA9IG5pbAoJCWlmIGJveC5jaGFyQ29ubiB0aGVuCgkJCWJveC5jaGFyQ29ubjpEaXNjb25uZWN0KCkKCQllbmQKCQlpZiBib3guZGVzY0FkZGVkIHRoZW4KCQkJYm94LmRlc2NBZGRlZDpEaXNjb25uZWN0KCkKCQllbmQKCQlpZiBib3guZGVzY1JlbW92ZWQgdGhlbgoJCQlib3guZGVzY1JlbW92ZWQ6RGlzY29ubmVjdCgpCgkJZW5kCgkJYm94LkRlc3Ryb3koKQoJZW5kCmVuZAoKaWYgZW52LlhUV19FU1BfU0NBTl9USFJFQUQgdGhlbgoJcGNhbGwoZnVuY3Rpb24oKSBlbnYuWFRXX0VTUF9TQ0FOX1RIUkVBRCA9IG5pbCBlbmQpCmVuZAoKZW52LlhUV19FU1BfU0NBTl9USFJFQUQgPSB0YXNrLnNwYXduKGZ1bmN0aW9uKCkKCXdoaWxlIGVudi5YVFdfRVNQX1NDQU5fVEhSRUFEIGRvCgkJdGFzay53YWl0KDAuMjUpCgkJaWYgRVNQLmVuYWJsZWQgdGhlbgoJCQlsb2NhbCBub3cgPSBvcy5jbG9jaygpCgkJCWZvciBwbHIsIGJveCBpbiBwYWlycyhFU1AuYm94ZXMpIGRvCgkJCQlpZiBub3cgPj0gYm94Lm5leHRTY2FuIHRoZW4KCQkJCQlsb2NhbCBoYXNHdW4sIGhhc0tuaWZlID0gc2NhblBsYXllcihwbHIpCgkJCQkJYm94Lmhhc0d1biA9IGhhc0d1bgoJCQkJCWJveC5oYXNLbmlmZSA9IGhhc0tuaWZlCgkJCQkJYm94Lm5leHRTY2FuID0gbm93ICsgKChoYXNHdW4gb3IgaGFzS25pZmUpIGFuZCAyIG9yIDQpCgkJCQllbmQKCQkJZW5kCgkJZW5kCgllbmQKZW5kKQoKbG9jYWwgZnVuY3Rpb24gc2V0RVNQKG9uKQoJaWYgb24gPT0gRVNQLmVuYWJsZWQgdGhlbgoJCXJldHVybgoJZW5kCglFU1AuZW5hYmxlZCA9IG9uCgoJaWYgb24gdGhlbgoJCWZvciBfLCBwbHIgaW4gaXBhaXJzKFBsYXllcnM6R2V0UGxheWVycygpKSBkbwoJCQlhZGRQbGF5ZXIocGxyKQoJCWVuZAoJCUVTUC5hZGRlZENvbm4gPSBQbGF5ZXJzLlBsYXllckFkZGVkOkNvbm5lY3QoYWRkUGxheWVyKQoJCUVTUC5yZW1vdmluZ0Nvbm4gPSBQbGF5ZXJzLlBsYXllclJlbW92aW5nOkNvbm5lY3QocmVtb3ZlUGxheWVyKQoJCUVTUC5yZW5kZXJDb25uID0gUnVuU2VydmljZS5SZW5kZXJTdGVwcGVkOkNvbm5lY3QoZnVuY3Rpb24oZHQpCgkJCWR0ID0gZHQgb3IgMC4wMTYKCQkJY2FtZXJhID0gd29ya3NwYWNlLkN1cnJlbnRDYW1lcmEKCQkJZm9yIHBsciwgYm94IGluIHBhaXJzKEVTUC5ib3hlcykgZG8KCQkJCXVwZGF0ZUJveChwbHIsIGJveCwgZHQpCgkJCWVuZAoJCWVuZCkKCWVsc2UKCQlpZiBFU1AucmVuZGVyQ29ubiB0aGVuIEVTUC5yZW5kZXJDb25uOkRpc2Nvbm5lY3QoKSBFU1AucmVuZGVyQ29ubiA9IG5pbCBlbmQKCQlpZiBFU1AuYWRkZWRDb25uIHRoZW4gRVNQLmFkZGVkQ29ubjpEaXNjb25uZWN0KCkgRVNQLmFkZGVkQ29ubiA9IG5pbCBlbmQKCQlpZiBFU1AucmVtb3ZpbmdDb25uIHRoZW4gRVNQLnJlbW92aW5nQ29ubjpEaXNjb25uZWN0KCkgRVNQLnJlbW92aW5nQ29ubiA9IG5pbCBlbmQKCQlmb3IgcGxyIGluIHBhaXJzKEVTUC5ib3hlcykgZG8KCQkJcmVtb3ZlUGxheWVyKHBscikKCQllbmQKCWVuZAplbmQKCmVudltTVE9QX0tFWV0gPSBmdW5jdGlvbigpCglzZXRFU1AoZmFsc2UpCglpZiBlc3BHdWkgdGhlbgoJCWVzcEd1aTpEZXN0cm95KCkKCWVuZAoJaWYgZW52LlhUV19FU1BfU0NBTl9USFJFQUQgdGhlbgoJCWVudi5YVFdfRVNQX1NDQU5fVEhSRUFEID0gbmlsCgllbmQKZW5kCgpsb2NhbCBsYXN0ID0gMAoKbG9jYWwgZnVuY3Rpb24gZmxpcCgpCglpZiB0aWNrKCkgLSBsYXN0IDwgMC4xIHRoZW4gcmV0dXJuIGVuZAoJbGFzdCA9IHRpY2soKQoKCXNldEVTUChub3QgRVNQLmVuYWJsZWQpCgoJVHdlZW5TZXJ2aWNlOkNyZWF0ZShhbmltLCBUd2VlbkluZm8ubmV3KDAuMjUsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uT3V0KSwgewoJCVZhbHVlID0gRVNQLmVuYWJsZWQgYW5kIDEgb3IgMAoJfSk6UGxheSgpCmVuZAoKbG9jYWwgZnVuY3Rpb24gcHJlc3MoaW5wdXQpCglpZiBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Nb3VzZUJ1dHRvbjEKCQlvciBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Ub3VjaCB0aGVuCgkJZmxpcCgpCgllbmQKZW5kCgpiYWxscy5JbnB1dEJlZ2FuOkNvbm5lY3QocHJlc3MpCnJvdy5JbnB1dEJlZ2FuOkNvbm5lY3QocHJlc3MpCmVuZCwgZnVuY3Rpb24oZSkKICAgIGxvY2FsIHRiID0gIiIKICAgIHBjYWxsKGZ1bmN0aW9uKCkgdGIgPSBkZWJ1Zy50cmFjZWJhY2soIiIsIDIpIGVuZCkKICAgIHJldHVybiB0b3N0cmluZyhlKSAuLiAiXG4iIC4uIHRiCmVuZCkKaWYgbm90IF9feHR3X29rIHRoZW4KICAgIGxvY2FsIGVyclN0ciA9IHRvc3RyaW5nKF9feHR3X2VycikKICAgIGlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgICAgICBwY2FsbChmdW5jdGlvbigpIF9feHR3X3NlbGY6U2V0QXR0cmlidXRlKCJ4dHdfZXJyb3IiLCBlcnJTdHIpIGVuZCkKICAgIGVuZAogICAgcGNhbGwoZnVuY3Rpb24oKSB3YXJuKCJbeHR3XSBGQUlMOiAiIC4uIF9feHR3X25hbWUgLi4gIiAoIiAuLiBfX3h0d19jbHMgLi4gIik6ICIgLi4gZXJyU3RyKSBlbmQpCmVuZA==")
    local fn, cerr = loadstring(src, "@xtw:" .. tostring(s_29.Name))
    if not fn then
        compiledFail = compiledFail + 1
        compileErrors[#compileErrors + 1] = "Function (LocalScript): " .. tostring(cerr)
    else
        compiled = compiled + 1
        pcall(function() s_29.Source = src end)
        pcall(function() s_29.Parent = n[28] end)
        pcall(function() s_29.Disabled = false end)
    end
end
do
    local s_37 = n[37]
    local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkZ1bmN0aW9uIiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgUGxheWVycyA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpCmxvY2FsIFJ1blNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlJ1blNlcnZpY2UiKQpsb2NhbCBUd2VlblNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlR3ZWVuU2VydmljZSIpCmxvY2FsIERlYnJpcyA9IGdhbWU6R2V0U2VydmljZSgiRGVicmlzIikKbG9jYWwgVGV4dFNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlRleHRTZXJ2aWNlIikKbG9jYWwgVXNlcklucHV0U2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVXNlcklucHV0U2VydmljZSIpCgpsb2NhbCBST1dfTkFNRSA9IG5pbAoKbG9jYWwgZnVuY3Rpb24gZ2V0RW52KCkKCWxvY2FsIG9rLCBlID0gcGNhbGwoZnVuY3Rpb24oKSByZXR1cm4gZ2V0Z2VudiBhbmQgZ2V0Z2VudigpIGVuZCkKCWlmIG9rIGFuZCB0eXBlKGUpID09ICJ0YWJsZSIgdGhlbiByZXR1cm4gZSBlbmQKCXJldHVybiBfRwplbmQKbG9jYWwgZW52ID0gZ2V0RW52KCkKCmxvY2FsIHJvdyA9IG5pbAoKaWYgZW52IGFuZCBlbnYuWFRXX0ZMWV9UQVJHRVQgdGhlbgoJbG9jYWwgdCA9IGVudi5YVFdfRkxZX1RBUkdFVAoJaWYgdHlwZW9mKHQpID09ICJJbnN0YW5jZSIgYW5kIHQ6SXNBKCJHdWlPYmplY3QiKSB0aGVuCgkJcm93ID0gdAoJZW5kCmVuZAoKaWYgbm90IHJvdyBhbmQgUk9XX05BTUUgdGhlbgoJbG9jYWwgcGcgPSBQbGF5ZXJzLkxvY2FsUGxheWVyOkZpbmRGaXJzdENoaWxkT2ZDbGFzcygiUGxheWVyR3VpIikKCWlmIHBnIHRoZW4KCQlmb3IgXywgZCBpbiBpcGFpcnMocGc6R2V0RGVzY2VuZGFudHMoKSkgZG8KCQkJaWYgZDpJc0EoIkd1aU9iamVjdCIpIGFuZCBkLk5hbWUgPT0gUk9XX05BTUUgYW5kIGQ6RmluZEZpcnN0Q2hpbGQoIkJhbGwiLCB0cnVlKSB0aGVuCgkJCQlyb3cgPSBkCgkJCQlicmVhawoJCQllbmQKCQllbmQKCWVuZAplbmQKCmlmIG5vdCByb3cgdGhlbgoJcGNhbGwoZnVuY3Rpb24oKQoJCWxvY2FsIHAgPSBzY3JpcHQgYW5kIHNjcmlwdC5QYXJlbnQKCQlpZiBwIGFuZCBwOklzQSgiR3VpT2JqZWN0IikgdGhlbgoJCQlyb3cgPSBwCgkJZW5kCgllbmQpCmVuZAoKaWYgbm90IHJvdyB0aGVuCgl3YXJuKCJbRmx5XSBObyB0YXJnZXQgcm93IGZyYW1lLiIpCglyZXR1cm4KZW5kCgpsb2NhbCBiYWxscyA9IHJvdzpGaW5kRmlyc3RDaGlsZCgiQmFsbCIsIHRydWUpCmlmIG5vdCBiYWxscyB0aGVuCgliYWxscyA9IHJvdzpXYWl0Rm9yQ2hpbGQoIkJhbGwiLCA1KQplbmQKaWYgbm90IGJhbGxzIHRoZW4KCXdhcm4oIltGbHldIE5vIEJhbGwgY2hpbGQgaW4gcm93LiIpCglyZXR1cm4KZW5kCgpsb2NhbCBkZXNjcmlwdGlvbiA9IHJvdzpXYWl0Rm9yQ2hpbGQoIkRlc2NyaXB0aW9uIiwgNSkKaWYgbm90IGRlc2NyaXB0aW9uIHRoZW4KCXdhcm4oIltGbHldIE5vIERlc2NyaXB0aW9uIGNoaWxkIGluIHJvdy4iKQoJcmV0dXJuCmVuZAoKbG9jYWwgcGxheWVyID0gUGxheWVycy5Mb2NhbFBsYXllcgoKcm93LkFjdGl2ZSA9IHRydWUKYmFsbHMuQWN0aXZlID0gdHJ1ZQpiYWxscy5BdXRvQnV0dG9uQ29sb3IgPSBmYWxzZQoKbG9jYWwgbGVmdG92ZXIgPSByb3c6RmluZEZpcnN0Q2hpbGQoIkRlc2NQYW5lbCIsIHRydWUpCmlmIGxlZnRvdmVyIHRoZW4KCWxlZnRvdmVyOkRlc3Ryb3koKQplbmQKCmxvY2FsIGRhcmt5ZWxsb3cgPSBDb2xvcjMuZnJvbVJHQig0MCwgNDAsIDQwKQpsb2NhbCB5ZWxsb3cgPSBDb2xvcjMuZnJvbVJHQigwLCAxMTAsIDApCgpsb2NhbCBncmFkaWVudCA9IHJvdzpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlVJR3JhZGllbnQiKSBvciBJbnN0YW5jZS5uZXcoIlVJR3JhZGllbnQiKQpncmFkaWVudC5Db2xvciA9IENvbG9yU2VxdWVuY2UubmV3KHsKCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMCwgeWVsbG93KSwKCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMC40OTksIHllbGxvdyksCglDb2xvclNlcXVlbmNlS2V5cG9pbnQubmV3KDAuNSwgZGFya3llbGxvdyksCglDb2xvclNlcXVlbmNlS2V5cG9pbnQubmV3KDEsIGRhcmt5ZWxsb3cpLAp9KQpncmFkaWVudC5PZmZzZXQgPSBWZWN0b3IyLm5ldygtMC41LCAwKQpncmFkaWVudC5QYXJlbnQgPSByb3cKCmxvY2FsIG9mZlBvcyA9IGJhbGxzLlBvc2l0aW9uCmxvY2FsIG9uUG9zID0gVURpbTIubmV3KAoJMSAtIG9mZlBvcy5YLlNjYWxlIC0gYmFsbHMuU2l6ZS5YLlNjYWxlLAoJb2ZmUG9zLlguT2Zmc2V0IC0gYmFsbHMuU2l6ZS5YLk9mZnNldCwKCW9mZlBvcy5ZLlNjYWxlLAoJb2ZmUG9zLlkuT2Zmc2V0CikKCmxvY2FsIG9mZkMgPSAwCmxvY2FsIG9uQyA9IDAKCmxvY2FsIGZ1bmN0aW9uIG1lYXN1cmUoKQoJbG9jYWwgdyA9IHJvdy5BYnNvbHV0ZVNpemUuWAoJaWYgdyA8PSAwIHRoZW4gcmV0dXJuIGVuZAoJbG9jYWwgaGFsZiA9ICgwLjUgLSBiYWxscy5BbmNob3JQb2ludC5YKSAqIChiYWxscy5TaXplLlguU2NhbGUgKyBiYWxscy5TaXplLlguT2Zmc2V0IC8gdykKCW9mZkMgPSBvZmZQb3MuWC5TY2FsZSArIG9mZlBvcy5YLk9mZnNldCAvIHcgKyBoYWxmCglvbkMgPSBvblBvcy5YLlNjYWxlICsgb25Qb3MuWC5PZmZzZXQgLyB3ICsgaGFsZgplbmQKCmxvY2FsIGFuaW0gPSBJbnN0YW5jZS5uZXcoIk51bWJlclZhbHVlIikKYW5pbS5WYWx1ZSA9IDAKCmxvY2FsIGZ1bmN0aW9uIGFwcGx5KHUpCglsb2NhbCBzeCA9IG9mZlBvcy5YLlNjYWxlICsgKG9uUG9zLlguU2NhbGUgLSBvZmZQb3MuWC5TY2FsZSkgKiB1Cglsb2NhbCBveCA9IG9mZlBvcy5YLk9mZnNldCArIChvblBvcy5YLk9mZnNldCAtIG9mZlBvcy5YLk9mZnNldCkgKiB1CgliYWxscy5Qb3NpdGlvbiA9IFVEaW0yLm5ldyhzeCwgb3gsIG9mZlBvcy5ZLlNjYWxlLCBvZmZQb3MuWS5PZmZzZXQpCglncmFkaWVudC5PZmZzZXQgPSBWZWN0b3IyLm5ldygob2ZmQyArIChvbkMgLSBvZmZDKSAqIHUpIC0gMC41LCAwKQplbmQKCmFuaW0uQ2hhbmdlZDpDb25uZWN0KGFwcGx5KQptZWFzdXJlKCkKYXBwbHkoMCkKCnJvdzpHZXRQcm9wZXJ0eUNoYW5nZWRTaWduYWwoIkFic29sdXRlU2l6ZSIpOkNvbm5lY3QoZnVuY3Rpb24oKQoJbWVhc3VyZSgpCglhcHBseShhbmltLlZhbHVlKQplbmQpCgpsb2NhbCBkZXNjVGV4dCA9ICJUaGlzIGlzIHlvdXIgU21vb3RoIEZseSB0b2dnbGUuIFdBU0QgdG8gZ2xpZGUsIFNwYWNlIHRvIGdvIHVwLiIKCmlmIGRlc2NyaXB0aW9uLlRleHRTY2FsZWQgdGhlbgoJbG9jYWwgcmVuZGVyZWQgPSBkZXNjcmlwdGlvbi5UZXh0Qm91bmRzLlkKCWRlc2NyaXB0aW9uLlRleHRTY2FsZWQgPSBmYWxzZQoJZGVzY3JpcHRpb24uVGV4dFNpemUgPSBtYXRoLm1heCgxLCBtYXRoLmZsb29yKHJlbmRlcmVkID4gMCBhbmQgcmVuZGVyZWQgb3Igcm93LkFic29sdXRlU2l6ZS5ZICogMC43KSkKZW5kCgpmb3IgXywgYyBpbiBpcGFpcnMoZGVzY3JpcHRpb246R2V0Q2hpbGRyZW4oKSkgZG8KCWlmIGM6SXNBKCJVSVN0cm9rZSIpIG9yIGMuTmFtZSA9PSAiVG9wTGluZSIgb3IgYy5OYW1lID09ICJCb3R0b21MaW5lIiBvciBjLk5hbWUgPT0gIlJpZ2h0TGluZSIKCQlvciBjLk5hbWUgPT0gIlNlYW1QYXRjaCIgb3IgYy5OYW1lID09ICJUb3BCcmlkZ2UiIG9yIGMuTmFtZSA9PSAiQm90dG9tQnJpZGdlIgoJCW9yIGMuTmFtZSA9PSAiQ2FwQ2xpcCIgb3IgYy5OYW1lID09ICJDYXAiIG9yIGMuTmFtZSA9PSAiRGVzY0Nvcm5lciIKCQlvciBjLk5hbWUgPT0gIkxlZnRHdWFyZCIgdGhlbgoJCWM6RGVzdHJveSgpCgllbmQKZW5kCgpsb2NhbCBob3N0ID0gcm93LlBhcmVudApsb2NhbCBzdHJva2VDb2xvciA9IG5pbApsb2NhbCBzdHJva2VUcmFuc3BhcmVuY3kgPSAwCmxvY2FsIHN0cm9rZUV4YWN0ID0gMQpsb2NhbCBzdHJva2VNb2RlID0gRW51bS5BcHBseVN0cm9rZU1vZGUuQm9yZGVyCmxvY2FsIGNvcm5lclJhZGl1cyA9IDAKCmlmIGhvc3QgYW5kIGhvc3Q6SXNBKCJHdWlPYmplY3QiKSB0aGVuCglkZXNjcmlwdGlvbi5CYWNrZ3JvdW5kQ29sb3IzID0gaG9zdC5CYWNrZ3JvdW5kQ29sb3IzCglkZXNjcmlwdGlvbi5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gaG9zdC5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5Cglsb2NhbCBocyA9IGhvc3Q6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJVSVN0cm9rZSIpCglpZiBocyB0aGVuCgkJc3Ryb2tlQ29sb3IgPSBocy5Db2xvcgoJCXN0cm9rZVRyYW5zcGFyZW5jeSA9IGhzLlRyYW5zcGFyZW5jeQoJCXN0cm9rZUV4YWN0ID0gaHMuVGhpY2tuZXNzCgkJc3Ryb2tlTW9kZSA9IGhzLkFwcGx5U3Ryb2tlTW9kZQoJCWlmIHN0cm9rZUV4YWN0IDwgMSB0aGVuCgkJCXN0cm9rZUV4YWN0ID0gMQoJCWVuZAoJZW5kCglsb2NhbCBoYyA9IGhvc3Q6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJVSUNvcm5lciIpCglpZiBoYyB0aGVuCgkJbG9jYWwgcmggPSByb3cuQWJzb2x1dGVTaXplLlkKCQlpZiByaCA8IDAgdGhlbiByaCA9IDAgZW5kCgkJY29ybmVyUmFkaXVzID0gbWF0aC5mbG9vcihoYy5Db3JuZXJSYWRpdXMuT2Zmc2V0ICsgaGMuQ29ybmVyUmFkaXVzLlNjYWxlICogcmggKyAwLjUpCgkJaWYgY29ybmVyUmFkaXVzIDwgMCB0aGVuIGNvcm5lclJhZGl1cyA9IDAgZW5kCgkJbG9jYWwgbWF4UiA9IG1hdGguZmxvb3IocmggLyAyKQoJCWlmIG1heFIgPiA2IHRoZW4KCQkJbWF4UiA9IDYKCQllbmQKCQlpZiBjb3JuZXJSYWRpdXMgPiBtYXhSIHRoZW4KCQkJY29ybmVyUmFkaXVzID0gbWF4UgoJCWVuZAoJZW5kCmVsc2UKCWRlc2NyaXB0aW9uLkJhY2tncm91bmRDb2xvcjMgPSBDb2xvcjMuZnJvbVJHQigzNSwgMzUsIDM1KQoJZGVzY3JpcHRpb24uQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDAuMQplbmQKCmxvY2FsIHBhZCA9IGRlc2NyaXB0aW9uOkZpbmRGaXJzdENoaWxkT2ZDbGFzcygiVUlQYWRkaW5nIikKaWYgbm90IHBhZCB0aGVuCglwYWQgPSBJbnN0YW5jZS5uZXcoIlVJUGFkZGluZyIpCglwYWQuUGFyZW50ID0gZGVzY3JpcHRpb24KZW5kCnBhZC5QYWRkaW5nTGVmdCA9IFVEaW0ubmV3KDAsIDgpCnBhZC5QYWRkaW5nUmlnaHQgPSBVRGltLm5ldygwLCAyKQoKbG9jYWwgcGFkTGVmdCA9IDgKbG9jYWwgcGFkUmlnaHQgPSAyCmRvCglsb2NhbCBwID0gZGVzY3JpcHRpb246RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJVSVBhZGRpbmciKQoJaWYgcCB0aGVuCgkJcGFkTGVmdCA9IHAuUGFkZGluZ0xlZnQuT2Zmc2V0CgkJcGFkUmlnaHQgPSBwLlBhZGRpbmdSaWdodC5PZmZzZXQKCWVuZAplbmQKCmRlc2NyaXB0aW9uLlRleHRXcmFwcGVkID0gZmFsc2UKZGVzY3JpcHRpb24uVGV4dFhBbGlnbm1lbnQgPSBFbnVtLlRleHRYQWxpZ25tZW50LkxlZnQKZGVzY3JpcHRpb24uQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygwLCAwKQpkZXNjcmlwdGlvbi5BdXRvbWF0aWNTaXplID0gRW51bS5BdXRvbWF0aWNTaXplLk5vbmUKZGVzY3JpcHRpb24uUG9zaXRpb24gPSBVRGltMi5uZXcoMSwgMCwgMCwgMCkKZGVzY3JpcHRpb24uU2l6ZSA9IFVEaW0yLm5ldygwLCAwLCAxLCAwKQpkZXNjcmlwdGlvbi5aSW5kZXggPSA1CmRlc2NyaXB0aW9uLlRleHQgPSAiIgpkZXNjcmlwdGlvbi5WaXNpYmxlID0gZmFsc2UKZGVzY3JpcHRpb24uQ2xpcHNEZXNjZW5kYW50cyA9IGZhbHNlCgppZiBjb3JuZXJSYWRpdXMgPiAwIHRoZW4KCWxvY2FsIGRlc2NDb3JuZXIgPSBJbnN0YW5jZS5uZXcoIlVJQ29ybmVyIikKCWRlc2NDb3JuZXIuTmFtZSA9ICJEZXNjQ29ybmVyIgoJZGVzY0Nvcm5lci5Db3JuZXJSYWRpdXMgPSBVRGltLm5ldygwLCBjb3JuZXJSYWRpdXMpCglkZXNjQ29ybmVyLlBhcmVudCA9IGRlc2NyaXB0aW9uCmVuZAoKaWYgc3Ryb2tlQ29sb3IgdGhlbgoJbG9jYWwgZ3VhcmRYID0gLShtYXRoLmNlaWwoc3Ryb2tlRXhhY3QpICsgMSkKCWxvY2FsIGNhcExlZnQgPSAtKGNvcm5lclJhZGl1cyArIHN0cm9rZUV4YWN0ICsgMikKCWxvY2FsIG1ZID0gc3Ryb2tlRXhhY3QgKyAxCgoJbG9jYWwgbGVmdEd1YXJkID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCglsZWZ0R3VhcmQuTmFtZSA9ICJMZWZ0R3VhcmQiCglsZWZ0R3VhcmQuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKCWxlZnRHdWFyZC5Cb3JkZXJTaXplUGl4ZWwgPSAwCglsZWZ0R3VhcmQuQ2xpcHNEZXNjZW5kYW50cyA9IHRydWUKCWxlZnRHdWFyZC5aSW5kZXggPSA2CglsZWZ0R3VhcmQuUG9zaXRpb24gPSBVRGltMi5uZXcoMCwgZ3VhcmRYLCAwLCAtbVkpCglsZWZ0R3VhcmQuU2l6ZSA9IFVEaW0yLm5ldygxLCBzdHJva2VFeGFjdCArIDEgLSBndWFyZFgsIDEsIDIgKiBtWSkKCWxlZnRHdWFyZC5QYXJlbnQgPSBkZXNjcmlwdGlvbgoKCWxvY2FsIGNhcCA9IEluc3RhbmNlLm5ldygiRnJhbWUiKQoJY2FwLk5hbWUgPSAiQ2FwIgoJY2FwLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxCgljYXAuQm9yZGVyU2l6ZVBpeGVsID0gMAoJY2FwLlpJbmRleCA9IDYKCWNhcC5Qb3NpdGlvbiA9IFVEaW0yLm5ldygwLCBjYXBMZWZ0IC0gZ3VhcmRYLCAwLCBtWSkKCWNhcC5TaXplID0gVURpbTIubmV3KDEsIGNvcm5lclJhZGl1cyArIGd1YXJkWCArIDEsIDEsIC0yICogbVkpCgljYXAuUGFyZW50ID0gbGVmdEd1YXJkCgoJbG9jYWwgY2FwQ29ybmVyID0gSW5zdGFuY2UubmV3KCJVSUNvcm5lciIpCgljYXBDb3JuZXIuQ29ybmVyUmFkaXVzID0gVURpbS5uZXcoMCwgY29ybmVyUmFkaXVzKQoJY2FwQ29ybmVyLlBhcmVudCA9IGNhcAoKCWxvY2FsIGNhcFN0cm9rZSA9IEluc3RhbmNlLm5ldygiVUlTdHJva2UiKQoJY2FwU3Ryb2tlLkNvbG9yID0gc3Ryb2tlQ29sb3IKCWNhcFN0cm9rZS5UaGlja25lc3MgPSBzdHJva2VFeGFjdAoJY2FwU3Ryb2tlLlRyYW5zcGFyZW5jeSA9IHN0cm9rZVRyYW5zcGFyZW5jeQoJY2FwU3Ryb2tlLkFwcGx5U3Ryb2tlTW9kZSA9IHN0cm9rZU1vZGUKCWNhcFN0cm9rZS5MaW5lSm9pbk1vZGUgPSBFbnVtLkxpbmVKb2luTW9kZS5Sb3VuZAoJY2FwU3Ryb2tlLlBhcmVudCA9IGNhcAplbmQKCmxvY2FsIGZ1bmN0aW9uIHNldERlc2NUZXh0KHRleHQpCglkZXNjcmlwdGlvbi5UZXh0ID0gdGV4dAoJbG9jYWwgdyA9IFRleHRTZXJ2aWNlOkdldFRleHRTaXplKHRleHQsIGRlc2NyaXB0aW9uLlRleHRTaXplLCBkZXNjcmlwdGlvbi5Gb250LCBWZWN0b3IyLm5ldygxMDAwMCwgMTAwMDApKS5YCgl3ID0gdyArIHBhZExlZnQgKyBwYWRSaWdodCArIDQKCWRlc2NyaXB0aW9uLlNpemUgPSBVRGltMi5uZXcoMCwgdywgMSwgMCkKZW5kCgpsb2NhbCBkZXNjR2VuID0gMApsb2NhbCBkZXNjTW9kZSA9ICJpZGxlIgpsb2NhbCBkZXNjVHdlZW4gPSBuaWwKbG9jYWwgZGVzY1JldHJhY3RpbmcgPSBmYWxzZQoKbG9jYWwgZnVuY3Rpb24gc3RvcERlc2NUd2VlbigpCglpZiBkZXNjVHdlZW4gdGhlbgoJCWRlc2NUd2VlbjpDYW5jZWwoKQoJCWRlc2NUd2VlbiA9IG5pbAoJZW5kCglkZXNjUmV0cmFjdGluZyA9IGZhbHNlCglkZXNjcmlwdGlvbi5DbGlwc0Rlc2NlbmRhbnRzID0gZmFsc2UKZW5kCgpSdW5TZXJ2aWNlLlJlbmRlclN0ZXBwZWQ6Q29ubmVjdChmdW5jdGlvbigpCglpZiBkZXNjcmlwdGlvbi5WaXNpYmxlIGFuZCBkZXNjcmlwdGlvbi5UZXh0IH49ICIiIGFuZCBub3QgZGVzY1JldHJhY3RpbmcgdGhlbgoJCWxvY2FsIHcgPSBkZXNjcmlwdGlvbi5UZXh0Qm91bmRzLlggKyBwYWRMZWZ0ICsgcGFkUmlnaHQgKyAyCgkJaWYgbWF0aC5hYnMoZGVzY3JpcHRpb24uU2l6ZS5YLk9mZnNldCAtIHcpID4gMSB0aGVuCgkJCWRlc2NyaXB0aW9uLlNpemUgPSBVRGltMi5uZXcoMCwgdywgMSwgMCkKCQllbmQKCWVuZAplbmQpCgpsb2NhbCBzb3VuZElkcyA9IHsKCVsyXSA9IDExMzEwODgzMDI0MDM1MywKCVszXSA9IDcxOTAyNDgxNzU5NjYwLAoJWzRdID0gNzI4MjY1NjUwMTg3NjUsCglbNV0gPSAxMDI4NTU1MzU1NDM5MzAsCn0KCmxvY2FsIHR5cGVTb3VuZHMgPSB7fQpmb3IgaSA9IDIsIDQgZG8KCWxvY2FsIHMgPSByb3c6RmluZEZpcnN0Q2hpbGQodG9zdHJpbmcoaSksIHRydWUpCglpZiBzIGFuZCBzOklzQSgiU291bmQiKSB0aGVuCgkJdHlwZVNvdW5kc1sjdHlwZVNvdW5kcyArIDFdID0gcwoJZWxzZQoJCXMgPSBJbnN0YW5jZS5uZXcoIlNvdW5kIikKCQlzLk5hbWUgPSB0b3N0cmluZyhpKQoJCXMuU291bmRJZCA9ICJyYnhhc3NldGlkOi8vIiAuLiBzb3VuZElkc1tpXQoJCXMuVm9sdW1lID0gMQoJCXMuUGFyZW50ID0gZGVzY3JpcHRpb24KCQl0eXBlU291bmRzWyN0eXBlU291bmRzICsgMV0gPSBzCgllbmQKZW5kCgpsb2NhbCBkZWxldGVTb3VuZCA9IHJvdzpGaW5kRmlyc3RDaGlsZCgiNSIsIHRydWUpCmlmIG5vdCAoZGVsZXRlU291bmQgYW5kIGRlbGV0ZVNvdW5kOklzQSgiU291bmQiKSkgdGhlbgoJZGVsZXRlU291bmQgPSBJbnN0YW5jZS5uZXcoIlNvdW5kIikKCWRlbGV0ZVNvdW5kLk5hbWUgPSAiNSIKCWRlbGV0ZVNvdW5kLlNvdW5kSWQgPSAicmJ4YXNzZXRpZDovLyIgLi4gc291bmRJZHNbNV0KCWRlbGV0ZVNvdW5kLlZvbHVtZSA9IDEKCWRlbGV0ZVNvdW5kLlBhcmVudCA9IGRlc2NyaXB0aW9uCmVuZAoKbG9jYWwgZnVuY3Rpb24gcGxheUhpdChzb3VuZCkKCWlmIG5vdCBzb3VuZCB0aGVuIHJldHVybiBlbmQKCWxvY2FsIHMgPSBzb3VuZDpDbG9uZSgpCglzLlBhcmVudCA9IGRlc2NyaXB0aW9uCglzOlBsYXkoKQoJRGVicmlzOkFkZEl0ZW0ocywgNSkKZW5kCgpsb2NhbCBmdW5jdGlvbiBzdGFydFR5cGluZygpCglzdG9wRGVzY1R3ZWVuKCkKCWRlc2NHZW4gKz0gMQoJZGVzY01vZGUgPSAidHlwaW5nIgoJbG9jYWwgZ2VuID0gZGVzY0dlbgoJdGFzay5zcGF3bihmdW5jdGlvbigpCgkJZGVzY3JpcHRpb24uVmlzaWJsZSA9IHRydWUKCQlsb2NhbCBzaG93biA9ICNkZXNjcmlwdGlvbi5UZXh0CgkJd2hpbGUgc2hvd24gPCAjZGVzY1RleHQgYW5kIGdlbiA9PSBkZXNjR2VuIGRvCgkJCXNob3duICs9IDEKCQkJc2V0RGVzY1RleHQoc3RyaW5nLnN1YihkZXNjVGV4dCwgMSwgc2hvd24pKQoJCQlpZiBzaG93biAlIDIgPT0gMCBhbmQgI3R5cGVTb3VuZHMgPiAwIHRoZW4KCQkJCXBsYXlIaXQodHlwZVNvdW5kc1ttYXRoLnJhbmRvbSgxLCAjdHlwZVNvdW5kcyldKQoJCQllbmQKCQkJdGFzay53YWl0KDAuMDQpCgkJZW5kCgkJaWYgZ2VuID09IGRlc2NHZW4gdGhlbgoJCQlkZXNjTW9kZSA9ICJpZGxlIgoJCWVuZAoJZW5kKQplbmQKCmxvY2FsIGZ1bmN0aW9uIHN0YXJ0RGVsZXRpbmcoKQoJc3RvcERlc2NUd2VlbigpCglkZXNjR2VuICs9IDEKCWRlc2NNb2RlID0gImRlbGV0aW5nIgoJbG9jYWwgZ2VuID0gZGVzY0dlbgoJdGFzay5zcGF3bihmdW5jdGlvbigpCgkJbG9jYWwgc2hvd24gPSAjZGVzY3JpcHRpb24uVGV4dAoJCWxvY2FsIG5leHRIaXQgPSBtYXRoLnJhbmRvbSgyLCAzKQoJCWxvY2FsIHJldHJhY3RpbmcgPSBmYWxzZQoJCXdoaWxlIHNob3duID4gMCBhbmQgZ2VuID09IGRlc2NHZW4gZG8KCQkJc2hvd24gLT0gMQoJCQluZXh0SGl0IC09IDEKCQkJaWYgcmV0cmFjdGluZyB0aGVuCgkJCQlkZXNjcmlwdGlvbi5UZXh0ID0gc3RyaW5nLnN1YihkZXNjVGV4dCwgMSwgc2hvd24pCgkJCWVsc2UKCQkJCXNldERlc2NUZXh0KHN0cmluZy5zdWIoZGVzY1RleHQsIDEsIHNob3duKSkKCQkJZW5kCgkJCWlmIG5vdCByZXRyYWN0aW5nIGFuZCBuZXh0SGl0IDw9IDAgdGhlbgoJCQkJcGxheUhpdChkZWxldGVTb3VuZCkKCQkJCW5leHRIaXQgPSBtYXRoLnJhbmRvbSgyLCAzKQoJCQllbmQKCQkJaWYgbm90IHJldHJhY3RpbmcgYW5kIHNob3duIDw9IDMgdGhlbgoJCQkJcmV0cmFjdGluZyA9IHRydWUKCQkJCWRlc2NSZXRyYWN0aW5nID0gdHJ1ZQoJCQkJZGVzY3JpcHRpb24uQ2xpcHNEZXNjZW5kYW50cyA9IHRydWUKCQkJCWxvY2FsIHR3ID0gVHdlZW5TZXJ2aWNlOkNyZWF0ZSgKCQkJCQlkZXNjcmlwdGlvbiwKCQkJCQlUd2VlbkluZm8ubmV3KDAuMTYsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uSW4pLAoJCQkJCXsKCQkJCQkJU2l6ZSA9IFVEaW0yLm5ldygwLCAwLCAxLCAwKSwKCQkJCQkJVGV4dFRyYW5zcGFyZW5jeSA9IDEsCgkJCQkJfQoJCQkJKQoJCQkJZGVzY1R3ZWVuID0gdHcKCQkJCXR3OlBsYXkoKQoJCQllbmQKCQkJdGFzay53YWl0KDAuMDMpCgkJZW5kCgkJaWYgZ2VuIH49IGRlc2NHZW4gdGhlbiByZXR1cm4gZW5kCgkJaWYgZGVzY1R3ZWVuIHRoZW4KCQkJZGVzY1R3ZWVuLkNvbXBsZXRlZDpXYWl0KCkKCQllbmQKCQlpZiBnZW4gPT0gZGVzY0dlbiB0aGVuCgkJCWRlc2NNb2RlID0gImlkbGUiCgkJCWRlc2NyaXB0aW9uLlZpc2libGUgPSBmYWxzZQoJCQlkZXNjcmlwdGlvbi5UZXh0ID0gIiIKCQkJZGVzY3JpcHRpb24uVGV4dFRyYW5zcGFyZW5jeSA9IDAKCQllbmQKCQlkZXNjVHdlZW4gPSBuaWwKCQlkZXNjUmV0cmFjdGluZyA9IGZhbHNlCgkJZGVzY3JpcHRpb24uQ2xpcHNEZXNjZW5kYW50cyA9IGZhbHNlCgllbmQpCmVuZAoKbG9jYWwgaG92ZXJlZCA9IHt9CmxvY2FsIGhvdmVyU2Vzc2lvbiA9IDAKbG9jYWwgc2Vzc2lvbkNvdW50ID0gMApsb2NhbCBlbmRHZW4gPSAwCgpsb2NhbCBmdW5jdGlvbiBob3ZlckNoYW5nZWQoKQoJbG9jYWwgb3ZlciA9IG5leHQoaG92ZXJlZCkgfj0gbmlsCgoJaWYgb3ZlciB0aGVuCgkJZW5kR2VuICs9IDEKCQlpZiBob3ZlclNlc3Npb24gPT0gMCB0aGVuCgkJCXNlc3Npb25Db3VudCArPSAxCgkJCWhvdmVyU2Vzc2lvbiA9IHNlc3Npb25Db3VudAoJCQlsb2NhbCBzaWQgPSBob3ZlclNlc3Npb24KCQkJaWYgZGVzY01vZGUgPT0gImRlbGV0aW5nIiB0aGVuCgkJCQlzdGFydFR5cGluZygpCgkJCWVsc2UKCQkJCXRhc2suZGVsYXkoMC44LCBmdW5jdGlvbigpCgkJCQkJaWYgaG92ZXJTZXNzaW9uID09IHNpZCB0aGVuCgkJCQkJCXN0YXJ0VHlwaW5nKCkKCQkJCQllbmQKCQkJCWVuZCkKCQkJZW5kCgkJZW5kCgllbHNlCgkJaWYgaG92ZXJTZXNzaW9uIH49IDAgdGhlbgoJCQllbmRHZW4gKz0gMQoJCQlsb2NhbCBnID0gZW5kR2VuCgkJCXRhc2suZGVsYXkoMC4wNSwgZnVuY3Rpb24oKQoJCQkJaWYgZyA9PSBlbmRHZW4gYW5kIG5leHQoaG92ZXJlZCkgPT0gbmlsIHRoZW4KCQkJCQlob3ZlclNlc3Npb24gPSAwCgkJCQkJc3RhcnREZWxldGluZygpCgkJCQllbmQKCQkJZW5kKQoJCWVuZAoJZW5kCmVuZAoKbG9jYWwgZnVuY3Rpb24gYmluZEhvdmVyKGd1aSkKCWd1aS5Nb3VzZUVudGVyOkNvbm5lY3QoZnVuY3Rpb24oKQoJCWhvdmVyZWRbZ3VpXSA9IHRydWUKCQlob3ZlckNoYW5nZWQoKQoJZW5kKQoJZ3VpLk1vdXNlTGVhdmU6Q29ubmVjdChmdW5jdGlvbigpCgkJaG92ZXJlZFtndWldID0gbmlsCgkJaG92ZXJDaGFuZ2VkKCkKCWVuZCkKZW5kCgpiaW5kSG92ZXIocm93KQpiaW5kSG92ZXIoYmFsbHMpCmZvciBfLCBjIGluIGlwYWlycyhyb3c6R2V0RGVzY2VuZGFudHMoKSkgZG8KCWlmIGM6SXNBKCJHdWlPYmplY3QiKSBhbmQgYyB+PSBiYWxscyB0aGVuCgkJYmluZEhvdmVyKGMpCgllbmQKZW5kCgpsb2NhbCBTVE9QX0tFWSA9ICJYVFdfRkxZX1NUT1AiCgppZiBlbnZbU1RPUF9LRVldIHRoZW4KCXBjYWxsKGVudltTVE9QX0tFWV0pCmVuZAoKbG9jYWwgRkxZID0gewoJZW5hYmxlZCA9IGZhbHNlLAoJdmVsb2NpdHkgPSBWZWN0b3IzLnplcm8sCglrZXlzID0ge30sCgliYXNlU3BlZWQgPSA2MCwKCWFjY2VsVGF1ID0gMC4wNSwKCWJyYWtlVGF1ID0gMC4xMCwKCXBpdGNoUmVzcG9uc2l2ZW5lc3MgPSA0MCwKCWhlYXJ0YmVhdCA9IG5pbCwKCWlucHV0QmVnYW4gPSBuaWwsCglpbnB1dEVuZGVkID0gbmlsLAoJY2hhckNvbm4gPSBuaWwsCglsdiA9IG5pbCwKCWFvID0gbmlsLAoJYXR0ID0gbmlsLAoJcm9vdCA9IG5pbCwKCWh1bWFub2lkID0gbmlsLAoJYW5pbWF0ZSA9IG5pbCwKCWxhc3RDaGFyID0gbmlsLAoJb3JpZ1dhbGsgPSAxNiwKCW9yaWdKdW1wID0gNTAsCglvcmlnSnVtcEhlaWdodCA9IDcuMiwKCW9yaWdBdXRvUm90YXRlID0gdHJ1ZSwKfQoKbG9jYWwgVVBWRUMgPSBWZWN0b3IzLm5ldygwLCAxLCAwKQoKbG9jYWwgZnVuY3Rpb24gZnJlZXplQW5pbWF0aW9ucyhjaGFyLCBodW0pCglpZiBodW0gdGhlbgoJCWZvciBfLCB0cmFjayBpbiBpcGFpcnMoaHVtOkdldFBsYXlpbmdBbmltYXRpb25UcmFja3MoKSkgZG8KCQkJcGNhbGwoZnVuY3Rpb24oKSB0cmFjazpTdG9wKDApIGVuZCkKCQllbmQKCWVuZAoJaWYgY2hhciB0aGVuCgkJbG9jYWwgYW5pbWF0ZSA9IGNoYXI6RmluZEZpcnN0Q2hpbGQoIkFuaW1hdGUiKQoJCWlmIGFuaW1hdGUgYW5kIGFuaW1hdGU6SXNBKCJCYXNlU2NyaXB0IikgYW5kIG5vdCBhbmltYXRlLkRpc2FibGVkIHRoZW4KCQkJYW5pbWF0ZS5EaXNhYmxlZCA9IHRydWUKCQllbmQKCWVuZAplbmQKCmxvY2FsIGZ1bmN0aW9uIGNsZWFyUmlnKCkKCWlmIEZMWS5sdiB0aGVuIEZMWS5sdjpEZXN0cm95KCkgRkxZLmx2ID0gbmlsIGVuZAoJaWYgRkxZLmFvIHRoZW4gRkxZLmFvOkRlc3Ryb3koKSBGTFkuYW8gPSBuaWwgZW5kCglpZiBGTFkuYXR0IHRoZW4gRkxZLmF0dDpEZXN0cm95KCkgRkxZLmF0dCA9IG5pbCBlbmQKCglsb2NhbCBodW0gPSBGTFkuaHVtYW5vaWQKCWlmIGh1bSBhbmQgaHVtLlBhcmVudCB0aGVuCgkJcGNhbGwoZnVuY3Rpb24oKQoJCQlodW0uV2Fsa1NwZWVkID0gRkxZLm9yaWdXYWxrCgkJCWh1bS5BdXRvUm90YXRlID0gRkxZLm9yaWdBdXRvUm90YXRlCgkJCWh1bTpTZXRTdGF0ZUVuYWJsZWQoRW51bS5IdW1hbm9pZFN0YXRlVHlwZS5GcmVlZmFsbCwgdHJ1ZSkKCQkJaHVtOkNoYW5nZVN0YXRlKEVudW0uSHVtYW5vaWRTdGF0ZVR5cGUuUnVubmluZykKCQllbmQpCgkJcGNhbGwoZnVuY3Rpb24oKSBodW0uSnVtcFBvd2VyID0gRkxZLm9yaWdKdW1wIGVuZCkKCQlwY2FsbChmdW5jdGlvbigpIGh1bS5KdW1wSGVpZ2h0ID0gRkxZLm9yaWdKdW1wSGVpZ2h0IGVuZCkKCWVuZAoKCWlmIEZMWS5hbmltYXRlIGFuZCBGTFkuYW5pbWF0ZS5QYXJlbnQgdGhlbgoJCXBjYWxsKGZ1bmN0aW9uKCkgRkxZLmFuaW1hdGUuRGlzYWJsZWQgPSBmYWxzZSBlbmQpCgllbmQKCUZMWS5hbmltYXRlID0gbmlsCgoJRkxZLmh1bWFub2lkID0gbmlsCglGTFkucm9vdCA9IG5pbAoJRkxZLnZlbG9jaXR5ID0gVmVjdG9yMy56ZXJvCmVuZAoKbG9jYWwgZnVuY3Rpb24gc2V0dXBSaWcoY2hhcikKCWNsZWFyUmlnKCkKCWlmIG5vdCBjaGFyIG9yIG5vdCBjaGFyLlBhcmVudCB0aGVuIHJldHVybiBlbmQKCglsb2NhbCByb290ID0gY2hhcjpGaW5kRmlyc3RDaGlsZCgiSHVtYW5vaWRSb290UGFydCIpIG9yIGNoYXI6V2FpdEZvckNoaWxkKCJIdW1hbm9pZFJvb3RQYXJ0IiwgNSkKCWlmIG5vdCByb290IHRoZW4gcmV0dXJuIGVuZAoJbG9jYWwgaHVtID0gY2hhcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIkh1bWFub2lkIikKCWlmIG5vdCBodW0gdGhlbiByZXR1cm4gZW5kCgoJRkxZLnJvb3QgPSByb290CglGTFkuaHVtYW5vaWQgPSBodW0KCUZMWS5vcmlnV2FsayA9IGh1bS5XYWxrU3BlZWQKCUZMWS5vcmlnSnVtcCA9IGh1bS5KdW1wUG93ZXIKCUZMWS5vcmlnSnVtcEhlaWdodCA9IGh1bS5KdW1wSGVpZ2h0CglGTFkub3JpZ0F1dG9Sb3RhdGUgPSBodW0uQXV0b1JvdGF0ZQoJRkxZLmFuaW1hdGUgPSBjaGFyOkZpbmRGaXJzdENoaWxkKCJBbmltYXRlIikKCglmcmVlemVBbmltYXRpb25zKGNoYXIsIGh1bSkKCglsb2NhbCBhdHQgPSBJbnN0YW5jZS5uZXcoIkF0dGFjaG1lbnQiKQoJYXR0Lk5hbWUgPSAiWFRXRmx5QXR0IgoJYXR0LlBhcmVudCA9IHJvb3QKCUZMWS5hdHQgPSBhdHQKCglsb2NhbCBsdiA9IEluc3RhbmNlLm5ldygiTGluZWFyVmVsb2NpdHkiKQoJbHYuTmFtZSA9ICJYVFdGbHlMViIKCWx2LkF0dGFjaG1lbnQwID0gYXR0Cglsdi5SZWxhdGl2ZVRvID0gRW51bS5BY3R1YXRvclJlbGF0aXZlVG8uV29ybGQKCWx2Lk1heEZvcmNlID0gMWU3Cglsdi5WZWN0b3JWZWxvY2l0eSA9IFZlY3RvcjMuemVybwoJbHYuUGFyZW50ID0gcm9vdAoJRkxZLmx2ID0gbHYKCglsb2NhbCBhbyA9IEluc3RhbmNlLm5ldygiQWxpZ25PcmllbnRhdGlvbiIpCglhby5OYW1lID0gIlhUV0ZseUFPIgoJYW8uTW9kZSA9IEVudW0uT3JpZW50YXRpb25BbGlnbm1lbnRNb2RlLk9uZUF0dGFjaG1lbnQKCWFvLkF0dGFjaG1lbnQwID0gYXR0Cglhby5NYXhUb3JxdWUgPSAxZTcKCWFvLk1heEFuZ3VsYXJWZWxvY2l0eSA9IG1hdGguaHVnZQoJYW8uUmVzcG9uc2l2ZW5lc3MgPSBGTFkucGl0Y2hSZXNwb25zaXZlbmVzcwoJYW8uUGFyZW50ID0gcm9vdAoJRkxZLmFvID0gYW8KCglwY2FsbChmdW5jdGlvbigpCgkJaHVtLldhbGtTcGVlZCA9IDAKCQlodW0uQXV0b1JvdGF0ZSA9IGZhbHNlCgkJaHVtOlNldFN0YXRlRW5hYmxlZChFbnVtLkh1bWFub2lkU3RhdGVUeXBlLkZyZWVmYWxsLCBmYWxzZSkKCQlodW06Q2hhbmdlU3RhdGUoRW51bS5IdW1hbm9pZFN0YXRlVHlwZS5GbHlpbmcpCgllbmQpCglwY2FsbChmdW5jdGlvbigpIGh1bS5KdW1wUG93ZXIgPSAwIGVuZCkKCXBjYWxsKGZ1bmN0aW9uKCkgaHVtLkp1bXBIZWlnaHQgPSAwIGVuZCkKCglGTFkudmVsb2NpdHkgPSBWZWN0b3IzLnplcm8KZW5kCgpsb2NhbCBmdW5jdGlvbiByZWFkSW5wdXQoKQoJbG9jYWwgY2FtID0gd29ya3NwYWNlLkN1cnJlbnRDYW1lcmEKCWxvY2FsIGNmID0gY2FtIGFuZCBjYW0uQ0ZyYW1lIG9yIENGcmFtZS5uZXcoKQoJbG9jYWwgZGlyID0gVmVjdG9yMy56ZXJvCgoJaWYgRkxZLmtleXNbRW51bS5LZXlDb2RlLlddIHRoZW4gZGlyID0gZGlyICsgY2YuTG9va1ZlY3RvciBlbmQKCWlmIEZMWS5rZXlzW0VudW0uS2V5Q29kZS5TXSB0aGVuIGRpciA9IGRpciAtIGNmLkxvb2tWZWN0b3IgZW5kCglpZiBGTFkua2V5c1tFbnVtLktleUNvZGUuRF0gdGhlbiBkaXIgPSBkaXIgKyBjZi5SaWdodFZlY3RvciBlbmQKCWlmIEZMWS5rZXlzW0VudW0uS2V5Q29kZS5BXSB0aGVuIGRpciA9IGRpciAtIGNmLlJpZ2h0VmVjdG9yIGVuZAoJaWYgRkxZLmtleXNbRW51bS5LZXlDb2RlLlNwYWNlXSB0aGVuIGRpciA9IGRpciArIFVQVkVDIGVuZAoKCWlmIGRpci5NYWduaXR1ZGUgPiAxIHRoZW4KCQlkaXIgPSBkaXIuVW5pdAoJZW5kCgoJcmV0dXJuIGRpciwgY2YKZW5kCgpsb2NhbCBmdW5jdGlvbiBvbkhlYXJ0YmVhdChkdCkKCWxvY2FsIHJvb3QgPSBGTFkucm9vdAoJaWYgbm90IHJvb3Qgb3Igbm90IHJvb3QuUGFyZW50IHRoZW4KCQlpZiBwbGF5ZXIuQ2hhcmFjdGVyIGFuZCBwbGF5ZXIuQ2hhcmFjdGVyIH49IEZMWS5sYXN0Q2hhciB0aGVuCgkJCUZMWS5sYXN0Q2hhciA9IHBsYXllci5DaGFyYWN0ZXIKCQkJc2V0dXBSaWcocGxheWVyLkNoYXJhY3RlcikKCQllbmQKCQlyZXR1cm4KCWVuZAoKCWxvY2FsIGx2ID0gRkxZLmx2Cglsb2NhbCBhbyA9IEZMWS5hbwoJaWYgbm90IGx2IG9yIG5vdCBhbyB0aGVuIHJldHVybiBlbmQKCglkdCA9IG1hdGgubWluKGR0LCAwLjEpCgoJbG9jYWwgY2hhciA9IHJvb3QuUGFyZW50CglpZiBjaGFyIHRoZW4KCQlsb2NhbCBhbmltYXRlID0gY2hhcjpGaW5kRmlyc3RDaGlsZCgiQW5pbWF0ZSIpCgkJaWYgYW5pbWF0ZSBhbmQgYW5pbWF0ZTpJc0EoIkJhc2VTY3JpcHQiKSBhbmQgbm90IGFuaW1hdGUuRGlzYWJsZWQgdGhlbgoJCQlhbmltYXRlLkRpc2FibGVkID0gdHJ1ZQoJCWVuZAoJZW5kCglpZiBGTFkuaHVtYW5vaWQgdGhlbgoJCWxvY2FsIHRyYWNrcyA9IEZMWS5odW1hbm9pZDpHZXRQbGF5aW5nQW5pbWF0aW9uVHJhY2tzKCkKCQlpZiAjdHJhY2tzID4gMCB0aGVuCgkJCWZvciBfLCB0IGluIGlwYWlycyh0cmFja3MpIGRvCgkJCQlwY2FsbChmdW5jdGlvbigpIHQ6U3RvcCgwKSBlbmQpCgkJCWVuZAoJCWVuZAoJZW5kCgoJbG9jYWwgZGlyLCBjZiA9IHJlYWRJbnB1dCgpCglsb2NhbCBoYXNJbnB1dCA9IGRpci5NYWduaXR1ZGUgPiAwLjAwMQoJbG9jYWwgdGFyZ2V0ID0gZGlyICogRkxZLmJhc2VTcGVlZAoKCWxvY2FsIHRhdSA9IGhhc0lucHV0IGFuZCBGTFkuYWNjZWxUYXUgb3IgRkxZLmJyYWtlVGF1Cglsb2NhbCBhbHBoYSA9IDEgLSBtYXRoLmV4cCgtZHQgLyB0YXUpCglGTFkudmVsb2NpdHkgPSBGTFkudmVsb2NpdHk6TGVycCh0YXJnZXQsIGFscGhhKQoKCWlmIG5vdCBoYXNJbnB1dCBhbmQgRkxZLnZlbG9jaXR5Lk1hZ25pdHVkZSA8IDAuMDggdGhlbgoJCUZMWS52ZWxvY2l0eSA9IFZlY3RvcjMuemVybwoJZW5kCgoJbHYuVmVjdG9yVmVsb2NpdHkgPSBGTFkudmVsb2NpdHkKCglhby5DRnJhbWUgPSBDRnJhbWUuZnJvbU1hdHJpeChWZWN0b3IzLnplcm8sIGNmLlJpZ2h0VmVjdG9yLCBjZi5VcFZlY3RvcikKZW5kCgpsb2NhbCBmdW5jdGlvbiBzZXRGbHkob24pCglpZiBvbiA9PSBGTFkuZW5hYmxlZCB0aGVuIHJldHVybiBlbmQKCUZMWS5lbmFibGVkID0gb24KCglpZiBvbiB0aGVuCgkJRkxZLmtleXMgPSB7fQoJCUZMWS52ZWxvY2l0eSA9IFZlY3RvcjMuemVybwoJCUZMWS5sYXN0Q2hhciA9IHBsYXllci5DaGFyYWN0ZXIKCQlzZXR1cFJpZyhwbGF5ZXIuQ2hhcmFjdGVyKQoKCQlGTFkuY2hhckNvbm4gPSBwbGF5ZXIuQ2hhcmFjdGVyQWRkZWQ6Q29ubmVjdChmdW5jdGlvbihjKQoJCQlGTFkubGFzdENoYXIgPSBjCgkJCXRhc2sud2FpdCgwLjIpCgkJCWlmIEZMWS5lbmFibGVkIHRoZW4KCQkJCXNldHVwUmlnKGMpCgkJCWVuZAoJCWVuZCkKCgkJRkxZLmlucHV0QmVnYW4gPSBVc2VySW5wdXRTZXJ2aWNlLklucHV0QmVnYW46Q29ubmVjdChmdW5jdGlvbihpbnB1dCwgZ3ApCgkJCWlmIGdwIHRoZW4gcmV0dXJuIGVuZAoJCQlpZiBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5LZXlib2FyZCB0aGVuCgkJCQlGTFkua2V5c1tpbnB1dC5LZXlDb2RlXSA9IHRydWUKCQkJZW5kCgkJZW5kKQoJCUZMWS5pbnB1dEVuZGVkID0gVXNlcklucHV0U2VydmljZS5JbnB1dEVuZGVkOkNvbm5lY3QoZnVuY3Rpb24oaW5wdXQpCgkJCWlmIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLktleWJvYXJkIHRoZW4KCQkJCUZMWS5rZXlzW2lucHV0LktleUNvZGVdID0gZmFsc2UKCQkJZW5kCgkJZW5kKQoKCQlGTFkuaGVhcnRiZWF0ID0gUnVuU2VydmljZS5IZWFydGJlYXQ6Q29ubmVjdChvbkhlYXJ0YmVhdCkKCWVsc2UKCQlpZiBGTFkuaGVhcnRiZWF0IHRoZW4gRkxZLmhlYXJ0YmVhdDpEaXNjb25uZWN0KCkgRkxZLmhlYXJ0YmVhdCA9IG5pbCBlbmQKCQlpZiBGTFkuaW5wdXRCZWdhbiB0aGVuIEZMWS5pbnB1dEJlZ2FuOkRpc2Nvbm5lY3QoKSBGTFkuaW5wdXRCZWdhbiA9IG5pbCBlbmQKCQlpZiBGTFkuaW5wdXRFbmRlZCB0aGVuIEZMWS5pbnB1dEVuZGVkOkRpc2Nvbm5lY3QoKSBGTFkuaW5wdXRFbmRlZCA9IG5pbCBlbmQKCQlpZiBGTFkuY2hhckNvbm4gdGhlbiBGTFkuY2hhckNvbm46RGlzY29ubmVjdCgpIEZMWS5jaGFyQ29ubiA9IG5pbCBlbmQKCgkJRkxZLmtleXMgPSB7fQoJCUZMWS52ZWxvY2l0eSA9IFZlY3RvcjMuemVybwoJCWNsZWFyUmlnKCkKCWVuZAplbmQKCmVudltTVE9QX0tFWV0gPSBmdW5jdGlvbigpCglzZXRGbHkoZmFsc2UpCmVuZAoKbG9jYWwgbGFzdCA9IDAKCmxvY2FsIGZ1bmN0aW9uIGZsaXAoKQoJaWYgdGljaygpIC0gbGFzdCA8IDAuMSB0aGVuIHJldHVybiBlbmQKCWxhc3QgPSB0aWNrKCkKCglzZXRGbHkobm90IEZMWS5lbmFibGVkKQoKCVR3ZWVuU2VydmljZTpDcmVhdGUoYW5pbSwgVHdlZW5JbmZvLm5ldygwLjI1LCBFbnVtLkVhc2luZ1N0eWxlLlF1YWQsIEVudW0uRWFzaW5nRGlyZWN0aW9uLk91dCksIHsKCQlWYWx1ZSA9IEZMWS5lbmFibGVkIGFuZCAxIG9yIDAKCX0pOlBsYXkoKQplbmQKCmxvY2FsIGZ1bmN0aW9uIHByZXNzKGlucHV0KQoJaWYgaW5wdXQuVXNlcklucHV0VHlwZSA9PSBFbnVtLlVzZXJJbnB1dFR5cGUuTW91c2VCdXR0b24xCgkJb3IgaW5wdXQuVXNlcklucHV0VHlwZSA9PSBFbnVtLlVzZXJJbnB1dFR5cGUuVG91Y2ggdGhlbgoJCWZsaXAoKQoJZW5kCmVuZAoKYmFsbHMuSW5wdXRCZWdhbjpDb25uZWN0KHByZXNzKQpyb3cuSW5wdXRCZWdhbjpDb25uZWN0KHByZXNzKQplbmQsIGZ1bmN0aW9uKGUpCiAgICBsb2NhbCB0YiA9ICIiCiAgICBwY2FsbChmdW5jdGlvbigpIHRiID0gZGVidWcudHJhY2ViYWNrKCIiLCAyKSBlbmQpCiAgICByZXR1cm4gdG9zdHJpbmcoZSkgLi4gIlxuIiAuLiB0YgplbmQpCmlmIG5vdCBfX3h0d19vayB0aGVuCiAgICBsb2NhbCBlcnJTdHIgPSB0b3N0cmluZyhfX3h0d19lcnIpCiAgICBpZiBfX3h0d19zZWxmIGFuZCBfX3h0d19zZWxmLlNldEF0dHJpYnV0ZSB0aGVuCiAgICAgICAgcGNhbGwoZnVuY3Rpb24oKSBfX3h0d19zZWxmOlNldEF0dHJpYnV0ZSgieHR3X2Vycm9yIiwgZXJyU3RyKSBlbmQpCiAgICBlbmQKICAgIHBjYWxsKGZ1bmN0aW9uKCkgd2FybigiW3h0d10gRkFJTDogIiAuLiBfX3h0d19uYW1lIC4uICIgKCIgLi4gX194dHdfY2xzIC4uICIpOiAiIC4uIGVyclN0cikgZW5kKQplbmQ=")
    local fn, cerr = loadstring(src, "@xtw:" .. tostring(s_37.Name))
    if not fn then
        compiledFail = compiledFail + 1
        compileErrors[#compileErrors + 1] = "Function (LocalScript): " .. tostring(cerr)
    else
        compiled = compiled + 1
        pcall(function() s_37.Source = src end)
        pcall(function() s_37.Parent = n[36] end)
        pcall(function() s_37.Disabled = false end)
    end
end
do
    local s_44 = n[44]
    local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkZ1bmN0aW9uIiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgUGxheWVycyA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpCmxvY2FsIFJ1blNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlJ1blNlcnZpY2UiKQpsb2NhbCBUd2VlblNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlR3ZWVuU2VydmljZSIpCmxvY2FsIERlYnJpcyA9IGdhbWU6R2V0U2VydmljZSgiRGVicmlzIikKbG9jYWwgVGV4dFNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlRleHRTZXJ2aWNlIikKbG9jYWwgVXNlcklucHV0U2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVXNlcklucHV0U2VydmljZSIpCmxvY2FsIFBoeXNpY3NTZXJ2aWNlID0gZ2FtZTpHZXRTZXJ2aWNlKCJQaHlzaWNzU2VydmljZSIpCgpsb2NhbCBwbGF5ZXIgPSBQbGF5ZXJzLkxvY2FsUGxheWVyCgpsb2NhbCBHID0gKGdldGdlbnYgYW5kIGdldGdlbnYoKSkgb3IgX0cKbG9jYWwgU1RPUF9LRVkgPSAiWFRXX0NVUlNPUl9US19TVE9QIgppZiBHW1NUT1BfS0VZXSB0aGVuCglwY2FsbChHW1NUT1BfS0VZXSkKZW5kCgpsb2NhbCBST1dfTkFNRSA9IG5pbAoKbG9jYWwgaGFzR1VJID0gZmFsc2UKbG9jYWwgcm93LCBiYWxscywgZGVzY3JpcHRpb24KCmxvY2FsIHRhcmdldCA9IG5pbAppZiBHIGFuZCBHLlhUV19US19UQVJHRVQgdGhlbgoJbG9jYWwgdCA9IEcuWFRXX1RLX1RBUkdFVAoJaWYgdHlwZW9mKHQpID09ICJJbnN0YW5jZSIgYW5kIHQ6SXNBKCJHdWlPYmplY3QiKSB0aGVuCgkJdGFyZ2V0ID0gdAoJZW5kCmVuZAoKaWYgbm90IHRhcmdldCBhbmQgUk9XX05BTUUgdGhlbgoJbG9jYWwgcGcgPSBwbGF5ZXI6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJQbGF5ZXJHdWkiKQoJaWYgcGcgdGhlbgoJCWZvciBfLCBkIGluIGlwYWlycyhwZzpHZXREZXNjZW5kYW50cygpKSBkbwoJCQlpZiBkOklzQSgiR3VpT2JqZWN0IikgYW5kIGQuTmFtZSA9PSBST1dfTkFNRSBhbmQgZDpGaW5kRmlyc3RDaGlsZCgiQmFsbCIsIHRydWUpIHRoZW4KCQkJCXRhcmdldCA9IGQKCQkJCWJyZWFrCgkJCWVuZAoJCWVuZAoJZW5kCmVuZAoKaWYgbm90IHRhcmdldCB0aGVuCglwY2FsbChmdW5jdGlvbigpCgkJbG9jYWwgcCA9IHNjcmlwdCBhbmQgc2NyaXB0LlBhcmVudAoJCWlmIHAgYW5kIHA6SXNBKCJHdWlPYmplY3QiKSB0aGVuCgkJCXRhcmdldCA9IHAKCQllbmQKCWVuZCkKZW5kCgppZiB0YXJnZXQgdGhlbgoJcGNhbGwoZnVuY3Rpb24oKQoJCXJvdyA9IHRhcmdldAoJCWJhbGxzID0gcm93OkZpbmRGaXJzdENoaWxkKCJCYWxsIiwgdHJ1ZSkgb3Igcm93OldhaXRGb3JDaGlsZCgiQmFsbCIsIDMpCgkJZGVzY3JpcHRpb24gPSByb3c6RmluZEZpcnN0Q2hpbGQoIkRlc2NyaXB0aW9uIikKCQlpZiBiYWxscyBhbmQgZGVzY3JpcHRpb24gdGhlbgoJCQloYXNHVUkgPSB0cnVlCgkJZW5kCgllbmQpCmVuZAoKaWYgaGFzR1VJIHRoZW4KCXJvdy5BY3RpdmUgPSB0cnVlCgliYWxscy5BY3RpdmUgPSB0cnVlCgliYWxscy5BdXRvQnV0dG9uQ29sb3IgPSBmYWxzZQoKCWxvY2FsIGxlZnRvdmVyID0gcm93OkZpbmRGaXJzdENoaWxkKCJEZXNjUGFuZWwiLCB0cnVlKQoJaWYgbGVmdG92ZXIgdGhlbgoJCWxlZnRvdmVyOkRlc3Ryb3koKQoJZW5kCgoJbG9jYWwgZGFya3llbGxvdyA9IENvbG9yMy5mcm9tUkdCKDQwLCA0MCwgNDApCglsb2NhbCB5ZWxsb3cgPSBDb2xvcjMuZnJvbVJHQigwLCAxMTAsIDApCgoJbG9jYWwgZ3JhZGllbnQgPSByb3c6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJVSUdyYWRpZW50Iikgb3IgSW5zdGFuY2UubmV3KCJVSUdyYWRpZW50IikKCWdyYWRpZW50LkNvbG9yID0gQ29sb3JTZXF1ZW5jZS5uZXcoewoJCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMCwgeWVsbG93KSwKCQlDb2xvclNlcXVlbmNlS2V5cG9pbnQubmV3KDAuNDk5LCB5ZWxsb3cpLAoJCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMC41LCBkYXJreWVsbG93KSwKCQlDb2xvclNlcXVlbmNlS2V5cG9pbnQubmV3KDEsIGRhcmt5ZWxsb3cpLAoJfSkKCWdyYWRpZW50Lk9mZnNldCA9IFZlY3RvcjIubmV3KC0wLjUsIDApCglncmFkaWVudC5QYXJlbnQgPSByb3cKCglsb2NhbCBvZmZQb3MgPSBiYWxscy5Qb3NpdGlvbgoJbG9jYWwgb25Qb3MgPSBVRGltMi5uZXcoCgkJMSAtIG9mZlBvcy5YLlNjYWxlIC0gYmFsbHMuU2l6ZS5YLlNjYWxlLAoJCW9mZlBvcy5YLk9mZnNldCAtIGJhbGxzLlNpemUuWC5PZmZzZXQsCgkJb2ZmUG9zLlkuU2NhbGUsCgkJb2ZmUG9zLlkuT2Zmc2V0CgkpCgoJbG9jYWwgb2ZmQyA9IDAKCWxvY2FsIG9uQyA9IDAKCglsb2NhbCBmdW5jdGlvbiBtZWFzdXJlKCkKCQlsb2NhbCB3ID0gcm93LkFic29sdXRlU2l6ZS5YCgkJaWYgdyA8PSAwIHRoZW4gcmV0dXJuIGVuZAoJCWxvY2FsIGhhbGYgPSAoMC41IC0gYmFsbHMuQW5jaG9yUG9pbnQuWCkgKiAoYmFsbHMuU2l6ZS5YLlNjYWxlICsgYmFsbHMuU2l6ZS5YLk9mZnNldCAvIHcpCgkJb2ZmQyA9IG9mZlBvcy5YLlNjYWxlICsgb2ZmUG9zLlguT2Zmc2V0IC8gdyArIGhhbGYKCQlvbkMgPSBvblBvcy5YLlNjYWxlICsgb25Qb3MuWC5PZmZzZXQgLyB3ICsgaGFsZgoJZW5kCgoJbG9jYWwgYW5pbSA9IEluc3RhbmNlLm5ldygiTnVtYmVyVmFsdWUiKQoJYW5pbS5WYWx1ZSA9IDAKCglsb2NhbCBmdW5jdGlvbiBhcHBseSh1KQoJCWxvY2FsIHN4ID0gb2ZmUG9zLlguU2NhbGUgKyAob25Qb3MuWC5TY2FsZSAtIG9mZlBvcy5YLlNjYWxlKSAqIHUKCQlsb2NhbCBveCA9IG9mZlBvcy5YLk9mZnNldCArIChvblBvcy5YLk9mZnNldCAtIG9mZlBvcy5YLk9mZnNldCkgKiB1CgkJYmFsbHMuUG9zaXRpb24gPSBVRGltMi5uZXcoc3gsIG94LCBvZmZQb3MuWS5TY2FsZSwgb2ZmUG9zLlkuT2Zmc2V0KQoJCWdyYWRpZW50Lk9mZnNldCA9IFZlY3RvcjIubmV3KChvZmZDICsgKG9uQyAtIG9mZkMpICogdSkgLSAwLjUsIDApCgllbmQKCglhbmltLkNoYW5nZWQ6Q29ubmVjdChhcHBseSkKCW1lYXN1cmUoKQoJYXBwbHkoMCkKCglyb3c6R2V0UHJvcGVydHlDaGFuZ2VkU2lnbmFsKCJBYnNvbHV0ZVNpemUiKTpDb25uZWN0KGZ1bmN0aW9uKCkKCQltZWFzdXJlKCkKCQlhcHBseShhbmltLlZhbHVlKQoJZW5kKQoKCWxvY2FsIGRlc2NUZXh0ID0gIkRyYWc6IGxlZnQgY2xpY2suIFJvdGF0ZTogUi9ULiIKCglpZiBkZXNjcmlwdGlvbi5UZXh0U2NhbGVkIHRoZW4KCQlsb2NhbCByZW5kZXJlZCA9IGRlc2NyaXB0aW9uLlRleHRCb3VuZHMuWQoJCWRlc2NyaXB0aW9uLlRleHRTY2FsZWQgPSBmYWxzZQoJCWRlc2NyaXB0aW9uLlRleHRTaXplID0gbWF0aC5tYXgoMSwgbWF0aC5mbG9vcihyZW5kZXJlZCA+IDAgYW5kIHJlbmRlcmVkIG9yIHJvdy5BYnNvbHV0ZVNpemUuWSAqIDAuNykpCgllbmQKCglmb3IgXywgYyBpbiBpcGFpcnMoZGVzY3JpcHRpb246R2V0Q2hpbGRyZW4oKSkgZG8KCQlpZiBjOklzQSgiVUlTdHJva2UiKSBvciBjLk5hbWUgPT0gIlRvcExpbmUiIG9yIGMuTmFtZSA9PSAiQm90dG9tTGluZSIgb3IgYy5OYW1lID09ICJSaWdodExpbmUiCgkJCW9yIGMuTmFtZSA9PSAiU2VhbVBhdGNoIiBvciBjLk5hbWUgPT0gIlRvcEJyaWRnZSIgb3IgYy5OYW1lID09ICJCb3R0b21CcmlkZ2UiCgkJCW9yIGMuTmFtZSA9PSAiQ2FwQ2xpcCIgb3IgYy5OYW1lID09ICJDYXAiIG9yIGMuTmFtZSA9PSAiRGVzY0Nvcm5lciIKCQkJb3IgYy5OYW1lID09ICJMZWZ0R3VhcmQiIHRoZW4KCQkJYzpEZXN0cm95KCkKCQllbmQKCWVuZAoKCWxvY2FsIGhvc3QgPSByb3cuUGFyZW50Cglsb2NhbCBzdHJva2VDb2xvciA9IG5pbAoJbG9jYWwgc3Ryb2tlVHJhbnNwYXJlbmN5ID0gMAoJbG9jYWwgc3Ryb2tlRXhhY3QgPSAxCglsb2NhbCBzdHJva2VNb2RlID0gRW51bS5BcHBseVN0cm9rZU1vZGUuQm9yZGVyCglsb2NhbCBjb3JuZXJSYWRpdXMgPSAwCgoJaWYgaG9zdCBhbmQgaG9zdDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCQlkZXNjcmlwdGlvbi5CYWNrZ3JvdW5kQ29sb3IzID0gaG9zdC5CYWNrZ3JvdW5kQ29sb3IzCgkJZGVzY3JpcHRpb24uQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IGhvc3QuQmFja2dyb3VuZFRyYW5zcGFyZW5jeQoJCWxvY2FsIGhzID0gaG9zdDpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlVJU3Ryb2tlIikKCQlpZiBocyB0aGVuCgkJCXN0cm9rZUNvbG9yID0gaHMuQ29sb3IKCQkJc3Ryb2tlVHJhbnNwYXJlbmN5ID0gaHMuVHJhbnNwYXJlbmN5CgkJCXN0cm9rZUV4YWN0ID0gaHMuVGhpY2tuZXNzCgkJCXN0cm9rZU1vZGUgPSBocy5BcHBseVN0cm9rZU1vZGUKCQkJaWYgc3Ryb2tlRXhhY3QgPCAxIHRoZW4gc3Ryb2tlRXhhY3QgPSAxIGVuZAoJCWVuZAoJCWxvY2FsIGhjID0gaG9zdDpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlVJQ29ybmVyIikKCQlpZiBoYyB0aGVuCgkJCWxvY2FsIHJoID0gcm93LkFic29sdXRlU2l6ZS5ZCgkJCWlmIHJoIDwgMCB0aGVuIHJoID0gMCBlbmQKCQkJY29ybmVyUmFkaXVzID0gbWF0aC5mbG9vcihoYy5Db3JuZXJSYWRpdXMuT2Zmc2V0ICsgaGMuQ29ybmVyUmFkaXVzLlNjYWxlICogcmggKyAwLjUpCgkJCWlmIGNvcm5lclJhZGl1cyA8IDAgdGhlbiBjb3JuZXJSYWRpdXMgPSAwIGVuZAoJCQlsb2NhbCBtYXhSID0gbWF0aC5mbG9vcihyaCAvIDIpCgkJCWlmIG1heFIgPiA2IHRoZW4gbWF4UiA9IDYgZW5kCgkJCWlmIGNvcm5lclJhZGl1cyA+IG1heFIgdGhlbiBjb3JuZXJSYWRpdXMgPSBtYXhSIGVuZAoJCWVuZAoJZWxzZQoJCWRlc2NyaXB0aW9uLkJhY2tncm91bmRDb2xvcjMgPSBDb2xvcjMuZnJvbVJHQigzNSwgMzUsIDM1KQoJCWRlc2NyaXB0aW9uLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAwLjEKCWVuZAoKCWxvY2FsIHBhZCA9IGRlc2NyaXB0aW9uOkZpbmRGaXJzdENoaWxkT2ZDbGFzcygiVUlQYWRkaW5nIikKCWlmIG5vdCBwYWQgdGhlbgoJCXBhZCA9IEluc3RhbmNlLm5ldygiVUlQYWRkaW5nIikKCQlwYWQuUGFyZW50ID0gZGVzY3JpcHRpb24KCWVuZAoJcGFkLlBhZGRpbmdMZWZ0ID0gVURpbS5uZXcoMCwgOCkKCXBhZC5QYWRkaW5nUmlnaHQgPSBVRGltLm5ldygwLCAyKQoKCWxvY2FsIHBhZExlZnQgPSA4Cglsb2NhbCBwYWRSaWdodCA9IDIKCWRvCgkJbG9jYWwgcCA9IGRlc2NyaXB0aW9uOkZpbmRGaXJzdENoaWxkT2ZDbGFzcygiVUlQYWRkaW5nIikKCQlpZiBwIHRoZW4KCQkJcGFkTGVmdCA9IHAuUGFkZGluZ0xlZnQuT2Zmc2V0CgkJCXBhZFJpZ2h0ID0gcC5QYWRkaW5nUmlnaHQuT2Zmc2V0CgkJZW5kCgllbmQKCglkZXNjcmlwdGlvbi5UZXh0V3JhcHBlZCA9IGZhbHNlCglkZXNjcmlwdGlvbi5UZXh0WEFsaWdubWVudCA9IEVudW0uVGV4dFhBbGlnbm1lbnQuTGVmdAoJZGVzY3JpcHRpb24uQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygwLCAwKQoJZGVzY3JpcHRpb24uQXV0b21hdGljU2l6ZSA9IEVudW0uQXV0b21hdGljU2l6ZS5Ob25lCglkZXNjcmlwdGlvbi5Qb3NpdGlvbiA9IFVEaW0yLm5ldygxLCAwLCAwLCAwKQoJZGVzY3JpcHRpb24uU2l6ZSA9IFVEaW0yLm5ldygwLCAwLCAxLCAwKQoJZGVzY3JpcHRpb24uWkluZGV4ID0gNQoJZGVzY3JpcHRpb24uVGV4dCA9ICIiCglkZXNjcmlwdGlvbi5WaXNpYmxlID0gZmFsc2UKCWRlc2NyaXB0aW9uLkNsaXBzRGVzY2VuZGFudHMgPSBmYWxzZQoKCWlmIGNvcm5lclJhZGl1cyA+IDAgdGhlbgoJCWxvY2FsIGRlc2NDb3JuZXIgPSBJbnN0YW5jZS5uZXcoIlVJQ29ybmVyIikKCQlkZXNjQ29ybmVyLk5hbWUgPSAiRGVzY0Nvcm5lciIKCQlkZXNjQ29ybmVyLkNvcm5lclJhZGl1cyA9IFVEaW0ubmV3KDAsIGNvcm5lclJhZGl1cykKCQlkZXNjQ29ybmVyLlBhcmVudCA9IGRlc2NyaXB0aW9uCgllbmQKCglpZiBzdHJva2VDb2xvciB0aGVuCgkJbG9jYWwgZ3VhcmRYID0gLShtYXRoLmNlaWwoc3Ryb2tlRXhhY3QpICsgMSkKCQlsb2NhbCBjYXBMZWZ0ID0gLShjb3JuZXJSYWRpdXMgKyBzdHJva2VFeGFjdCArIDIpCgkJbG9jYWwgbVkgPSBzdHJva2VFeGFjdCArIDEKCgkJbG9jYWwgbGVmdEd1YXJkID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCgkJbGVmdEd1YXJkLk5hbWUgPSAiTGVmdEd1YXJkIgoJCWxlZnRHdWFyZC5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJCWxlZnRHdWFyZC5Cb3JkZXJTaXplUGl4ZWwgPSAwCgkJbGVmdEd1YXJkLkNsaXBzRGVzY2VuZGFudHMgPSB0cnVlCgkJbGVmdEd1YXJkLlpJbmRleCA9IDYKCQlsZWZ0R3VhcmQuUG9zaXRpb24gPSBVRGltMi5uZXcoMCwgZ3VhcmRYLCAwLCAtbVkpCgkJbGVmdEd1YXJkLlNpemUgPSBVRGltMi5uZXcoMSwgc3Ryb2tlRXhhY3QgKyAxIC0gZ3VhcmRYLCAxLCAyICogbVkpCgkJbGVmdEd1YXJkLlBhcmVudCA9IGRlc2NyaXB0aW9uCgoJCWxvY2FsIGNhcCA9IEluc3RhbmNlLm5ldygiRnJhbWUiKQoJCWNhcC5OYW1lID0gIkNhcCIKCQljYXAuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKCQljYXAuQm9yZGVyU2l6ZVBpeGVsID0gMAoJCWNhcC5aSW5kZXggPSA2CgkJY2FwLlBvc2l0aW9uID0gVURpbTIubmV3KDAsIGNhcExlZnQgLSBndWFyZFgsIDAsIG1ZKQoJCWNhcC5TaXplID0gVURpbTIubmV3KDEsIGNvcm5lclJhZGl1cyArIGd1YXJkWCArIDEsIDEsIC0yICogbVkpCgkJY2FwLlBhcmVudCA9IGxlZnRHdWFyZAoKCQlsb2NhbCBjYXBDb3JuZXIgPSBJbnN0YW5jZS5uZXcoIlVJQ29ybmVyIikKCQljYXBDb3JuZXIuQ29ybmVyUmFkaXVzID0gVURpbS5uZXcoMCwgY29ybmVyUmFkaXVzKQoJCWNhcENvcm5lci5QYXJlbnQgPSBjYXAKCgkJbG9jYWwgY2FwU3Ryb2tlID0gSW5zdGFuY2UubmV3KCJVSVN0cm9rZSIpCgkJY2FwU3Ryb2tlLkNvbG9yID0gc3Ryb2tlQ29sb3IKCQljYXBTdHJva2UuVGhpY2tuZXNzID0gc3Ryb2tlRXhhY3QKCQljYXBTdHJva2UuVHJhbnNwYXJlbmN5ID0gc3Ryb2tlVHJhbnNwYXJlbmN5CgkJY2FwU3Ryb2tlLkFwcGx5U3Ryb2tlTW9kZSA9IHN0cm9rZU1vZGUKCQljYXBTdHJva2UuTGluZUpvaW5Nb2RlID0gRW51bS5MaW5lSm9pbk1vZGUuUm91bmQKCQljYXBTdHJva2UuUGFyZW50ID0gY2FwCgllbmQKCglsb2NhbCBmdW5jdGlvbiBzZXREZXNjVGV4dCh0ZXh0KQoJCWRlc2NyaXB0aW9uLlRleHQgPSB0ZXh0CgkJbG9jYWwgdyA9IFRleHRTZXJ2aWNlOkdldFRleHRTaXplKHRleHQsIGRlc2NyaXB0aW9uLlRleHRTaXplLCBkZXNjcmlwdGlvbi5Gb250LCBWZWN0b3IyLm5ldygxMDAwMCwgMTAwMDApKS5YCgkJdyA9IHcgKyBwYWRMZWZ0ICsgcGFkUmlnaHQgKyA0CgkJZGVzY3JpcHRpb24uU2l6ZSA9IFVEaW0yLm5ldygwLCB3LCAxLCAwKQoJZW5kCgoJbG9jYWwgZGVzY0dlbiA9IDAKCWxvY2FsIGRlc2NNb2RlID0gImlkbGUiCglsb2NhbCBkZXNjVHdlZW4gPSBuaWwKCWxvY2FsIGRlc2NSZXRyYWN0aW5nID0gZmFsc2UKCglsb2NhbCBmdW5jdGlvbiBzdG9wRGVzY1R3ZWVuKCkKCQlpZiBkZXNjVHdlZW4gdGhlbgoJCQlkZXNjVHdlZW46Q2FuY2VsKCkKCQkJZGVzY1R3ZWVuID0gbmlsCgkJZW5kCgkJZGVzY1JldHJhY3RpbmcgPSBmYWxzZQoJCWRlc2NyaXB0aW9uLkNsaXBzRGVzY2VuZGFudHMgPSBmYWxzZQoJZW5kCgoJUnVuU2VydmljZS5SZW5kZXJTdGVwcGVkOkNvbm5lY3QoZnVuY3Rpb24oKQoJCWlmIGRlc2NyaXB0aW9uLlZpc2libGUgYW5kIGRlc2NyaXB0aW9uLlRleHQgfj0gIiIgYW5kIG5vdCBkZXNjUmV0cmFjdGluZyB0aGVuCgkJCWxvY2FsIHcgPSBkZXNjcmlwdGlvbi5UZXh0Qm91bmRzLlggKyBwYWRMZWZ0ICsgcGFkUmlnaHQgKyAyCgkJCWlmIG1hdGguYWJzKGRlc2NyaXB0aW9uLlNpemUuWC5PZmZzZXQgLSB3KSA+IDEgdGhlbgoJCQkJZGVzY3JpcHRpb24uU2l6ZSA9IFVEaW0yLm5ldygwLCB3LCAxLCAwKQoJCQllbmQKCQllbmQKCWVuZCkKCglsb2NhbCBzb3VuZElkcyA9IHsKCQlbMl0gPSAxMTMxMDg4MzAyNDAzNTMsCgkJWzNdID0gNzE5MDI0ODE3NTk2NjAsCgkJWzRdID0gNzI4MjY1NjUwMTg3NjUsCgkJWzVdID0gMTAyODU1NTM1NTQzOTMwLAoJfQoKCWxvY2FsIHR5cGVTb3VuZHMgPSB7fQoJZm9yIGkgPSAyLCA0IGRvCgkJbG9jYWwgcyA9IHJvdzpGaW5kRmlyc3RDaGlsZCh0b3N0cmluZyhpKSwgdHJ1ZSkKCQlpZiBzIGFuZCBzOklzQSgiU291bmQiKSB0aGVuCgkJCXR5cGVTb3VuZHNbI3R5cGVTb3VuZHMgKyAxXSA9IHMKCQllbHNlCgkJCXMgPSBJbnN0YW5jZS5uZXcoIlNvdW5kIikKCQkJcy5OYW1lID0gdG9zdHJpbmcoaSkKCQkJcy5Tb3VuZElkID0gInJieGFzc2V0aWQ6Ly8iIC4uIHNvdW5kSWRzW2ldCgkJCXMuVm9sdW1lID0gMQoJCQlzLlBhcmVudCA9IGRlc2NyaXB0aW9uCgkJCXR5cGVTb3VuZHNbI3R5cGVTb3VuZHMgKyAxXSA9IHMKCQllbmQKCWVuZAoKCWxvY2FsIGRlbGV0ZVNvdW5kID0gcm93OkZpbmRGaXJzdENoaWxkKCI1IiwgdHJ1ZSkKCWlmIG5vdCAoZGVsZXRlU291bmQgYW5kIGRlbGV0ZVNvdW5kOklzQSgiU291bmQiKSkgdGhlbgoJCWRlbGV0ZVNvdW5kID0gSW5zdGFuY2UubmV3KCJTb3VuZCIpCgkJZGVsZXRlU291bmQuTmFtZSA9ICI1IgoJCWRlbGV0ZVNvdW5kLlNvdW5kSWQgPSAicmJ4YXNzZXRpZDovLyIgLi4gc291bmRJZHNbNV0KCQlkZWxldGVTb3VuZC5Wb2x1bWUgPSAxCgkJZGVsZXRlU291bmQuUGFyZW50ID0gZGVzY3JpcHRpb24KCWVuZAoKCWxvY2FsIGZ1bmN0aW9uIHBsYXlIaXQoc291bmQpCgkJaWYgbm90IHNvdW5kIHRoZW4gcmV0dXJuIGVuZAoJCWxvY2FsIHMgPSBzb3VuZDpDbG9uZSgpCgkJcy5QYXJlbnQgPSBkZXNjcmlwdGlvbgoJCXM6UGxheSgpCgkJRGVicmlzOkFkZEl0ZW0ocywgNSkKCWVuZAoKCWxvY2FsIGZ1bmN0aW9uIHN0YXJ0VHlwaW5nKCkKCQlzdG9wRGVzY1R3ZWVuKCkKCQlkZXNjR2VuICs9IDEKCQlkZXNjTW9kZSA9ICJ0eXBpbmciCgkJbG9jYWwgZ2VuID0gZGVzY0dlbgoJCXRhc2suc3Bhd24oZnVuY3Rpb24oKQoJCQlkZXNjcmlwdGlvbi5WaXNpYmxlID0gdHJ1ZQoJCQlsb2NhbCBzaG93biA9ICNkZXNjcmlwdGlvbi5UZXh0CgkJCXdoaWxlIHNob3duIDwgI2Rlc2NUZXh0IGFuZCBnZW4gPT0gZGVzY0dlbiBkbwoJCQkJc2hvd24gKz0gMQoJCQkJc2V0RGVzY1RleHQoc3RyaW5nLnN1YihkZXNjVGV4dCwgMSwgc2hvd24pKQoJCQkJaWYgc2hvd24gJSAyID09IDAgYW5kICN0eXBlU291bmRzID4gMCB0aGVuCgkJCQkJcGxheUhpdCh0eXBlU291bmRzW21hdGgucmFuZG9tKDEsICN0eXBlU291bmRzKV0pCgkJCQllbmQKCQkJCXRhc2sud2FpdCgwLjA0KQoJCQllbmQKCQkJaWYgZ2VuID09IGRlc2NHZW4gdGhlbgoJCQkJZGVzY01vZGUgPSAiaWRsZSIKCQkJZW5kCgkJZW5kKQoJZW5kCgoJbG9jYWwgZnVuY3Rpb24gc3RhcnREZWxldGluZygpCgkJc3RvcERlc2NUd2VlbigpCgkJZGVzY0dlbiArPSAxCgkJZGVzY01vZGUgPSAiZGVsZXRpbmciCgkJbG9jYWwgZ2VuID0gZGVzY0dlbgoJCXRhc2suc3Bhd24oZnVuY3Rpb24oKQoJCQlsb2NhbCBzaG93biA9ICNkZXNjcmlwdGlvbi5UZXh0CgkJCWxvY2FsIG5leHRIaXQgPSBtYXRoLnJhbmRvbSgyLCAzKQoJCQlsb2NhbCByZXRyYWN0aW5nID0gZmFsc2UKCQkJd2hpbGUgc2hvd24gPiAwIGFuZCBnZW4gPT0gZGVzY0dlbiBkbwoJCQkJc2hvd24gLT0gMQoJCQkJbmV4dEhpdCAtPSAxCgkJCQlpZiByZXRyYWN0aW5nIHRoZW4KCQkJCQlkZXNjcmlwdGlvbi5UZXh0ID0gc3RyaW5nLnN1YihkZXNjVGV4dCwgMSwgc2hvd24pCgkJCQllbHNlCgkJCQkJc2V0RGVzY1RleHQoc3RyaW5nLnN1YihkZXNjVGV4dCwgMSwgc2hvd24pKQoJCQkJZW5kCgkJCQlpZiBub3QgcmV0cmFjdGluZyBhbmQgbmV4dEhpdCA8PSAwIHRoZW4KCQkJCQlwbGF5SGl0KGRlbGV0ZVNvdW5kKQoJCQkJCW5leHRIaXQgPSBtYXRoLnJhbmRvbSgyLCAzKQoJCQkJZW5kCgkJCQlpZiBub3QgcmV0cmFjdGluZyBhbmQgc2hvd24gPD0gMyB0aGVuCgkJCQkJcmV0cmFjdGluZyA9IHRydWUKCQkJCQlkZXNjUmV0cmFjdGluZyA9IHRydWUKCQkJCQlkZXNjcmlwdGlvbi5DbGlwc0Rlc2NlbmRhbnRzID0gdHJ1ZQoJCQkJCWxvY2FsIHR3ID0gVHdlZW5TZXJ2aWNlOkNyZWF0ZSgKCQkJCQkJZGVzY3JpcHRpb24sCgkJCQkJCVR3ZWVuSW5mby5uZXcoMC4xNiwgRW51bS5FYXNpbmdTdHlsZS5RdWFkLCBFbnVtLkVhc2luZ0RpcmVjdGlvbi5JbiksCgkJCQkJCXsKCQkJCQkJCVNpemUgPSBVRGltMi5uZXcoMCwgMCwgMSwgMCksCgkJCQkJCQlUZXh0VHJhbnNwYXJlbmN5ID0gMSwKCQkJCQkJfQoJCQkJCSkKCQkJCQlkZXNjVHdlZW4gPSB0dwoJCQkJCXR3OlBsYXkoKQoJCQkJZW5kCgkJCQl0YXNrLndhaXQoMC4wMykKCQkJZW5kCgkJCWlmIGdlbiB+PSBkZXNjR2VuIHRoZW4gcmV0dXJuIGVuZAoJCQlpZiBkZXNjVHdlZW4gdGhlbgoJCQkJZGVzY1R3ZWVuLkNvbXBsZXRlZDpXYWl0KCkKCQkJZW5kCgkJCWlmIGdlbiA9PSBkZXNjR2VuIHRoZW4KCQkJCWRlc2NNb2RlID0gImlkbGUiCgkJCQlkZXNjcmlwdGlvbi5WaXNpYmxlID0gZmFsc2UKCQkJCWRlc2NyaXB0aW9uLlRleHQgPSAiIgoJCQkJZGVzY3JpcHRpb24uVGV4dFRyYW5zcGFyZW5jeSA9IDAKCQkJZW5kCgkJCWRlc2NUd2VlbiA9IG5pbAoJCQlkZXNjUmV0cmFjdGluZyA9IGZhbHNlCgkJCWRlc2NyaXB0aW9uLkNsaXBzRGVzY2VuZGFudHMgPSBmYWxzZQoJCWVuZCkKCWVuZAoKCWxvY2FsIGhvdmVyZWQgPSB7fQoJbG9jYWwgaG92ZXJTZXNzaW9uID0gMAoJbG9jYWwgc2Vzc2lvbkNvdW50ID0gMAoJbG9jYWwgZW5kR2VuID0gMAoKCWxvY2FsIGZ1bmN0aW9uIGhvdmVyQ2hhbmdlZCgpCgkJbG9jYWwgb3ZlciA9IG5leHQoaG92ZXJlZCkgfj0gbmlsCgoJCWlmIG92ZXIgdGhlbgoJCQllbmRHZW4gKz0gMQoJCQlpZiBob3ZlclNlc3Npb24gPT0gMCB0aGVuCgkJCQlzZXNzaW9uQ291bnQgKz0gMQoJCQkJaG92ZXJTZXNzaW9uID0gc2Vzc2lvbkNvdW50CgkJCQlsb2NhbCBzaWQgPSBob3ZlclNlc3Npb24KCQkJCWlmIGRlc2NNb2RlID09ICJkZWxldGluZyIgdGhlbgoJCQkJCXN0YXJ0VHlwaW5nKCkKCQkJCWVsc2UKCQkJCQl0YXNrLmRlbGF5KDAuOCwgZnVuY3Rpb24oKQoJCQkJCQlpZiBob3ZlclNlc3Npb24gPT0gc2lkIHRoZW4KCQkJCQkJCXN0YXJ0VHlwaW5nKCkKCQkJCQkJZW5kCgkJCQkJZW5kKQoJCQkJZW5kCgkJCWVuZAoJCWVsc2UKCQkJaWYgaG92ZXJTZXNzaW9uIH49IDAgdGhlbgoJCQkJZW5kR2VuICs9IDEKCQkJCWxvY2FsIGcgPSBlbmRHZW4KCQkJCXRhc2suZGVsYXkoMC4wNSwgZnVuY3Rpb24oKQoJCQkJCWlmIGcgPT0gZW5kR2VuIGFuZCBuZXh0KGhvdmVyZWQpID09IG5pbCB0aGVuCgkJCQkJCWhvdmVyU2Vzc2lvbiA9IDAKCQkJCQkJc3RhcnREZWxldGluZygpCgkJCQkJZW5kCgkJCQllbmQpCgkJCWVuZAoJCWVuZAoJZW5kCgoJbG9jYWwgZnVuY3Rpb24gYmluZEhvdmVyKGd1aSkKCQlndWkuTW91c2VFbnRlcjpDb25uZWN0KGZ1bmN0aW9uKCkKCQkJaG92ZXJlZFtndWldID0gdHJ1ZQoJCQlob3ZlckNoYW5nZWQoKQoJCWVuZCkKCQlndWkuTW91c2VMZWF2ZTpDb25uZWN0KGZ1bmN0aW9uKCkKCQkJaG92ZXJlZFtndWldID0gbmlsCgkJCWhvdmVyQ2hhbmdlZCgpCgkJZW5kKQoJZW5kCgoJYmluZEhvdmVyKHJvdykKCWJpbmRIb3ZlcihiYWxscykKCWZvciBfLCBjIGluIGlwYWlycyhyb3c6R2V0RGVzY2VuZGFudHMoKSkgZG8KCQlpZiBjOklzQSgiR3VpT2JqZWN0IikgYW5kIGMgfj0gYmFsbHMgdGhlbgoJCQliaW5kSG92ZXIoYykKCQllbmQKCWVuZAoKCUcuWFRXX1RLX0FOSU0gPSBhbmltCglHLlhUV19US19GTElQX0VYVCA9IGZ1bmN0aW9uKG9uKQoJCVR3ZWVuU2VydmljZTpDcmVhdGUoYW5pbSwgVHdlZW5JbmZvLm5ldygwLjI1LCBFbnVtLkVhc2luZ1N0eWxlLlF1YWQsIEVudW0uRWFzaW5nRGlyZWN0aW9uLk91dCksIHsKCQkJVmFsdWUgPSBvbiBhbmQgMSBvciAwCgkJfSk6UGxheSgpCgllbmQKZW5kCgpsb2NhbCBhbmltID0gRy5YVFdfVEtfQU5JTSBvciBJbnN0YW5jZS5uZXcoIk51bWJlclZhbHVlIikKCmxvY2FsIGZ1bmN0aW9uIHJlZ2lzdGVyQ29sbGlzaW9uR3JvdXAobmFtZSkKCXBjYWxsKGZ1bmN0aW9uKCkKCQlQaHlzaWNzU2VydmljZTpSZWdpc3RlckNvbGxpc2lvbkdyb3VwKG5hbWUpCgllbmQpCmVuZAoKcmVnaXN0ZXJDb2xsaXNpb25Hcm91cCgiWFRXUHVzaGVyIikKcmVnaXN0ZXJDb2xsaXNpb25Hcm91cCgiWFRXUGxheWVyTm9Db2xsaWRlIikKCnBjYWxsKGZ1bmN0aW9uKCkKCVBoeXNpY3NTZXJ2aWNlOkNvbGxpc2lvbkdyb3VwU2V0Q29sbGlkYWJsZSgiWFRXUHVzaGVyIiwgIlhUV1B1c2hlciIsIGZhbHNlKQoJUGh5c2ljc1NlcnZpY2U6Q29sbGlzaW9uR3JvdXBTZXRDb2xsaWRhYmxlKCJYVFdQdXNoZXIiLCAiWFRXUGxheWVyTm9Db2xsaWRlIiwgZmFsc2UpCglQaHlzaWNzU2VydmljZTpDb2xsaXNpb25Hcm91cFNldENvbGxpZGFibGUoIlhUV1BsYXllck5vQ29sbGlkZSIsICJYVFdQbGF5ZXJOb0NvbGxpZGUiLCB0cnVlKQoJUGh5c2ljc1NlcnZpY2U6Q29sbGlzaW9uR3JvdXBTZXRDb2xsaWRhYmxlKCJYVFdQbGF5ZXJOb0NvbGxpZGUiLCAiRGVmYXVsdCIsIHRydWUpCmVuZCkKCmxvY2FsIFRLID0gewoJZW5hYmxlZCA9IGZhbHNlLAoJaGVsZCA9IG5pbCwKCWhvdmVyVGFyZ2V0ID0gbmlsLAoJZGlzdGFuY2UgPSAyMCwKCW1pbkRpc3RhbmNlID0gMywKCW1heERpc3RhbmNlID0gNTAwLAoJdmVsb2NpdHlHYWluID0gMzAsCgltYXhTcGVlZCA9IDMwMCwKCXNjcm9sbFN0ZXAgPSAyLAoJc2F2ZWRNaW4gPSBuaWwsCglzYXZlZE1heCA9IG5pbCwKCXJlbmRlckNvbm4gPSBuaWwsCglpbnB1dEJlZ2FuID0gbmlsLAoJaW5wdXRFbmRlZCA9IG5pbCwKCWlucHV0Q2hhbmdlZCA9IG5pbCwKCWNoYXJDb25uID0gbmlsLAoJcm90UmlnaHQgPSBmYWxzZSwKCXJvdFVwID0gZmFsc2UsCglyb3RhdGVTcGVlZCA9IDkwLAoJdXNpbmdQdXNoZXIgPSBmYWxzZSwKfQoKbG9jYWwgREFTSCA9IHsKCWxhc3REYXNoID0gMCwKCWNvb2xkb3duID0gMC4xNSwKCWFjdGl2ZSA9IGZhbHNlLAp9Cgpsb2NhbCBjYW1lcmEgPSB3b3Jrc3BhY2UuQ3VycmVudENhbWVyYQoKbG9jYWwgb2xkSGwgPSB3b3Jrc3BhY2U6RmluZEZpcnN0Q2hpbGQoIlhUV1RLSGlnaGxpZ2h0IikKaWYgb2xkSGwgdGhlbiBvbGRIbDpEZXN0cm95KCkgZW5kCgpsb2NhbCBoaWdobGlnaHQgPSBJbnN0YW5jZS5uZXcoIkhpZ2hsaWdodCIpCmhpZ2hsaWdodC5OYW1lID0gIlhUV1RLSGlnaGxpZ2h0IgpoaWdobGlnaHQuRmlsbENvbG9yID0gQ29sb3IzLmZyb21SR0IoODAsIDIwMCwgMjU1KQpoaWdobGlnaHQuT3V0bGluZUNvbG9yID0gQ29sb3IzLmZyb21SR0IoMTQwLCAyMzUsIDI1NSkKaGlnaGxpZ2h0LkZpbGxUcmFuc3BhcmVuY3kgPSAwLjY1CmhpZ2hsaWdodC5PdXRsaW5lVHJhbnNwYXJlbmN5ID0gMApoaWdobGlnaHQuRGVwdGhNb2RlID0gRW51bS5IaWdobGlnaHREZXB0aE1vZGUuQWx3YXlzT25Ub3AKaGlnaGxpZ2h0LkVuYWJsZWQgPSBmYWxzZQpoaWdobGlnaHQuUGFyZW50ID0gd29ya3NwYWNlCgpsb2NhbCBob3ZlckZpbGwgPSBDb2xvcjMuZnJvbVJHQig4MCwgMjAwLCAyNTUpCmxvY2FsIGhvdmVyT3V0bGluZSA9IENvbG9yMy5mcm9tUkdCKDE0MCwgMjM1LCAyNTUpCmxvY2FsIGdyYWJGaWxsID0gQ29sb3IzLmZyb21SR0IoMjU1LCAyMDAsIDgwKQpsb2NhbCBncmFiT3V0bGluZSA9IENvbG9yMy5mcm9tUkdCKDI1NSwgMjMwLCAxMzApCmxvY2FsIG5wY0ZpbGwgPSBDb2xvcjMuZnJvbVJHQigyMDAsIDEzMCwgMjU1KQpsb2NhbCBucGNPdXRsaW5lID0gQ29sb3IzLmZyb21SR0IoMjIwLCAxODAsIDI1NSkKCmxvY2FsIEZYID0gewoJYWN0aXZlID0gZmFsc2UsCglwYXJ0ID0gbmlsLAoJaXRlbXMgPSBuaWwsCn0KCmxvY2FsIGZ1bmN0aW9uIGJ1aWxkV2lkdGhTZXEoYmFzZVdpZHRoLCBwdWxzZSkKCWxvY2FsIGIgPSBiYXNlV2lkdGggKiBwdWxzZQoJcmV0dXJuIE51bWJlclNlcXVlbmNlLm5ldyh7CgkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMCwgMC4wNSAqIGIpLAoJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDAuMSwgMC41NSAqIGIpLAoJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDAuMjUsIDAuOTUgKiBiKSwKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjU1LCAwLjc1ICogYiksCgkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMC44LCAwLjM1ICogYiksCgkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMC45NSwgMC4wOCAqIGIpLAoJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDEsIDApLAoJfSkKZW5kCgpsb2NhbCBmdW5jdGlvbiBidWlsZENvbG9yU2VxKGNBLCBjQiwgY0MpCglyZXR1cm4gQ29sb3JTZXF1ZW5jZS5uZXcoewoJCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMCwgY0EpLAoJCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMC4zNSwgY0IpLAoJCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMC43LCBjQyksCgkJQ29sb3JTZXF1ZW5jZUtleXBvaW50Lm5ldygxLCBjQSksCgl9KQplbmQKCmxvY2FsIGZ1bmN0aW9uIG1ha2VUcmFpbChhdHQwLCBhdHQxLCBjb2xvclNlcSwgbGlmZXRpbWUsIGJhc2VXaWR0aCwgaGVhZEFscGhhLCBtaWRBbHBoYSwgdGFpbEFscGhhKQoJbG9jYWwgdHIgPSBJbnN0YW5jZS5uZXcoIlRyYWlsIikKCXRyLkF0dGFjaG1lbnQwID0gYXR0MAoJdHIuQXR0YWNobWVudDEgPSBhdHQxCgl0ci5Db2xvciA9IGNvbG9yU2VxCgl0ci5UcmFuc3BhcmVuY3kgPSBOdW1iZXJTZXF1ZW5jZS5uZXcoewoJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDAsIGhlYWRBbHBoYSksCgkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMC4yNSwgbWlkQWxwaGEpLAoJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDAuNjUsIHRhaWxBbHBoYSksCgkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMSwgMSksCgl9KQoJdHIuTGlmZXRpbWUgPSBsaWZldGltZQoJdHIuTWluTGVuZ3RoID0gMAoJdHIuTGlnaHRFbWlzc2lvbiA9IDAuOQoJdHIuTGlnaHRJbmZsdWVuY2UgPSAwLjE1Cgl0ci5GYWNlQ2FtZXJhID0gdHJ1ZQoJdHIuV2lkdGhTY2FsZSA9IGJ1aWxkV2lkdGhTZXEoYmFzZVdpZHRoLCAxKQoJdHIuUGFyZW50ID0gYXR0MC5QYXJlbnQKCXJldHVybiB0cgplbmQKCmxvY2FsIGZ1bmN0aW9uIGNyZWF0ZUZYKHBhcnQpCglkZXN0cm95RlgoKQoKCWxvY2FsIHNpemUgPSBwYXJ0LlNpemUKCWxvY2FsIGhhbGZZID0gc2l6ZS5ZICogMC41Cglsb2NhbCBoYWxmWCA9IHNpemUuWCAqIDAuNQoJbG9jYWwgaGFsZlogPSBzaXplLlogKiAwLjUKCglsb2NhbCBmdW5jdGlvbiBuZXdBdHQobmFtZSwgcG9zKQoJCWxvY2FsIGEgPSBJbnN0YW5jZS5uZXcoIkF0dGFjaG1lbnQiKQoJCWEuTmFtZSA9IG5hbWUKCQlhLlBvc2l0aW9uID0gcG9zCgkJYS5QYXJlbnQgPSBwYXJ0CgkJcmV0dXJuIGEKCWVuZAoKCWxvY2FsIGF0dFRvcEEgPSBuZXdBdHQoIlhUV1RLX0F0dFRvcEEiLCBWZWN0b3IzLm5ldygtaGFsZlggKiAwLjYsIGhhbGZZLCAwKSkKCWxvY2FsIGF0dFRvcEIgPSBuZXdBdHQoIlhUV1RLX0F0dFRvcEIiLCBWZWN0b3IzLm5ldyhoYWxmWCAqIDAuNiwgaGFsZlksIDApKQoJbG9jYWwgYXR0Qm90QSA9IG5ld0F0dCgiWFRXVEtfQXR0Qm90QSIsIFZlY3RvcjMubmV3KC1oYWxmWCAqIDAuNiwgLWhhbGZZLCAwKSkKCWxvY2FsIGF0dEJvdEIgPSBuZXdBdHQoIlhUV1RLX0F0dEJvdEIiLCBWZWN0b3IzLm5ldyhoYWxmWCAqIDAuNiwgLWhhbGZZLCAwKSkKCglsb2NhbCBhdHRMZWZ0QSA9IG5ld0F0dCgiWFRXVEtfQXR0TGVmdEEiLCBWZWN0b3IzLm5ldygtaGFsZlgsIGhhbGZZICogMC41LCAwKSkKCWxvY2FsIGF0dExlZnRCID0gbmV3QXR0KCJYVFdUS19BdHRMZWZ0QiIsIFZlY3RvcjMubmV3KC1oYWxmWCwgLWhhbGZZICogMC41LCAwKSkKCWxvY2FsIGF0dFJpZ2h0QSA9IG5ld0F0dCgiWFRXVEtfQXR0UmlnaHRBIiwgVmVjdG9yMy5uZXcoaGFsZlgsIGhhbGZZICogMC41LCAwKSkKCWxvY2FsIGF0dFJpZ2h0QiA9IG5ld0F0dCgiWFRXVEtfQXR0UmlnaHRCIiwgVmVjdG9yMy5uZXcoaGFsZlgsIC1oYWxmWSAqIDAuNSwgMCkpCgoJbG9jYWwgYXR0RnJvbnRBID0gbmV3QXR0KCJYVFdUS19BdHRGcm9udEEiLCBWZWN0b3IzLm5ldygwLCBoYWxmWSAqIDAuNSwgLWhhbGZaKSkKCWxvY2FsIGF0dEZyb250QiA9IG5ld0F0dCgiWFRXVEtfQXR0RnJvbnRCIiwgVmVjdG9yMy5uZXcoMCwgLWhhbGZZICogMC41LCAtaGFsZlopKQoJbG9jYWwgYXR0QmFja0EgPSBuZXdBdHQoIlhUV1RLX0F0dEJhY2tBIiwgVmVjdG9yMy5uZXcoMCwgaGFsZlkgKiAwLjUsIGhhbGZaKSkKCWxvY2FsIGF0dEJhY2tCID0gbmV3QXR0KCJYVFdUS19BdHRCYWNrQiIsIFZlY3RvcjMubmV3KDAsIC1oYWxmWSAqIDAuNSwgaGFsZlopKQoKCWxvY2FsIGF0dERpYWdBMSA9IG5ld0F0dCgiWFRXVEtfQXR0RGlhZ0ExIiwgVmVjdG9yMy5uZXcoLWhhbGZYICogMC43LCBoYWxmWSAqIDAuNywgLWhhbGZaICogMC43KSkKCWxvY2FsIGF0dERpYWdBMiA9IG5ld0F0dCgiWFRXVEtfQXR0RGlhZ0EyIiwgVmVjdG9yMy5uZXcoaGFsZlggKiAwLjcsIC1oYWxmWSAqIDAuNywgaGFsZlogKiAwLjcpKQoJbG9jYWwgYXR0RGlhZ0IxID0gbmV3QXR0KCJYVFdUS19BdHREaWFnQjEiLCBWZWN0b3IzLm5ldyhoYWxmWCAqIDAuNywgaGFsZlkgKiAwLjcsIC1oYWxmWiAqIDAuNykpCglsb2NhbCBhdHREaWFnQjIgPSBuZXdBdHQoIlhUV1RLX0F0dERpYWdCMiIsIFZlY3RvcjMubmV3KC1oYWxmWCAqIDAuNywgLWhhbGZZICogMC43LCBoYWxmWiAqIDAuNykpCgoJbG9jYWwgd2hpdGVDb3JlID0gQ29sb3IzLmZyb21SR0IoMjU1LCAyNTUsIDI1NSkKCWxvY2FsIGxpZ2h0R3JleSA9IENvbG9yMy5mcm9tUkdCKDIxMCwgMjEwLCAyMTApCglsb2NhbCBtaWRHcmV5ICAgPSBDb2xvcjMuZnJvbVJHQigxMjAsIDEyMCwgMTIwKQoJbG9jYWwgY2hhckdyZXkgID0gQ29sb3IzLmZyb21SR0IoNDUsIDQ1LCA0NSkKCglsb2NhbCBlZGdlU2VxICA9IGJ1aWxkQ29sb3JTZXEod2hpdGVDb3JlLCBsaWdodEdyZXksIGNoYXJHcmV5KQoJbG9jYWwgZGlhZ1NlcSAgPSBidWlsZENvbG9yU2VxKGxpZ2h0R3JleSwgbWlkR3JleSwgY2hhckdyZXkpCglsb2NhbCBjcm9zc1NlcSA9IGJ1aWxkQ29sb3JTZXEod2hpdGVDb3JlLCBtaWRHcmV5LCBjaGFyR3JleSkKCglsb2NhbCB0cmFpbHMgPSB7CgkJbWFrZVRyYWlsKGF0dFRvcEEsIGF0dFRvcEIsIGVkZ2VTZXEsIDAuODUsIDAuNTUsIDAuNTUsIDAuNzUsIDAuOTUpLAoJCW1ha2VUcmFpbChhdHRCb3RBLCBhdHRCb3RCLCBlZGdlU2VxLCAwLjg1LCAwLjU1LCAwLjU1LCAwLjc1LCAwLjk1KSwKCQltYWtlVHJhaWwoYXR0TGVmdEEsIGF0dExlZnRCLCBlZGdlU2VxLCAwLjgwLCAwLjUwLCAwLjYwLCAwLjc4LCAwLjk2KSwKCQltYWtlVHJhaWwoYXR0UmlnaHRBLCBhdHRSaWdodEIsIGVkZ2VTZXEsIDAuODAsIDAuNTAsIDAuNjAsIDAuNzgsIDAuOTYpLAoJCW1ha2VUcmFpbChhdHRGcm9udEEsIGF0dEZyb250QiwgY3Jvc3NTZXEsIDAuNzUsIDAuNDUsIDAuNjIsIDAuODAsIDAuOTYpLAoJCW1ha2VUcmFpbChhdHRCYWNrQSwgYXR0QmFja0IsIGNyb3NzU2VxLCAwLjc1LCAwLjQ1LCAwLjYyLCAwLjgwLCAwLjk2KSwKCQltYWtlVHJhaWwoYXR0RGlhZ0ExLCBhdHREaWFnQTIsIGRpYWdTZXEsIDEuMDAsIDAuNzAsIDAuNTUsIDAuNzIsIDAuOTQpLAoJCW1ha2VUcmFpbChhdHREaWFnQjEsIGF0dERpYWdCMiwgZGlhZ1NlcSwgMS4wMCwgMC43MCwgMC41NSwgMC43MiwgMC45NCksCgl9CgoJbG9jYWwgbGlnaHQgPSBJbnN0YW5jZS5uZXcoIlBvaW50TGlnaHQiKQoJbGlnaHQuTmFtZSA9ICJYVFdUS19HbG93IgoJbGlnaHQuQ29sb3IgPSBDb2xvcjMuZnJvbVJHQigyNDAsIDI0MCwgMjQwKQoJbGlnaHQuQnJpZ2h0bmVzcyA9IDEuNAoJbGlnaHQuUmFuZ2UgPSBtYXRoLm1heChzaXplLk1hZ25pdHVkZSAqIDEuMywgNikKCWxpZ2h0LlNoYWRvd3MgPSBmYWxzZQoJbGlnaHQuUGFyZW50ID0gcGFydAoKCUZYLmFjdGl2ZSA9IHRydWUKCUZYLnBhcnQgPSBwYXJ0CglGWC5pdGVtcyA9IHsKCQlhdHRhY2htZW50cyA9IHsKCQkJYXR0VG9wQSwgYXR0VG9wQiwgYXR0Qm90QSwgYXR0Qm90QiwKCQkJYXR0TGVmdEEsIGF0dExlZnRCLCBhdHRSaWdodEEsIGF0dFJpZ2h0QiwKCQkJYXR0RnJvbnRBLCBhdHRGcm9udEIsIGF0dEJhY2tBLCBhdHRCYWNrQiwKCQkJYXR0RGlhZ0ExLCBhdHREaWFnQTIsIGF0dERpYWdCMSwgYXR0RGlhZ0IyLAoJCX0sCgkJdHJhaWxzID0gdHJhaWxzLAoJCWJhc2VXaWR0aHMgPSB7IDAuNTUsIDAuNTUsIDAuNTAsIDAuNTAsIDAuNDUsIDAuNDUsIDAuNzAsIDAuNzAgfSwKCQlsaWdodCA9IGxpZ2h0LAoJCXN0YXJ0VGltZSA9IHRpY2soKSwKCX0KZW5kCgpmdW5jdGlvbiBkZXN0cm95RlgoKQoJaWYgbm90IEZYLmFjdGl2ZSB0aGVuIHJldHVybiBlbmQKCWlmIEZYLml0ZW1zIHRoZW4KCQlpZiBGWC5pdGVtcy50cmFpbHMgdGhlbgoJCQlmb3IgXywgdCBpbiBpcGFpcnMoRlguaXRlbXMudHJhaWxzKSBkbwoJCQkJaWYgdCB0aGVuIHQ6RGVzdHJveSgpIGVuZAoJCQllbmQKCQllbmQKCQlpZiBGWC5pdGVtcy5hdHRhY2htZW50cyB0aGVuCgkJCWZvciBfLCBhIGluIGlwYWlycyhGWC5pdGVtcy5hdHRhY2htZW50cykgZG8KCQkJCWlmIGEgdGhlbiBhOkRlc3Ryb3koKSBlbmQKCQkJZW5kCgkJZW5kCgkJaWYgRlguaXRlbXMubGlnaHQgdGhlbgoJCQlGWC5pdGVtcy5saWdodDpEZXN0cm95KCkKCQkJRlguaXRlbXMubGlnaHQgPSBuaWwKCQllbmQKCQlGWC5pdGVtcyA9IG5pbAoJZW5kCglGWC5hY3RpdmUgPSBmYWxzZQoJRlgucGFydCA9IG5pbAplbmQKCmxvY2FsIGZ1bmN0aW9uIGZhZGVPdXRGWCgpCglpZiBub3QgRlguYWN0aXZlIG9yIG5vdCBGWC5pdGVtcyB0aGVuIHJldHVybiBlbmQKCglsb2NhbCBwYXJ0ID0gRlgucGFydAoJbG9jYWwgaXRlbXMgPSBGWC5pdGVtcwoKCWlmIG5vdCBwYXJ0IG9yIG5vdCBwYXJ0LlBhcmVudCB0aGVuCgkJZGVzdHJveUZYKCkKCQlyZXR1cm4KCWVuZAoKCWlmIGl0ZW1zLmxpZ2h0IHRoZW4KCQlpdGVtcy5saWdodDpEZXN0cm95KCkKCQlpdGVtcy5saWdodCA9IG5pbAoJZW5kCgoJbG9jYWwgYW5jaG9yID0gSW5zdGFuY2UubmV3KCJQYXJ0IikKCWFuY2hvci5OYW1lID0gIlhUV1RLX0ZhZGVBbmNob3IiCglhbmNob3IuQW5jaG9yZWQgPSB0cnVlCglhbmNob3IuQ2FuQ29sbGlkZSA9IGZhbHNlCglhbmNob3IuQ2FuUXVlcnkgPSBmYWxzZQoJYW5jaG9yLkNhblRvdWNoID0gZmFsc2UKCWFuY2hvci5UcmFuc3BhcmVuY3kgPSAxCglhbmNob3IuU2l6ZSA9IFZlY3RvcjMubmV3KDAuMDUsIDAuMDUsIDAuMDUpCglhbmNob3IuQ0ZyYW1lID0gcGFydC5DRnJhbWUKCWFuY2hvci5QYXJlbnQgPSB3b3Jrc3BhY2UKCglsb2NhbCBwYXJ0Q0YgPSBwYXJ0LkNGcmFtZQoJbG9jYWwgYW5jaG9yQ0YgPSBhbmNob3IuQ0ZyYW1lCgoJbG9jYWwgbWF4TGlmZSA9IDAKCglmb3IgXywgYXR0IGluIGlwYWlycyhpdGVtcy5hdHRhY2htZW50cykgZG8KCQlpZiBhdHQgYW5kIGF0dC5QYXJlbnQgPT0gcGFydCB0aGVuCgkJCWxvY2FsIHdvcmxkUG9zID0gcGFydENGOlBvaW50VG9Xb3JsZFNwYWNlKGF0dC5Qb3NpdGlvbikKCQkJYXR0LlBhcmVudCA9IGFuY2hvcgoJCQlhdHQuUG9zaXRpb24gPSBhbmNob3JDRjpQb2ludFRvT2JqZWN0U3BhY2Uod29ybGRQb3MpCgkJZW5kCgllbmQKCglmb3IgXywgdHIgaW4gaXBhaXJzKGl0ZW1zLnRyYWlscykgZG8KCQlpZiB0ciB0aGVuCgkJCWlmIHRyLkxpZmV0aW1lID4gbWF4TGlmZSB0aGVuIG1heExpZmUgPSB0ci5MaWZldGltZSBlbmQKCQkJdHIuUGFyZW50ID0gYW5jaG9yCgkJZW5kCgllbmQKCglEZWJyaXM6QWRkSXRlbShhbmNob3IsIG1heExpZmUgKyAwLjE1KQoKCUZYLmFjdGl2ZSA9IGZhbHNlCglGWC5wYXJ0ID0gbmlsCglGWC5pdGVtcyA9IG5pbAplbmQKCmxvY2FsIHJheVBhcmFtcyA9IFJheWNhc3RQYXJhbXMubmV3KCkKcmF5UGFyYW1zLkZpbHRlclR5cGUgPSBFbnVtLlJheWNhc3RGaWx0ZXJUeXBlLkV4Y2x1ZGUKcmF5UGFyYW1zLklnbm9yZVdhdGVyID0gdHJ1ZQpyYXlQYXJhbXMuRmlsdGVyRGVzY2VuZGFudHNJbnN0YW5jZXMgPSB7fQoKbG9jYWwgZnVuY3Rpb24gdXBkYXRlRmlsdGVyKCkKCWxvY2FsIGxpc3QgPSB7fQoJaWYgcGxheWVyLkNoYXJhY3RlciB0aGVuCgkJbGlzdFsjbGlzdCArIDFdID0gcGxheWVyLkNoYXJhY3RlcgoJZW5kCglyYXlQYXJhbXMuRmlsdGVyRGVzY2VuZGFudHNJbnN0YW5jZXMgPSBsaXN0CmVuZAoKbG9jYWwgZnVuY3Rpb24gZ2V0Q2hhcmFjdGVyT2YocGFydCkKCWlmIG5vdCBwYXJ0IG9yIG5vdCBwYXJ0OklzQSgiQmFzZVBhcnQiKSB0aGVuIHJldHVybiBuaWwgZW5kCgoJbG9jYWwgbW9kZWwgPSBwYXJ0OkZpbmRGaXJzdEFuY2VzdG9yT2ZDbGFzcygiTW9kZWwiKQoJd2hpbGUgbW9kZWwgZG8KCQlpZiBtb2RlbDpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIkh1bWFub2lkIikgdGhlbgoJCQlyZXR1cm4gbW9kZWwKCQllbmQKCQlpZiBtb2RlbCA9PSB3b3Jrc3BhY2UgdGhlbiBicmVhayBlbmQKCQltb2RlbCA9IG1vZGVsOkZpbmRGaXJzdEFuY2VzdG9yT2ZDbGFzcygiTW9kZWwiKQoJZW5kCgoJbG9jYWwgdG9vbCA9IHBhcnQ6RmluZEZpcnN0QW5jZXN0b3JPZkNsYXNzKCJUb29sIikKCWlmIHRvb2wgdGhlbgoJCWxvY2FsIGhvbGRlciA9IHRvb2wuUGFyZW50CgkJaWYgaG9sZGVyIGFuZCBob2xkZXI6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJIdW1hbm9pZCIpIHRoZW4KCQkJcmV0dXJuIGhvbGRlcgoJCWVuZAoJZW5kCgoJcmV0dXJuIG5pbAplbmQKCmxvY2FsIGZ1bmN0aW9uIGlzTlBDTW9kZWwobW9kZWwpCglpZiBub3QgbW9kZWwgb3Igbm90IG1vZGVsOklzQSgiTW9kZWwiKSB0aGVuIHJldHVybiBmYWxzZSBlbmQKCWlmIG5vdCBtb2RlbDpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIkh1bWFub2lkIikgdGhlbiByZXR1cm4gZmFsc2UgZW5kCglpZiBQbGF5ZXJzOkdldFBsYXllckZyb21DaGFyYWN0ZXIobW9kZWwpIHRoZW4gcmV0dXJuIGZhbHNlIGVuZAoJcmV0dXJuIHRydWUKZW5kCgpsb2NhbCBmdW5jdGlvbiBpc1ZhbGlkVGFyZ2V0KHBhcnQpCglpZiBub3QgcGFydCBvciBub3QgcGFydDpJc0EoIkJhc2VQYXJ0IikgdGhlbiByZXR1cm4gZmFsc2UgZW5kCglpZiBwbGF5ZXIuQ2hhcmFjdGVyIGFuZCBwYXJ0OklzRGVzY2VuZGFudE9mKHBsYXllci5DaGFyYWN0ZXIpIHRoZW4gcmV0dXJuIGZhbHNlIGVuZAoKCWxvY2FsIGNoYXIgPSBnZXRDaGFyYWN0ZXJPZihwYXJ0KQoJaWYgY2hhciB0aGVuCgkJaWYgUGxheWVyczpHZXRQbGF5ZXJGcm9tQ2hhcmFjdGVyKGNoYXIpIHRoZW4KCQkJcmV0dXJuIGZhbHNlCgkJZW5kCgkJcmV0dXJuIGlzTlBDTW9kZWwoY2hhcikKCWVuZAoKCWlmIHBhcnQuQW5jaG9yZWQgdGhlbiByZXR1cm4gZmFsc2UgZW5kCglsb2NhbCByb290ID0gcGFydAoJcGNhbGwoZnVuY3Rpb24oKSByb290ID0gcGFydC5Bc3NlbWJseVJvb3RQYXJ0IG9yIHBhcnQgZW5kKQoJaWYgcm9vdC5BbmNob3JlZCB0aGVuIHJldHVybiBmYWxzZSBlbmQKCXJldHVybiB0cnVlCmVuZAoKbG9jYWwgZnVuY3Rpb24gZ2V0TW91c2VSYXkoKQoJbG9jYWwgY2FtID0gd29ya3NwYWNlLkN1cnJlbnRDYW1lcmEKCWlmIG5vdCBjYW0gdGhlbiByZXR1cm4gbmlsIGVuZAoJbG9jYWwgbG9jID0gVXNlcklucHV0U2VydmljZTpHZXRNb3VzZUxvY2F0aW9uKCkKCXJldHVybiBjYW06Vmlld3BvcnRQb2ludFRvUmF5KGxvYy5YLCBsb2MuWSkKZW5kCgpsb2NhbCBmdW5jdGlvbiBnZXRUYXJnZXQoKQoJbG9jYWwgcmF5ID0gZ2V0TW91c2VSYXkoKQoJaWYgbm90IHJheSB0aGVuIHJldHVybiBuaWwgZW5kCgl1cGRhdGVGaWx0ZXIoKQoJbG9jYWwgcmVzdWx0ID0gd29ya3NwYWNlOlJheWNhc3QocmF5Lk9yaWdpbiwgcmF5LkRpcmVjdGlvbiAqIDEwMDAsIHJheVBhcmFtcykKCWlmIHJlc3VsdCBhbmQgaXNWYWxpZFRhcmdldChyZXN1bHQuSW5zdGFuY2UpIHRoZW4KCQlyZXR1cm4gcmVzdWx0Lkluc3RhbmNlCgllbmQKCXJldHVybiBuaWwKZW5kCgpsb2NhbCBmdW5jdGlvbiBnZXRSb290KCkKCWxvY2FsIGNoYXIgPSBwbGF5ZXIuQ2hhcmFjdGVyCglpZiBub3QgY2hhciB0aGVuIHJldHVybiBuaWwgZW5kCglyZXR1cm4gY2hhcjpGaW5kRmlyc3RDaGlsZCgiSHVtYW5vaWRSb290UGFydCIpCmVuZAoKbG9jYWwgZnVuY3Rpb24gZ2V0QXNzZW1ibHlSb290KHBhcnQpCglpZiBub3QgcGFydCBvciBub3QgcGFydDpJc0EoIkJhc2VQYXJ0IikgdGhlbiByZXR1cm4gbmlsIGVuZAoJbG9jYWwgcm9vdCA9IHBhcnQKCXBjYWxsKGZ1bmN0aW9uKCkKCQlyb290ID0gcGFydC5Bc3NlbWJseVJvb3RQYXJ0IG9yIHBhcnQKCWVuZCkKCXJldHVybiByb290CmVuZAoKbG9jYWwgZnVuY3Rpb24gaXNPd25lZEJ5TWUocGFydCkKCWxvY2FsIHJvb3QgPSBnZXRBc3NlbWJseVJvb3QocGFydCkKCWlmIG5vdCByb290IHRoZW4gcmV0dXJuIGZhbHNlIGVuZAoJbG9jYWwgb3duZXIKCXBjYWxsKGZ1bmN0aW9uKCkKCQlvd25lciA9IHJvb3Q6R2V0TmV0d29ya093bmVyKCkKCWVuZCkKCXJldHVybiBvd25lciA9PSBwbGF5ZXIKZW5kCgpsb2NhbCBmdW5jdGlvbiB0cnlEaXJlY3RDbGFpbShwYXJ0KQoJbG9jYWwgcm9vdCA9IGdldEFzc2VtYmx5Um9vdChwYXJ0KQoJaWYgbm90IHJvb3Qgb3Igcm9vdC5BbmNob3JlZCB0aGVuIHJldHVybiBmYWxzZSBlbmQKCglwY2FsbChmdW5jdGlvbigpCgkJcm9vdDpTZXROZXR3b3JrT3duZXIocGxheWVyKQoJZW5kKQoJaWYgaXNPd25lZEJ5TWUocGFydCkgdGhlbiByZXR1cm4gdHJ1ZSBlbmQKCglpZiByb290IH49IHBhcnQgdGhlbgoJCXBjYWxsKGZ1bmN0aW9uKCkKCQkJcGFydDpTZXROZXR3b3JrT3duZXIocGxheWVyKQoJCWVuZCkKCQlpZiBpc093bmVkQnlNZShwYXJ0KSB0aGVuIHJldHVybiB0cnVlIGVuZAoJZW5kCgoJcmV0dXJuIGZhbHNlCmVuZAoKbG9jYWwgZnVuY3Rpb24gdHJ5T3duZXJzaGlwRGFzaChwYXJ0KQoJaWYgREFTSC5hY3RpdmUgdGhlbiByZXR1cm4gZmFsc2UgZW5kCglsb2NhbCBub3cgPSB0aWNrKCkKCWlmIG5vdyAtIERBU0gubGFzdERhc2ggPCBEQVNILmNvb2xkb3duIHRoZW4KCQlyZXR1cm4gZmFsc2UKCWVuZAoJREFTSC5sYXN0RGFzaCA9IG5vdwoKCWxvY2FsIHJvb3QgPSBnZXRSb290KCkKCWlmIG5vdCByb290IHRoZW4gcmV0dXJuIGZhbHNlIGVuZAoKCWxvY2FsIHJvb3RQYXJ0ID0gZ2V0QXNzZW1ibHlSb290KHBhcnQpIG9yIHBhcnQKCWxvY2FsIHRhcmdldFBvcyA9IHJvb3RQYXJ0LlBvc2l0aW9uCglsb2NhbCBzYXZlZENGID0gcm9vdC5DRnJhbWUKCWxvY2FsIG9mZnNldCA9IHNhdmVkQ0YuUG9zaXRpb24gLSB0YXJnZXRQb3MKCWxvY2FsIGRpc3QgPSBvZmZzZXQuTWFnbml0dWRlCgoJaWYgZGlzdCA8IDIgdGhlbgoJCXJldHVybiB0cnlEaXJlY3RDbGFpbShwYXJ0KQoJZW5kCgoJbG9jYWwgc3RhbmRQb3MgPSB0YXJnZXRQb3MgKyBvZmZzZXQuVW5pdCAqIDIuNQoJbG9jYWwgc3RhbmRDRiA9IENGcmFtZS5uZXcoc3RhbmRQb3MsIHRhcmdldFBvcykKCglEQVNILmFjdGl2ZSA9IHRydWUKCglwY2FsbChmdW5jdGlvbigpCgkJcGxheWVyLkNoYXJhY3RlcjpQaXZvdFRvKHN0YW5kQ0YpCgllbmQpCgoJUnVuU2VydmljZS5IZWFydGJlYXQ6V2FpdCgpCgoJbG9jYWwgY2xhaW1lZCA9IHRyeURpcmVjdENsYWltKHBhcnQpCglpZiBub3QgY2xhaW1lZCB0aGVuCgkJUnVuU2VydmljZS5IZWFydGJlYXQ6V2FpdCgpCgkJY2xhaW1lZCA9IHRyeURpcmVjdENsYWltKHBhcnQpCgllbmQKCglwY2FsbChmdW5jdGlvbigpCgkJbG9jYWwgciA9IGdldFJvb3QoKQoJCWlmIHIgdGhlbiByLkNGcmFtZSA9IHNhdmVkQ0YgZW5kCgllbmQpCgoJUnVuU2VydmljZS5IZWFydGJlYXQ6V2FpdCgpCglEQVNILmFjdGl2ZSA9IGZhbHNlCgoJcmV0dXJuIGNsYWltZWQKZW5kCgpsb2NhbCBmdW5jdGlvbiB0cnlUYWtlT3duZXJzaGlwKHBhcnQpCglpZiBpc093bmVkQnlNZShwYXJ0KSB0aGVuCgkJcmV0dXJuIHRydWUsICJhbHJlYWR5IgoJZW5kCglpZiB0cnlEaXJlY3RDbGFpbShwYXJ0KSB0aGVuCgkJcmV0dXJuIHRydWUsICJkaXJlY3QiCgllbmQKCWlmIHRyeU93bmVyc2hpcERhc2gocGFydCkgdGhlbgoJCXJldHVybiB0cnVlLCAiZGFzaCIKCWVuZAoJcmV0dXJuIGZhbHNlLCAiZmFpbGVkIgplbmQKCmxvY2FsIFBVU0hFUiA9IHsKCWFjdGl2ZSA9IGZhbHNlLAoJcGFydCA9IG5pbCwKCWpvaW50ID0gbmlsLAoJc2F2ZWRKb2ludFBhcnQwID0gbmlsLAoJc2F2ZWRUcmFuc3BhcmVuY3kgPSBuaWwsCglzYXZlZENhbkNvbGxpZGUgPSBuaWwsCglzYXZlZE1hc3NsZXNzID0gbmlsLAoJc2F2ZWRDb2xsaXNpb25Hcm91cCA9IG5pbCwKCXNhdmVkQ3VzdG9tUGh5c2ljcyA9IG5pbCwKCXNhdmVkU2l6ZSA9IG5pbCwKCXNhdmVkQ0ZyYW1lID0gbmlsLAoJc2F2ZWRDaGFyR3JvdXBzID0gbmlsLAoJdXBncmFkZVRhc2sgPSBmYWxzZSwKfQoKbG9jYWwgZnVuY3Rpb24gZmluZFB1c2hlclBhcnQoY2hhcikKCWxvY2FsIGFjY2Vzc29yeSA9IGNoYXI6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJBY2Nlc3NvcnkiKQoJaWYgbm90IGFjY2Vzc29yeSB0aGVuCgkJZm9yIF8sIGQgaW4gaXBhaXJzKGNoYXI6R2V0RGVzY2VuZGFudHMoKSkgZG8KCQkJaWYgZDpJc0EoIkFjY2Vzc29yeSIpIHRoZW4KCQkJCWFjY2Vzc29yeSA9IGQKCQkJCWJyZWFrCgkJCWVuZAoJCWVuZAoJZW5kCglpZiBhY2Nlc3NvcnkgdGhlbgoJCWxvY2FsIGhhbmRsZSA9IGFjY2Vzc29yeTpGaW5kRmlyc3RDaGlsZCgiSGFuZGxlIikKCQlpZiBoYW5kbGUgYW5kIGhhbmRsZTpJc0EoIkJhc2VQYXJ0IikgdGhlbgoJCQlyZXR1cm4gaGFuZGxlCgkJZW5kCgllbmQKCWxvY2FsIG5hbWVzID0geyAiUmlnaHRIYW5kIiwgIkxlZnRIYW5kIiwgIlJpZ2h0IEFybSIsICJMZWZ0IEFybSIgfQoJZm9yIF8sIG4gaW4gaXBhaXJzKG5hbWVzKSBkbwoJCWxvY2FsIHAgPSBjaGFyOkZpbmRGaXJzdENoaWxkKG4pCgkJaWYgcCBhbmQgcDpJc0EoIkJhc2VQYXJ0IikgdGhlbgoJCQlyZXR1cm4gcAoJCWVuZAoJZW5kCglyZXR1cm4gbmlsCmVuZAoKbG9jYWwgZnVuY3Rpb24gZmluZEpvaW50Rm9yKGNoYXIsIHBhcnQpCglmb3IgXywgZCBpbiBpcGFpcnMoY2hhcjpHZXREZXNjZW5kYW50cygpKSBkbwoJCWlmIGQ6SXNBKCJNb3RvcjZEIikgYW5kIGQuUGFydDEgPT0gcGFydCB0aGVuIHJldHVybiBkIGVuZAoJCWlmIGQ6SXNBKCJXZWxkIikgYW5kIGQuUGFydDEgPT0gcGFydCB0aGVuIHJldHVybiBkIGVuZAoJCWlmIGQ6SXNBKCJNb3RvcjZEIikgYW5kIGQuUGFydDAgPT0gcGFydCB0aGVuIHJldHVybiBkIGVuZAoJCWlmIGQ6SXNBKCJXZWxkIikgYW5kIGQuUGFydDAgPT0gcGFydCB0aGVuIHJldHVybiBkIGVuZAoJZW5kCglyZXR1cm4gbmlsCmVuZAoKbG9jYWwgZnVuY3Rpb24gcmVzdG9yZUNoYXJDb2xsaXNpb25Hcm91cHMoKQoJaWYgbm90IFBVU0hFUi5zYXZlZENoYXJHcm91cHMgdGhlbiByZXR1cm4gZW5kCglmb3IgcGFydCwgZ3JwIGluIHBhaXJzKFBVU0hFUi5zYXZlZENoYXJHcm91cHMpIGRvCgkJaWYgcGFydCBhbmQgcGFydC5QYXJlbnQgdGhlbgoJCQlwY2FsbChmdW5jdGlvbigpCgkJCQlwYXJ0LkNvbGxpc2lvbkdyb3VwID0gZ3JwCgkJCWVuZCkKCQllbmQKCWVuZAoJUFVTSEVSLnNhdmVkQ2hhckdyb3VwcyA9IG5pbAplbmQKCmxvY2FsIGZ1bmN0aW9uIGFwcGx5Q2hhckNvbGxpc2lvbkdyb3VwcygpCglyZXN0b3JlQ2hhckNvbGxpc2lvbkdyb3VwcygpCglsb2NhbCBjaGFyID0gcGxheWVyLkNoYXJhY3RlcgoJaWYgbm90IGNoYXIgdGhlbiByZXR1cm4gZW5kCglsb2NhbCBzYXZlZCA9IHt9Cglmb3IgXywgZCBpbiBpcGFpcnMoY2hhcjpHZXREZXNjZW5kYW50cygpKSBkbwoJCWlmIGQ6SXNBKCJCYXNlUGFydCIpIHRoZW4KCQkJc2F2ZWRbZF0gPSBkLkNvbGxpc2lvbkdyb3VwCgkJCXBjYWxsKGZ1bmN0aW9uKCkKCQkJCWQuQ29sbGlzaW9uR3JvdXAgPSAiWFRXUGxheWVyTm9Db2xsaWRlIgoJCQllbmQpCgkJZW5kCgllbmQKCVBVU0hFUi5zYXZlZENoYXJHcm91cHMgPSBzYXZlZAplbmQKCmxvY2FsIGZ1bmN0aW9uIGNsZWFyUHVzaGVyKCkKCWlmIG5vdCBQVVNIRVIuYWN0aXZlIHRoZW4gcmV0dXJuIGVuZAoKCWxvY2FsIHAgPSBQVVNIRVIucGFydAoJaWYgcCBhbmQgcC5QYXJlbnQgdGhlbgoJCXBjYWxsKGZ1bmN0aW9uKCkKCQkJcC5Bc3NlbWJseUxpbmVhclZlbG9jaXR5ID0gVmVjdG9yMy56ZXJvCgkJCXAuQXNzZW1ibHlBbmd1bGFyVmVsb2NpdHkgPSBWZWN0b3IzLnplcm8KCQkJcC5UcmFuc3BhcmVuY3kgPSBQVVNIRVIuc2F2ZWRUcmFuc3BhcmVuY3kgb3IgMAoJCQlwLkNhbkNvbGxpZGUgPSBQVVNIRVIuc2F2ZWRDYW5Db2xsaWRlIH49IGZhbHNlCgkJCXAuTWFzc2xlc3MgPSBQVVNIRVIuc2F2ZWRNYXNzbGVzcyA9PSB0cnVlCgkJCWlmIFBVU0hFUi5zYXZlZENvbGxpc2lvbkdyb3VwIHRoZW4KCQkJCXAuQ29sbGlzaW9uR3JvdXAgPSBQVVNIRVIuc2F2ZWRDb2xsaXNpb25Hcm91cAoJCQllbmQKCQkJaWYgUFVTSEVSLnNhdmVkQ3VzdG9tUGh5c2ljcyB0aGVuCgkJCQlwLkN1c3RvbVBoeXNpY2FsUHJvcGVydGllcyA9IFBVU0hFUi5zYXZlZEN1c3RvbVBoeXNpY3MKCQkJZW5kCgkJCWlmIFBVU0hFUi5zYXZlZFNpemUgdGhlbgoJCQkJcC5TaXplID0gUFVTSEVSLnNhdmVkU2l6ZQoJCQllbmQKCQllbmQpCgllbmQKCglpZiBQVVNIRVIuam9pbnQgYW5kIFBVU0hFUi5zYXZlZEpvaW50UGFydDAgfj0gbmlsIHRoZW4KCQlwY2FsbChmdW5jdGlvbigpCgkJCVBVU0hFUi5qb2ludC5QYXJ0MCA9IFBVU0hFUi5zYXZlZEpvaW50UGFydDAKCQllbmQpCgllbmQKCglyZXN0b3JlQ2hhckNvbGxpc2lvbkdyb3VwcygpCgoJUFVTSEVSLmFjdGl2ZSA9IGZhbHNlCglQVVNIRVIucGFydCA9IG5pbAoJUFVTSEVSLmpvaW50ID0gbmlsCglQVVNIRVIuc2F2ZWRKb2ludFBhcnQwID0gbmlsCglQVVNIRVIuc2F2ZWRUcmFuc3BhcmVuY3kgPSBuaWwKCVBVU0hFUi5zYXZlZENhbkNvbGxpZGUgPSBuaWwKCVBVU0hFUi5zYXZlZE1hc3NsZXNzID0gbmlsCglQVVNIRVIuc2F2ZWRDb2xsaXNpb25Hcm91cCA9IG5pbAoJUFVTSEVSLnNhdmVkQ3VzdG9tUGh5c2ljcyA9IG5pbAoJUFVTSEVSLnNhdmVkU2l6ZSA9IG5pbAoJUFVTSEVSLnNhdmVkQ0ZyYW1lID0gbmlsCglQVVNIRVIudXBncmFkZVRhc2sgPSBmYWxzZQplbmQKCmxvY2FsIGZ1bmN0aW9uIHNldHVwUHVzaGVyKHRhcmdldFBhcnQpCgljbGVhclB1c2hlcigpCgoJbG9jYWwgY2hhciA9IHBsYXllci5DaGFyYWN0ZXIKCWlmIG5vdCBjaGFyIHRoZW4gcmV0dXJuIGZhbHNlIGVuZAoKCWxvY2FsIHBhcnQgPSBmaW5kUHVzaGVyUGFydChjaGFyKQoJaWYgbm90IHBhcnQgdGhlbiByZXR1cm4gZmFsc2UgZW5kCgoJbG9jYWwgam9pbnQgPSBmaW5kSm9pbnRGb3IoY2hhciwgcGFydCkKCWlmIG5vdCBqb2ludCB0aGVuIHJldHVybiBmYWxzZSBlbmQKCglQVVNIRVIuYWN0aXZlID0gdHJ1ZQoJUFVTSEVSLnBhcnQgPSBwYXJ0CglQVVNIRVIuam9pbnQgPSBqb2ludAoJUFVTSEVSLnNhdmVkSm9pbnRQYXJ0MCA9IGpvaW50LlBhcnQwCglQVVNIRVIuc2F2ZWRUcmFuc3BhcmVuY3kgPSBwYXJ0LlRyYW5zcGFyZW5jeQoJUFVTSEVSLnNhdmVkQ2FuQ29sbGlkZSA9IHBhcnQuQ2FuQ29sbGlkZQoJUFVTSEVSLnNhdmVkTWFzc2xlc3MgPSBwYXJ0Lk1hc3NsZXNzCglQVVNIRVIuc2F2ZWRDb2xsaXNpb25Hcm91cCA9IHBhcnQuQ29sbGlzaW9uR3JvdXAKCVBVU0hFUi5zYXZlZEN1c3RvbVBoeXNpY3MgPSBwYXJ0LkN1c3RvbVBoeXNpY2FsUHJvcGVydGllcwoJUFVTSEVSLnNhdmVkU2l6ZSA9IHBhcnQuU2l6ZQoJUFVTSEVSLnNhdmVkQ0ZyYW1lID0gcGFydC5DRnJhbWUKCglwY2FsbChmdW5jdGlvbigpIGpvaW50LlBhcnQwID0gbmlsIGVuZCkKCglwYXJ0LlRyYW5zcGFyZW5jeSA9IDEKCXBhcnQuQ2FuQ29sbGlkZSA9IHRydWUKCXBhcnQuTWFzc2xlc3MgPSBmYWxzZQoJcGNhbGwoZnVuY3Rpb24oKQoJCXBhcnQuQ3VzdG9tUGh5c2ljYWxQcm9wZXJ0aWVzID0gUGh5c2ljYWxQcm9wZXJ0aWVzLm5ldygyNSwgMC4zLCAwLjA1LCAxLCAxKQoJZW5kKQoJcGNhbGwoZnVuY3Rpb24oKQoJCXBhcnQuU2l6ZSA9IFZlY3RvcjMubmV3KDUsIDUsIDUpCgllbmQpCglwY2FsbChmdW5jdGlvbigpCgkJcGFydC5Db2xsaXNpb25Hcm91cCA9ICJYVFdQdXNoZXIiCgllbmQpCglwY2FsbChmdW5jdGlvbigpCgkJcGFydC5Bc3NlbWJseUxpbmVhclZlbG9jaXR5ID0gVmVjdG9yMy56ZXJvCgkJcGFydC5Bc3NlbWJseUFuZ3VsYXJWZWxvY2l0eSA9IFZlY3RvcjMuemVybwoJZW5kKQoJcGNhbGwoZnVuY3Rpb24oKQoJCXBhcnQ6U2V0TmV0d29ya093bmVyKHBsYXllcikKCWVuZCkKCglhcHBseUNoYXJDb2xsaXNpb25Hcm91cHMoKQoKCXJldHVybiB0cnVlCmVuZAoKbG9jYWwgZnVuY3Rpb24gdXBkYXRlUHVzaGVyKHBvcykKCWlmIG5vdCBQVVNIRVIuYWN0aXZlIG9yIG5vdCBQVVNIRVIucGFydCB0aGVuIHJldHVybiBlbmQKCWxvY2FsIHBhcnQgPSBQVVNIRVIucGFydAoJaWYgbm90IHBhcnQgb3Igbm90IHBhcnQuUGFyZW50IHRoZW4gcmV0dXJuIGVuZAoKCWxvY2FsIG93bmVyCglwY2FsbChmdW5jdGlvbigpIG93bmVyID0gcGFydDpHZXROZXR3b3JrT3duZXIoKSBlbmQpCglpZiBvd25lciB+PSBwbGF5ZXIgdGhlbgoJCXBjYWxsKGZ1bmN0aW9uKCkgcGFydDpTZXROZXR3b3JrT3duZXIocGxheWVyKSBlbmQpCgllbmQKCglsb2NhbCBkZWx0YSA9IHBvcyAtIHBhcnQuUG9zaXRpb24KCWxvY2FsIGRpc3QgPSBkZWx0YS5NYWduaXR1ZGUKCglsb2NhbCBzcGVlZAoJaWYgZGlzdCA8IDAuMiB0aGVuCgkJc3BlZWQgPSAwCgllbHNlCgkJc3BlZWQgPSBtYXRoLm1pbihkaXN0ICogMTYsIDIwMCkKCWVuZAoKCWlmIGRpc3QgPiAwLjAxIGFuZCBzcGVlZCA+IDAgdGhlbgoJCXBhcnQuQXNzZW1ibHlMaW5lYXJWZWxvY2l0eSA9IGRlbHRhLlVuaXQgKiBzcGVlZAoJZWxzZQoJCXBhcnQuQXNzZW1ibHlMaW5lYXJWZWxvY2l0eSA9IFZlY3RvcjMuemVybwoJZW5kCglwYXJ0LkFzc2VtYmx5QW5ndWxhclZlbG9jaXR5ID0gVmVjdG9yMy56ZXJvCmVuZAoKbG9jYWwgZnVuY3Rpb24gdHJ5UHVzaGVyVXBncmFkZShwYXJ0KQoJaWYgbm90IFBVU0hFUi5hY3RpdmUgdGhlbiByZXR1cm4gZW5kCglpZiBub3QgVEsudXNpbmdQdXNoZXIgdGhlbiByZXR1cm4gZW5kCglpZiBUSy5oZWxkIH49IHBhcnQgdGhlbiByZXR1cm4gZW5kCglpZiBnZXRDaGFyYWN0ZXJPZihwYXJ0KSB0aGVuIHJldHVybiBlbmQKCWlmIFBVU0hFUi51cGdyYWRlVGFzayB0aGVuIHJldHVybiBlbmQKCglQVVNIRVIudXBncmFkZVRhc2sgPSB0cnVlCgl0YXNrLnNwYXduKGZ1bmN0aW9uKCkKCQlsb2NhbCBjbGFpbWVkID0gZmFsc2UKCQlpZiBub3QgREFTSC5hY3RpdmUgdGhlbgoJCQljbGFpbWVkID0gdHJ5RGlyZWN0Q2xhaW0ocGFydCkKCQkJaWYgbm90IGNsYWltZWQgdGhlbgoJCQkJY2xhaW1lZCA9IHRyeU93bmVyc2hpcERhc2gocGFydCkKCQkJZW5kCgkJZW5kCgkJUFVTSEVSLnVwZ3JhZGVUYXNrID0gZmFsc2UKCQlpZiBjbGFpbWVkIGFuZCBUSy5oZWxkID09IHBhcnQgYW5kIFRLLnVzaW5nUHVzaGVyIHRoZW4KCQkJVEsudXNpbmdQdXNoZXIgPSBmYWxzZQoJCQljbGVhclB1c2hlcigpCgkJZW5kCgllbmQpCmVuZAoKbG9jYWwgZnVuY3Rpb24gYXBwbHlWZWxvY2l0eURyYWcocGFydCwgdGFyZ2V0UG9zLCBkdCkKCWxvY2FsIGRlbHRhID0gdGFyZ2V0UG9zIC0gcGFydC5Qb3NpdGlvbgoJbG9jYWwgZGlzdCA9IGRlbHRhLk1hZ25pdHVkZQoKCWxvY2FsIGRlc2lyZWRWZWwgPSBWZWN0b3IzLnplcm8KCWlmIGRpc3QgPiAwLjA1IHRoZW4KCQlkZXNpcmVkVmVsID0gZGVsdGEgKiBUSy52ZWxvY2l0eUdhaW4KCQlsb2NhbCBtYXhWID0gVEsubWF4U3BlZWQKCQlpZiBkZXNpcmVkVmVsLk1hZ25pdHVkZSA+IG1heFYgdGhlbgoJCQlkZXNpcmVkVmVsID0gZGVzaXJlZFZlbC5Vbml0ICogbWF4VgoJCWVuZAoJZW5kCgoJbG9jYWwgYSA9IDEgLSBtYXRoLmV4cCgtZHQgKiAyNSkKCXBhcnQuQXNzZW1ibHlMaW5lYXJWZWxvY2l0eSA9IHBhcnQuQXNzZW1ibHlMaW5lYXJWZWxvY2l0eTpMZXJwKGRlc2lyZWRWZWwsIGEpCgoJbG9jYWwgYXYgPSBWZWN0b3IzLnplcm8KCWxvY2FsIHNwZWVkID0gbWF0aC5yYWQoVEsucm90YXRlU3BlZWQpCglpZiBUSy5yb3RSaWdodCB0aGVuCgkJYXYgPSBhdiArIFZlY3RvcjMubmV3KDAsIC1zcGVlZCwgMCkKCWVuZAoJaWYgVEsucm90VXAgdGhlbgoJCWF2ID0gYXYgKyBWZWN0b3IzLm5ldyhzcGVlZCwgMCwgMCkKCWVuZAoJaWYgVEsucm90UmlnaHQgb3IgVEsucm90VXAgdGhlbgoJCXBhcnQuQXNzZW1ibHlBbmd1bGFyVmVsb2NpdHkgPSBwYXJ0LkFzc2VtYmx5QW5ndWxhclZlbG9jaXR5OkxlcnAoYXYsIGEpCgllbHNlCgkJcGFydC5Bc3NlbWJseUFuZ3VsYXJWZWxvY2l0eSA9IHBhcnQuQXNzZW1ibHlBbmd1bGFyVmVsb2NpdHk6TGVycChWZWN0b3IzLnplcm8sIGEgKiAwLjUpCgllbmQKZW5kCgpsb2NhbCBmdW5jdGlvbiB1cGRhdGVGWFB1bHNlKHBhcnQpCglpZiBub3QgRlguYWN0aXZlIG9yIG5vdCBGWC5pdGVtcyB0aGVuIHJldHVybiBlbmQKCglsb2NhbCBzcGVlZCA9IHBhcnQuQXNzZW1ibHlMaW5lYXJWZWxvY2l0eS5NYWduaXR1ZGUKCWxvY2FsIHNwZWVkRmFjdG9yID0gbWF0aC5jbGFtcChzcGVlZCAvIDYwLCAwLCAxKQoJbG9jYWwgZWxhcHNlZCA9IHRpY2soKSAtIEZYLml0ZW1zLnN0YXJ0VGltZQoJbG9jYWwgd29iYmxlID0gMC45MiArIDAuMDggKiBtYXRoLnNpbihlbGFwc2VkICogMTApCglsb2NhbCBmbGlja2VyID0gMC45NyArIDAuMDMgKiBtYXRoLnNpbihlbGFwc2VkICogMzEgKyAxLjcpCglsb2NhbCBzY2FsZSA9ICgwLjU1ICsgMC42ICogc3BlZWRGYWN0b3IpICogd29iYmxlICogZmxpY2tlcgoKCWxvY2FsIHRyYWlscyA9IEZYLml0ZW1zLnRyYWlscwoJbG9jYWwgYmFzZXMgPSBGWC5pdGVtcy5iYXNlV2lkdGhzCglmb3IgaSA9IDEsICN0cmFpbHMgZG8KCQlsb2NhbCBiID0gYmFzZXNbaV0gKiBzY2FsZQoJCXRyYWlsc1tpXS5XaWR0aFNjYWxlID0gTnVtYmVyU2VxdWVuY2UubmV3KHsKCQkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMCwgMC4wNSAqIGIpLAoJCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjEsIDAuNTUgKiBiKSwKCQkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMC4yNSwgMC45NSAqIGIpLAoJCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjU1LCAwLjc1ICogYiksCgkJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDAuOCwgMC4zNSAqIGIpLAoJCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjk1LCAwLjA4ICogYiksCgkJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDEsIDApLAoJCX0pCgllbmQKZW5kCgpsb2NhbCBmdW5jdGlvbiBiZWdpbkhvbGQocGFydCkKCWlmIFRLLmhlbGQgdGhlbiByZXR1cm4gZW5kCgoJbG9jYWwgaXNOUEMgPSBnZXRDaGFyYWN0ZXJPZihwYXJ0KSB+PSBuaWwKCglUSy5oZWxkID0gcGFydAoJVEsudXNpbmdQdXNoZXIgPSBmYWxzZQoKCWxvY2FsIGNhbSA9IHdvcmtzcGFjZS5DdXJyZW50Q2FtZXJhCglpZiBjYW0gdGhlbgoJCWxvY2FsIGNkID0gKHBhcnQuUG9zaXRpb24gLSBjYW0uQ0ZyYW1lLlBvc2l0aW9uKS5NYWduaXR1ZGUKCQlUSy5kaXN0YW5jZSA9IG1hdGguY2xhbXAoY2QsIFRLLm1pbkRpc3RhbmNlLCBUSy5tYXhEaXN0YW5jZSkKCWVuZAoKCVRLLnNhdmVkTWluID0gcGxheWVyLkNhbWVyYU1pblpvb21EaXN0YW5jZQoJVEsuc2F2ZWRNYXggPSBwbGF5ZXIuQ2FtZXJhTWF4Wm9vbURpc3RhbmNlCglpZiBjYW0gdGhlbgoJCWxvY2FsIHpvb20gPSAoY2FtLkNGcmFtZS5Qb3NpdGlvbiAtIGNhbS5Gb2N1cy5Qb3NpdGlvbikuTWFnbml0dWRlCgkJem9vbSA9IG1hdGgubWF4KHpvb20sIDAuNSkKCQlwbGF5ZXIuQ2FtZXJhTWluWm9vbURpc3RhbmNlID0gem9vbQoJCXBsYXllci5DYW1lcmFNYXhab29tRGlzdGFuY2UgPSB6b29tCgllbmQKCglsb2NhbCBvd25lZCA9IGZhbHNlCglpZiBub3QgaXNOUEMgdGhlbgoJCW93bmVkID0gdHJ5VGFrZU93bmVyc2hpcChwYXJ0KQoJZW5kCgoJaWYgbm90IG93bmVkIHRoZW4KCQlpZiBzZXR1cFB1c2hlcihwYXJ0KSB0aGVuCgkJCVRLLnVzaW5nUHVzaGVyID0gdHJ1ZQoJCWVuZAoJZW5kCgoJY3JlYXRlRlgocGFydCkKCglpZiBpc05QQyB0aGVuCgkJaGlnaGxpZ2h0LkZpbGxDb2xvciA9IG5wY0ZpbGwKCQloaWdobGlnaHQuT3V0bGluZUNvbG9yID0gbnBjT3V0bGluZQoJZWxzZQoJCWhpZ2hsaWdodC5GaWxsQ29sb3IgPSBncmFiRmlsbAoJCWhpZ2hsaWdodC5PdXRsaW5lQ29sb3IgPSBncmFiT3V0bGluZQoJZW5kCgloaWdobGlnaHQuQWRvcm5lZSA9IHBhcnQKCWhpZ2hsaWdodC5FbmFibGVkID0gdHJ1ZQplbmQKCmxvY2FsIGZ1bmN0aW9uIGJlZ2luUmVsZWFzZVNldHRsZShoZWxkKQoJdGFzay5zcGF3bihmdW5jdGlvbigpCgkJbG9jYWwgc2V0dGxlZEZyYW1lcyA9IDAKCQlsb2NhbCBzdGFydFRpbWUgPSB0aWNrKCkKCQl3aGlsZSB0aWNrKCkgLSBzdGFydFRpbWUgPCAxMiBkbwoJCQlpZiBub3QgaGVsZCBvciBub3QgaGVsZC5QYXJlbnQgdGhlbiByZXR1cm4gZW5kCgkJCWlmIGhlbGQuQW5jaG9yZWQgdGhlbiBicmVhayBlbmQKCgkJCWxvY2FsIHYgPSBoZWxkLkFzc2VtYmx5TGluZWFyVmVsb2NpdHkuTWFnbml0dWRlCgkJCWxvY2FsIGF2ID0gaGVsZC5Bc3NlbWJseUFuZ3VsYXJWZWxvY2l0eS5NYWduaXR1ZGUKCQkJaWYgdiA8IDEuNSBhbmQgYXYgPCAxLjUgdGhlbgoJCQkJc2V0dGxlZEZyYW1lcyArPSAxCgkJCQlpZiBzZXR0bGVkRnJhbWVzID49IDE1IHRoZW4KCQkJCQlicmVhawoJCQkJZW5kCgkJCWVsc2UKCQkJCXNldHRsZWRGcmFtZXMgPSAwCgkJCWVuZAoJCQl0YXNrLndhaXQoMC4xKQoJCWVuZAoJCXBjYWxsKGZ1bmN0aW9uKCkKCQkJaWYgaGVsZCBhbmQgaGVsZC5QYXJlbnQgdGhlbgoJCQkJaGVsZDpTZXROZXR3b3JrT3duZXJzaGlwQXV0bygpCgkJCWVuZAoJCWVuZCkKCWVuZCkKZW5kCgpsb2NhbCBmdW5jdGlvbiByZWxlYXNlSG9sZCgpCglpZiBub3QgVEsuaGVsZCB0aGVuIHJldHVybiBlbmQKCWxvY2FsIGhlbGQgPSBUSy5oZWxkCglUSy5oZWxkID0gbmlsCglUSy5yb3RSaWdodCA9IGZhbHNlCglUSy5yb3RVcCA9IGZhbHNlCgoJbG9jYWwgd2FzUHVzaGVyID0gVEsudXNpbmdQdXNoZXIKCWxvY2FsIHdhc05QQyA9IGdldENoYXJhY3Rlck9mKGhlbGQpIH49IG5pbAoJVEsudXNpbmdQdXNoZXIgPSBmYWxzZQoKCWZhZGVPdXRGWCgpCgljbGVhclB1c2hlcigpCgoJaWYgbm90IHdhc1B1c2hlciBhbmQgbm90IHdhc05QQyB0aGVuCgkJYmVnaW5SZWxlYXNlU2V0dGxlKGhlbGQpCgllbmQKCglpZiBUSy5zYXZlZE1pbiB0aGVuCgkJcGxheWVyLkNhbWVyYU1pblpvb21EaXN0YW5jZSA9IFRLLnNhdmVkTWluCgkJcGxheWVyLkNhbWVyYU1heFpvb21EaXN0YW5jZSA9IFRLLnNhdmVkTWF4CgkJVEsuc2F2ZWRNaW4gPSBuaWwKCQlUSy5zYXZlZE1heCA9IG5pbAoJZW5kCgoJaGlnaGxpZ2h0LkZpbGxDb2xvciA9IGhvdmVyRmlsbAoJaGlnaGxpZ2h0Lk91dGxpbmVDb2xvciA9IGhvdmVyT3V0bGluZQplbmQKCmxvY2FsIGZ1bmN0aW9uIG9uUmVuZGVyKGR0KQoJaWYgbm90IFRLLmVuYWJsZWQgdGhlbiByZXR1cm4gZW5kCgljYW1lcmEgPSB3b3Jrc3BhY2UuQ3VycmVudENhbWVyYQoJaWYgbm90IGNhbWVyYSB0aGVuIHJldHVybiBlbmQKCglpZiBUSy5oZWxkIHRoZW4KCQlsb2NhbCBwYXJ0ID0gVEsuaGVsZAoJCWlmIG5vdCBwYXJ0IG9yIG5vdCBwYXJ0LlBhcmVudCB0aGVuCgkJCXJlbGVhc2VIb2xkKCkKCQkJaGlnaGxpZ2h0LkVuYWJsZWQgPSBmYWxzZQoJCQloaWdobGlnaHQuQWRvcm5lZSA9IG5pbAoJCQlyZXR1cm4KCQllbmQKCgkJbG9jYWwgaXNOUEMgPSBnZXRDaGFyYWN0ZXJPZihwYXJ0KSB+PSBuaWwKCgkJaWYgbm90IGlzTlBDIHRoZW4KCQkJaWYgcGFydC5BbmNob3JlZCB0aGVuCgkJCQlyZWxlYXNlSG9sZCgpCgkJCQloaWdobGlnaHQuRW5hYmxlZCA9IGZhbHNlCgkJCQloaWdobGlnaHQuQWRvcm5lZSA9IG5pbAoJCQkJcmV0dXJuCgkJCWVuZAoKCQkJaWYgbm90IFRLLnVzaW5nUHVzaGVyIHRoZW4KCQkJCWxvY2FsIG93bmVkID0gZmFsc2UKCQkJCXBjYWxsKGZ1bmN0aW9uKCkKCQkJCQlsb2NhbCByb290ID0gcGFydC5Bc3NlbWJseVJvb3RQYXJ0IG9yIHBhcnQKCQkJCQlvd25lZCA9IChyb290OkdldE5ldHdvcmtPd25lcigpID09IHBsYXllcikKCQkJCWVuZCkKCQkJCWlmIG5vdCBvd25lZCB0aGVuCgkJCQkJcGNhbGwoZnVuY3Rpb24oKQoJCQkJCQlsb2NhbCByb290ID0gcGFydC5Bc3NlbWJseVJvb3RQYXJ0IG9yIHBhcnQKCQkJCQkJcm9vdDpTZXROZXR3b3JrT3duZXIocGxheWVyKQoJCQkJCWVuZCkKCQkJCWVuZAoJCQllbmQKCQllbmQKCgkJbG9jYWwgcmF5ID0gZ2V0TW91c2VSYXkoKQoJCWlmIHJheSB0aGVuCgkJCWxvY2FsIHRhcmdldFBvcyA9IHJheS5PcmlnaW4gKyByYXkuRGlyZWN0aW9uICogVEsuZGlzdGFuY2UKCgkJCWlmIFRLLnVzaW5nUHVzaGVyIHRoZW4KCQkJCXVwZGF0ZVB1c2hlcih0YXJnZXRQb3MpCgkJCQl0cnlQdXNoZXJVcGdyYWRlKHBhcnQpCgkJCWVsc2UKCQkJCWFwcGx5VmVsb2NpdHlEcmFnKHBhcnQsIHRhcmdldFBvcywgZHQpCgkJCWVuZAoJCWVuZAoKCQl1cGRhdGVGWFB1bHNlKHBhcnQpCgoJCWhpZ2hsaWdodC5BZG9ybmVlID0gcGFydAoJCWhpZ2hsaWdodC5FbmFibGVkID0gdHJ1ZQoJZWxzZQoJCWxvY2FsIHRhcmdldCA9IGdldFRhcmdldCgpCgkJVEsuaG92ZXJUYXJnZXQgPSB0YXJnZXQKCQlpZiB0YXJnZXQgdGhlbgoJCQlpZiBnZXRDaGFyYWN0ZXJPZih0YXJnZXQpIHRoZW4KCQkJCWhpZ2hsaWdodC5GaWxsQ29sb3IgPSBucGNGaWxsCgkJCQloaWdobGlnaHQuT3V0bGluZUNvbG9yID0gbnBjT3V0bGluZQoJCQllbHNlCgkJCQloaWdobGlnaHQuRmlsbENvbG9yID0gaG92ZXJGaWxsCgkJCQloaWdobGlnaHQuT3V0bGluZUNvbG9yID0gaG92ZXJPdXRsaW5lCgkJCWVuZAoJCQloaWdobGlnaHQuQWRvcm5lZSA9IHRhcmdldAoJCQloaWdobGlnaHQuRW5hYmxlZCA9IHRydWUKCQllbHNlCgkJCWhpZ2hsaWdodC5FbmFibGVkID0gZmFsc2UKCQkJaGlnaGxpZ2h0LkFkb3JuZWUgPSBuaWwKCQllbmQKCWVuZAplbmQKCmxvY2FsIGZ1bmN0aW9uIG9uSW5wdXRCZWdhbihpbnB1dCwgZ3ApCglpZiBub3QgVEsuZW5hYmxlZCB0aGVuIHJldHVybiBlbmQKCWlmIGdwIHRoZW4gcmV0dXJuIGVuZAoJaWYgaW5wdXQuVXNlcklucHV0VHlwZSA9PSBFbnVtLlVzZXJJbnB1dFR5cGUuTW91c2VCdXR0b24xIHRoZW4KCQlsb2NhbCB0YXJnZXQgPSBnZXRUYXJnZXQoKQoJCWlmIHRhcmdldCB0aGVuCgkJCWJlZ2luSG9sZCh0YXJnZXQpCgkJZW5kCgllbHNlaWYgaW5wdXQuS2V5Q29kZSA9PSBFbnVtLktleUNvZGUuUiB0aGVuCgkJaWYgVEsuaGVsZCBhbmQgbm90IFRLLnVzaW5nUHVzaGVyIHRoZW4gVEsucm90UmlnaHQgPSB0cnVlIGVuZAoJZWxzZWlmIGlucHV0LktleUNvZGUgPT0gRW51bS5LZXlDb2RlLlQgdGhlbgoJCWlmIFRLLmhlbGQgYW5kIG5vdCBUSy51c2luZ1B1c2hlciB0aGVuIFRLLnJvdFVwID0gdHJ1ZSBlbmQKCWVuZAplbmQKCmxvY2FsIGZ1bmN0aW9uIG9uSW5wdXRFbmRlZChpbnB1dCkKCWlmIG5vdCBUSy5lbmFibGVkIHRoZW4gcmV0dXJuIGVuZAoJaWYgaW5wdXQuVXNlcklucHV0VHlwZSA9PSBFbnVtLlVzZXJJbnB1dFR5cGUuTW91c2VCdXR0b24xIHRoZW4KCQlyZWxlYXNlSG9sZCgpCgllbHNlaWYgaW5wdXQuS2V5Q29kZSA9PSBFbnVtLktleUNvZGUuUiB0aGVuCgkJVEsucm90UmlnaHQgPSBmYWxzZQoJZWxzZWlmIGlucHV0LktleUNvZGUgPT0gRW51bS5LZXlDb2RlLlQgdGhlbgoJCVRLLnJvdFVwID0gZmFsc2UKCWVuZAplbmQKCmxvY2FsIGZ1bmN0aW9uIG9uSW5wdXRDaGFuZ2VkKGlucHV0KQoJaWYgbm90IFRLLmVuYWJsZWQgdGhlbiByZXR1cm4gZW5kCglpZiBub3QgVEsuaGVsZCB0aGVuIHJldHVybiBlbmQKCWlmIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLk1vdXNlV2hlZWwgdGhlbgoJCVRLLmRpc3RhbmNlID0gbWF0aC5jbGFtcChUSy5kaXN0YW5jZSArIGlucHV0LlBvc2l0aW9uLlogKiBUSy5zY3JvbGxTdGVwLCBUSy5taW5EaXN0YW5jZSwgVEsubWF4RGlzdGFuY2UpCgllbmQKZW5kCgpsb2NhbCBmdW5jdGlvbiBvbkNoYXJBZGRlZChfY2hhcikKCWlmIFRLLmhlbGQgdGhlbgoJCXJlbGVhc2VIb2xkKCkKCWVuZAoJY2xlYXJQdXNoZXIoKQoJZGVzdHJveUZYKCkKZW5kCgpsb2NhbCBmdW5jdGlvbiBzZXRUSyhvbikKCWlmIG9uID09IFRLLmVuYWJsZWQgdGhlbiByZXR1cm4gZW5kCglUSy5lbmFibGVkID0gb24KCglpZiBvbiB0aGVuCgkJVEsuaW5wdXRCZWdhbiA9IFVzZXJJbnB1dFNlcnZpY2UuSW5wdXRCZWdhbjpDb25uZWN0KG9uSW5wdXRCZWdhbikKCQlUSy5pbnB1dEVuZGVkID0gVXNlcklucHV0U2VydmljZS5JbnB1dEVuZGVkOkNvbm5lY3Qob25JbnB1dEVuZGVkKQoJCVRLLmlucHV0Q2hhbmdlZCA9IFVzZXJJbnB1dFNlcnZpY2UuSW5wdXRDaGFuZ2VkOkNvbm5lY3Qob25JbnB1dENoYW5nZWQpCgkJVEsucmVuZGVyQ29ubiA9IFJ1blNlcnZpY2UuUmVuZGVyU3RlcHBlZDpDb25uZWN0KG9uUmVuZGVyKQoJCVRLLmNoYXJDb25uID0gcGxheWVyLkNoYXJhY3RlckFkZGVkOkNvbm5lY3Qob25DaGFyQWRkZWQpCgllbHNlCgkJcmVsZWFzZUhvbGQoKQoJCWNsZWFyUHVzaGVyKCkKCQlkZXN0cm95RlgoKQoJCWlmIFRLLnJlbmRlckNvbm4gdGhlbiBUSy5yZW5kZXJDb25uOkRpc2Nvbm5lY3QoKSBUSy5yZW5kZXJDb25uID0gbmlsIGVuZAoJCWlmIFRLLmlucHV0QmVnYW4gdGhlbiBUSy5pbnB1dEJlZ2FuOkRpc2Nvbm5lY3QoKSBUSy5pbnB1dEJlZ2FuID0gbmlsIGVuZAoJCWlmIFRLLmlucHV0RW5kZWQgdGhlbiBUSy5pbnB1dEVuZGVkOkRpc2Nvbm5lY3QoKSBUSy5pbnB1dEVuZGVkID0gbmlsIGVuZAoJCWlmIFRLLmlucHV0Q2hhbmdlZCB0aGVuIFRLLmlucHV0Q2hhbmdlZDpEaXNjb25uZWN0KCkgVEsuaW5wdXRDaGFuZ2VkID0gbmlsIGVuZAoJCWlmIFRLLmNoYXJDb25uIHRoZW4gVEsuY2hhckNvbm46RGlzY29ubmVjdCgpIFRLLmNoYXJDb25uID0gbmlsIGVuZAoJCWhpZ2hsaWdodC5FbmFibGVkID0gZmFsc2UKCQloaWdobGlnaHQuQWRvcm5lZSA9IG5pbAoJCVRLLmhvdmVyVGFyZ2V0ID0gbmlsCgkJVEsucm90UmlnaHQgPSBmYWxzZQoJCVRLLnJvdFVwID0gZmFsc2UKCWVuZAplbmQKCkdbU1RPUF9LRVldID0gZnVuY3Rpb24oKQoJc2V0VEsoZmFsc2UpCglpZiBoaWdobGlnaHQgdGhlbgoJCWhpZ2hsaWdodDpEZXN0cm95KCkKCQloaWdobGlnaHQgPSBuaWwKCWVuZAplbmQKCmxvY2FsIGxhc3QgPSAwCgpsb2NhbCBmdW5jdGlvbiBmbGlwKCkKCWlmIHRpY2soKSAtIGxhc3QgPCAwLjEgdGhlbiByZXR1cm4gZW5kCglsYXN0ID0gdGljaygpCgoJc2V0VEsobm90IFRLLmVuYWJsZWQpCgoJaWYgRy5YVFdfVEtfRkxJUF9FWFQgdGhlbgoJCUcuWFRXX1RLX0ZMSVBfRVhUKFRLLmVuYWJsZWQpCgllbHNlCgkJVHdlZW5TZXJ2aWNlOkNyZWF0ZShhbmltLCBUd2VlbkluZm8ubmV3KDAuMjUsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uT3V0KSwgewoJCQlWYWx1ZSA9IFRLLmVuYWJsZWQgYW5kIDEgb3IgMAoJCX0pOlBsYXkoKQoJZW5kCmVuZAoKaWYgaGFzR1VJIHRoZW4KCWxvY2FsIGZ1bmN0aW9uIHByZXNzKGlucHV0KQoJCWlmIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLk1vdXNlQnV0dG9uMQoJCQlvciBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Ub3VjaCB0aGVuCgkJCWZsaXAoKQoJCWVuZAoJZW5kCgoJYmFsbHMuSW5wdXRCZWdhbjpDb25uZWN0KHByZXNzKQoJcm93LklucHV0QmVnYW46Q29ubmVjdChwcmVzcykKZWxzZQoJc2V0VEsodHJ1ZSkKCXByaW50KCJbWFRXIEN1cnNvciBUS10gTG9hZGVkLiBSaWdodCBTaGlmdCB0byB0b2dnbGUuIikKCVVzZXJJbnB1dFNlcnZpY2UuSW5wdXRCZWdhbjpDb25uZWN0KGZ1bmN0aW9uKGlucHV0LCBncCkKCQlpZiBncCB0aGVuIHJldHVybiBlbmQKCQlpZiBpbnB1dC5LZXlDb2RlID09IEVudW0uS2V5Q29kZS5SaWdodFNoaWZ0IHRoZW4KCQkJZmxpcCgpCgkJCXByaW50KCJbWFRXIEN1cnNvciBUS10gIiAuLiAoVEsuZW5hYmxlZCBhbmQgIk9OIiBvciAiT0ZGIikpCgkJZW5kCgllbmQpCmVuZAplbmQsIGZ1bmN0aW9uKGUpCiAgICBsb2NhbCB0YiA9ICIiCiAgICBwY2FsbChmdW5jdGlvbigpIHRiID0gZGVidWcudHJhY2ViYWNrKCIiLCAyKSBlbmQpCiAgICByZXR1cm4gdG9zdHJpbmcoZSkgLi4gIlxuIiAuLiB0YgplbmQpCmlmIG5vdCBfX3h0d19vayB0aGVuCiAgICBsb2NhbCBlcnJTdHIgPSB0b3N0cmluZyhfX3h0d19lcnIpCiAgICBpZiBfX3h0d19zZWxmIGFuZCBfX3h0d19zZWxmLlNldEF0dHJpYnV0ZSB0aGVuCiAgICAgICAgcGNhbGwoZnVuY3Rpb24oKSBfX3h0d19zZWxmOlNldEF0dHJpYnV0ZSgieHR3X2Vycm9yIiwgZXJyU3RyKSBlbmQpCiAgICBlbmQKICAgIHBjYWxsKGZ1bmN0aW9uKCkgd2FybigiW3h0d10gRkFJTDogIiAuLiBfX3h0d19uYW1lIC4uICIgKCIgLi4gX194dHdfY2xzIC4uICIpOiAiIC4uIGVyclN0cikgZW5kKQplbmQ=")
    local fn, cerr = loadstring(src, "@xtw:" .. tostring(s_44.Name))
    if not fn then
        compiledFail = compiledFail + 1
        compileErrors[#compileErrors + 1] = "Function (LocalScript): " .. tostring(cerr)
    else
        compiled = compiled + 1
        pcall(function() s_44.Source = src end)
        pcall(function() s_44.Parent = n[43] end)
        pcall(function() s_44.Disabled = false end)
    end
end

print(string.format("[xtw] pre-compile: %d ok, %d failed", compiled, compiledFail))
if compiledFail > 0 then
    warn("[xtw] COMPILE FAILURES:")
    for _, m in ipairs(compileErrors) do warn("[xtw]   " .. m) end
end

task.wait(0.8)

-- Manually run scripts whose wrapper has not executed yet
do
    local inst = n[2]
    local hasRan = false
    pcall(function() hasRan = inst:GetAttribute("xtw_ran") and true or false end)
    if not hasRan then
        local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIlVJQ29udHJvbGxlciIsICJMb2NhbFNjcmlwdCIKbG9jYWwgX194dHdfc2VsZiA9IG5pbApwY2FsbChmdW5jdGlvbigpIF9feHR3X3NlbGYgPSBzY3JpcHQgZW5kKQppZiBfX3h0d19zZWxmIGFuZCBfX3h0d19zZWxmLlNldEF0dHJpYnV0ZSB0aGVuCiAgICBwY2FsbChmdW5jdGlvbigpIF9feHR3X3NlbGY6U2V0QXR0cmlidXRlKCJ4dHdfcmFuIiwgdHJ1ZSkgZW5kKQplbmQKbG9jYWwgX194dHdfb2ssIF9feHR3X2VyciA9IHhwY2FsbChmdW5jdGlvbigpCmxvY2FsIFBsYXllcnMgPSBnYW1lOkdldFNlcnZpY2UoIlBsYXllcnMiKQpsb2NhbCBVc2VySW5wdXRTZXJ2aWNlID0gZ2FtZTpHZXRTZXJ2aWNlKCJVc2VySW5wdXRTZXJ2aWNlIikKbG9jYWwgTG9jYWxQbGF5ZXIgPSBQbGF5ZXJzLkxvY2FsUGxheWVyIG9yIFBsYXllcnMuUGxheWVyQWRkZWQ6V2FpdCgpCgotLSA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KLS0gQ09ORklHOiBzZXQgdGhpcyB0byB0aGUgZXhhY3QgTmFtZSBvZiB5b3VyIFNjcmVlbkd1aS4KLS0gTGVhdmUgbmlsIHRvIGF1dG8tZmluZCBpdCAobG9va3MgZm9yIGEgU2NyZWVuR3VpIHRoYXQgaGFzIGEKLS0gIk1vZHVsZXMiIGZvbGRlciB3aXRoIHRoZSBleHBlY3RlZCBNb2R1bGVTY3JpcHRzKS4KLS0gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CmxvY2FsIFNDUkVFTl9HVUlfTkFNRSA9IG5pbAoKLS0gLS0tLS0tLS0tLSBGSU5EIFRIRSBTQ1JFRU4gR1VJIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmxvY2FsIGZ1bmN0aW9uIGZpbmRTY3JlZW5HdWkoKQoJbG9jYWwgcGcgPSBMb2NhbFBsYXllcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlBsYXllckd1aSIpCglpZiBub3QgcGcgdGhlbgoJCXBnID0gTG9jYWxQbGF5ZXI6V2FpdEZvckNoaWxkKCJQbGF5ZXJHdWkiLCAxMCkKCWVuZAoJaWYgbm90IHBnIHRoZW4gcmV0dXJuIG5pbCBlbmQKCgktLSBFeHBsaWNpdCBuYW1lIGZpcnN0CglpZiBTQ1JFRU5fR1VJX05BTUUgdGhlbgoJCWxvY2FsIGcgPSBwZzpGaW5kRmlyc3RDaGlsZChTQ1JFRU5fR1VJX05BTUUpCgkJaWYgZyBhbmQgZzpJc0EoIlNjcmVlbkd1aSIpIHRoZW4gcmV0dXJuIGcgZW5kCgllbmQKCgktLSBBdXRvOiBhIFNjcmVlbkd1aSB0aGF0IGhhcyBNb2R1bGVzIHdpdGggdGhlIGV4cGVjdGVkIGNoaWxkcmVuCglsb2NhbCByZXF1aXJlZE1vZHVsZXMgPSB7CgkJIkhlbHBlcnMiLCAiVGVsZW1ldHJ5IiwgIkRyYWdDb250cm9sbGVyIiwgIlRhYnNDb250cm9sbGVyIiwKCQkiRGFzaGJvYXJkIiwgIkFkZG9uc1N0b3JlIiwgIlZpc3VhbHMiLCAiU2V0dGluZ3MiLAoJfQoKCWxvY2FsIGJlc3QsIGJlc3RTY29yZSA9IG5pbCwgMAoJZm9yIF8sIGcgaW4gaXBhaXJzKHBnOkdldENoaWxkcmVuKCkpIGRvCgkJaWYgZzpJc0EoIlNjcmVlbkd1aSIpIHRoZW4KCQkJbG9jYWwgbW9kdWxlcyA9IGc6RmluZEZpcnN0Q2hpbGQoIk1vZHVsZXMiKQoJCQlpZiBtb2R1bGVzIHRoZW4KCQkJCWxvY2FsIHNjb3JlID0gMAoJCQkJZm9yIF8sIG5hbWUgaW4gaXBhaXJzKHJlcXVpcmVkTW9kdWxlcykgZG8KCQkJCQlpZiBtb2R1bGVzOkZpbmRGaXJzdENoaWxkKG5hbWUpIHRoZW4KCQkJCQkJc2NvcmUgKz0gMQoJCQkJCWVuZAoJCQkJZW5kCgkJCQlpZiBzY29yZSA+IGJlc3RTY29yZSB0aGVuCgkJCQkJYmVzdCwgYmVzdFNjb3JlID0gZywgc2NvcmUKCQkJCWVuZAoJCQkJLS0gUGVyZmVjdCBtYXRjaDogYmFpbCBlYXJseQoJCQkJaWYgc2NvcmUgPT0gI3JlcXVpcmVkTW9kdWxlcyB0aGVuCgkJCQkJcmV0dXJuIGcKCQkJCWVuZAoJCQllbmQKCQllbmQKCWVuZAoJcmV0dXJuIGJlc3QKZW5kCgpsb2NhbCBTY3JlZW5HdWkgPSBmaW5kU2NyZWVuR3VpKCkKaWYgbm90IFNjcmVlbkd1aSB0aGVuCgl3YXJuKCJbTG9hZF0gQ291bGQgbm90IGZpbmQgdGhlIFNjcmVlbkd1aS4gU2V0IFNDUkVFTl9HVUlfTkFNRSBhdCB0aGUgdG9wIHRvIGl0cyBleGFjdCBOYW1lLiIpCglyZXR1cm4KZW5kCgpwcmludCgiW0xvYWRdIFVzaW5nIFNjcmVlbkd1aTogIiAuLiBTY3JlZW5HdWk6R2V0RnVsbE5hbWUoKSkKCi0tIC0tLS0tLS0tLS0gUkVTVCBPRiBUSEUgU0NSSVBUICh1bmNoYW5nZWQpIC0tLS0tLS0tLS0tLS0tLS0tLS0KbG9jYWwgTW9kdWxlcyA9IFNjcmVlbkd1aTpXYWl0Rm9yQ2hpbGQoIk1vZHVsZXMiKQoKbG9jYWwgSGVscGVycyAgICAgICAgPSByZXF1aXJlKE1vZHVsZXM6V2FpdEZvckNoaWxkKCJIZWxwZXJzIikpCmxvY2FsIFRlbGVtZXRyeSAgICAgID0gcmVxdWlyZShNb2R1bGVzOldhaXRGb3JDaGlsZCgiVGVsZW1ldHJ5IikpCmxvY2FsIERyYWdDb250cm9sbGVyID0gcmVxdWlyZShNb2R1bGVzOldhaXRGb3JDaGlsZCgiRHJhZ0NvbnRyb2xsZXIiKSkKbG9jYWwgVGFic0NvbnRyb2xsZXIgPSByZXF1aXJlKE1vZHVsZXM6V2FpdEZvckNoaWxkKCJUYWJzQ29udHJvbGxlciIpKQpsb2NhbCBEYXNoYm9hcmQgICAgICA9IHJlcXVpcmUoTW9kdWxlczpXYWl0Rm9yQ2hpbGQoIkRhc2hib2FyZCIpKQpsb2NhbCBBZGRvbnNTdG9yZSAgICA9IHJlcXVpcmUoTW9kdWxlczpXYWl0Rm9yQ2hpbGQoIkFkZG9uc1N0b3JlIikpCmxvY2FsIFZpc3VhbHMgICAgICAgID0gcmVxdWlyZShNb2R1bGVzOldhaXRGb3JDaGlsZCgiVmlzdWFscyIpKQpsb2NhbCBTZXR0aW5ncyAgICAgICA9IHJlcXVpcmUoTW9kdWxlczpXYWl0Rm9yQ2hpbGQoIlNldHRpbmdzIikpCgpsb2NhbCBNYWluRnJhbWUgICAgICAgPSBTY3JlZW5HdWk6V2FpdEZvckNoaWxkKCJNYWluRnJhbWUiKQpsb2NhbCBUb3BCYXIgICAgICAgICAgPSBNYWluRnJhbWU6V2FpdEZvckNoaWxkKCJUb3BCYXIiKQpsb2NhbCBTaWRlYmFyICAgICAgICAgPSBNYWluRnJhbWU6V2FpdEZvckNoaWxkKCJTaWRlYmFyIikKbG9jYWwgQ29udGVudEhvbGRlciAgID0gTWFpbkZyYW1lOldhaXRGb3JDaGlsZCgiQ29udGVudEhvbGRlciIpCmxvY2FsIEZsb2F0aW5nVG9nZ2xlICA9IFNjcmVlbkd1aTpXYWl0Rm9yQ2hpbGQoIkZsb2F0aW5nVG9nZ2xlIikKbG9jYWwgTm90aWZDb250YWluZXIgID0gU2NyZWVuR3VpOldhaXRGb3JDaGlsZCgiTm90aWZpY2F0aW9uQ29udGFpbmVyIikKClRlbGVtZXRyeS5Jbml0KFRvcEJhcikKRHJhZ0NvbnRyb2xsZXIuSW5pdChIZWxwZXJzLCBNYWluRnJhbWUsIFRvcEJhcikKVGFic0NvbnRyb2xsZXIuSW5pdChIZWxwZXJzLCBTaWRlYmFyLCBDb250ZW50SG9sZGVyKQpEYXNoYm9hcmQuSW5pdChIZWxwZXJzLCBDb250ZW50SG9sZGVyLCBMb2NhbFBsYXllcikKQWRkb25zU3RvcmUuSW5pdChIZWxwZXJzLCBNb2R1bGVzLCBDb250ZW50SG9sZGVyLCBOb3RpZkNvbnRhaW5lciwgRGFzaGJvYXJkLCBTY3JlZW5HdWkpClZpc3VhbHMuSW5pdChIZWxwZXJzLCBDb250ZW50SG9sZGVyKQpTZXR0aW5ncy5Jbml0KEhlbHBlcnMsIENvbnRlbnRIb2xkZXIsIExvY2FsUGxheWVyKQoKbG9jYWwgSXNWaXNpYmxlID0gdHJ1ZQpsb2NhbCBmdW5jdGlvbiBTZXRWaXNpYmxlKHZpc2libGUpCglJc1Zpc2libGUgPSB2aXNpYmxlCglpZiB2aXNpYmxlIHRoZW4KCQlNYWluRnJhbWUuUG9zaXRpb24gPSBVRGltMi5uZXcoMC41LCAwLCAwLjUsIDApCgkJTWFpbkZyYW1lLlZpc2libGUgPSB0cnVlCgkJSGVscGVycy5Ud2VlbihNYWluRnJhbWUsIHtTaXplID0gVURpbTIubmV3KDAsIDQ2MCwgMCwgMjkwKSwgQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDAuMTV9LCAwLjI1LCBFbnVtLkVhc2luZ1N0eWxlLkJhY2spCgkJSGVscGVycy5Ud2VlbihGbG9hdGluZ1RvZ2dsZSwge0JhY2tncm91bmRDb2xvcjMgPSBIZWxwZXJzLlRIRU1FLldoaXRlLCBJbWFnZUNvbG9yMyA9IENvbG9yMy5mcm9tUkdCKDAsIDAsIDApfSwgMC4yKQoJZWxzZQoJCWxvY2FsIG91dCA9IEhlbHBlcnMuVHdlZW4oTWFpbkZyYW1lLCB7U2l6ZSA9IFVEaW0yLm5ldygwLCA0MjAsIDAsIDI2MCksIEJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxfSwgMC4xOCwgRW51bS5FYXNpbmdTdHlsZS5RdWFkLCBFbnVtLkVhc2luZ0RpcmVjdGlvbi5JbikKCQlvdXQuQ29tcGxldGVkOkNvbm5lY3QoZnVuY3Rpb24oKSBpZiBub3QgSXNWaXNpYmxlIHRoZW4gTWFpbkZyYW1lLlZpc2libGUgPSBmYWxzZSBlbmQgZW5kKQoJCUhlbHBlcnMuVHdlZW4oRmxvYXRpbmdUb2dnbGUsIHtCYWNrZ3JvdW5kQ29sb3IzID0gQ29sb3IzLmZyb21SR0IoMTQsIDE0LCAxNCksIEltYWdlQ29sb3IzID0gSGVscGVycy5USEVNRS5XaGl0ZX0sIDAuMikKCWVuZAplbmQKCkZsb2F0aW5nVG9nZ2xlLk1vdXNlQnV0dG9uMUNsaWNrOkNvbm5lY3QoZnVuY3Rpb24oKSBTZXRWaXNpYmxlKG5vdCBJc1Zpc2libGUpIGVuZCkKVG9wQmFyOldhaXRGb3JDaGlsZCgiQ2xvc2VCdG4iKS5Nb3VzZUJ1dHRvbjFDbGljazpDb25uZWN0KGZ1bmN0aW9uKCkgU2V0VmlzaWJsZShmYWxzZSkgZW5kKQoKVXNlcklucHV0U2VydmljZS5JbnB1dEJlZ2FuOkNvbm5lY3QoZnVuY3Rpb24oaW5wdXQsIGdwZSkKCWlmIG5vdCBncGUgYW5kIGlucHV0LktleUNvZGUgPT0gRW51bS5LZXlDb2RlLlJpZ2h0Q29udHJvbCB0aGVuIFNldFZpc2libGUobm90IElzVmlzaWJsZSkgZW5kCmVuZCkKCmxvY2FsIGZpcnN0QnRuID0gU2lkZWJhcjpGaW5kRmlyc3RDaGlsZCgiRGFzaGJvYXJkX1RhYkJ0biIpCmlmIGZpcnN0QnRuIHRoZW4KCXRhc2suc3Bhd24oZnVuY3Rpb24oKQoJCXRhc2sud2FpdCgwLjA1KQoJCVRhYnNDb250cm9sbGVyLlN3aXRjaFRhYigiRGFzaGJvYXJkIiwgZmlyc3RCdG4pCgllbmQpCmVuZAplbmQsIGZ1bmN0aW9uKGUpCiAgICBsb2NhbCB0YiA9ICIiCiAgICBwY2FsbChmdW5jdGlvbigpIHRiID0gZGVidWcudHJhY2ViYWNrKCIiLCAyKSBlbmQpCiAgICByZXR1cm4gdG9zdHJpbmcoZSkgLi4gIlxuIiAuLiB0YgplbmQpCmlmIG5vdCBfX3h0d19vayB0aGVuCiAgICBsb2NhbCBlcnJTdHIgPSB0b3N0cmluZyhfX3h0d19lcnIpCiAgICBpZiBfX3h0d19zZWxmIGFuZCBfX3h0d19zZWxmLlNldEF0dHJpYnV0ZSB0aGVuCiAgICAgICAgcGNhbGwoZnVuY3Rpb24oKSBfX3h0d19zZWxmOlNldEF0dHJpYnV0ZSgieHR3X2Vycm9yIiwgZXJyU3RyKSBlbmQpCiAgICBlbmQKICAgIHBjYWxsKGZ1bmN0aW9uKCkgd2FybigiW3h0d10gRkFJTDogIiAuLiBfX3h0d19uYW1lIC4uICIgKCIgLi4gX194dHdfY2xzIC4uICIpOiAiIC4uIGVyclN0cikgZW5kKQplbmQ=")
        local prelude = "local script = ...\n"
        local fn, cerr = loadstring(prelude .. src, "@xtw-m:" .. tostring(inst.Name))
        if not fn then
            manualFail = manualFail + 1
            runErrors[#runErrors + 1] = "UIController (load): " .. tostring(cerr)
        else
            local thread = coroutine.create(fn)
            local okRun, runErr = coroutine.resume(thread, inst)
            if okRun then ranManual = ranManual + 1
            else
                manualFail = manualFail + 1
                runErrors[#runErrors + 1] = "UIController (resume): " .. tostring(runErr)
            end
        end
    end
end
do
    local inst = n[4]
    local hasRan = false
    pcall(function() hasRan = inst:GetAttribute("xtw_ran") and true or false end)
    if not hasRan then
        local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkJhY2tncm91bmQiLCAiTG9jYWxTY3JpcHQiCmxvY2FsIF9feHR3X3NlbGYgPSBuaWwKcGNhbGwoZnVuY3Rpb24oKSBfX3h0d19zZWxmID0gc2NyaXB0IGVuZCkKaWYgX194dHdfc2VsZiBhbmQgX194dHdfc2VsZi5TZXRBdHRyaWJ1dGUgdGhlbgogICAgcGNhbGwoZnVuY3Rpb24oKSBfX3h0d19zZWxmOlNldEF0dHJpYnV0ZSgieHR3X3JhbiIsIHRydWUpIGVuZCkKZW5kCmxvY2FsIF9feHR3X29rLCBfX3h0d19lcnIgPSB4cGNhbGwoZnVuY3Rpb24oKQpsb2NhbCBVc2VySW5wdXRTZXJ2aWNlID0gZ2FtZTpHZXRTZXJ2aWNlKCJVc2VySW5wdXRTZXJ2aWNlIikKbG9jYWwgUnVuU2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiUnVuU2VydmljZSIpCgpsb2NhbCBGUkFNRV9OQU1FID0gbmlsCgpsb2NhbCBmdW5jdGlvbiBnZXRFbnYoKQoJbG9jYWwgb2ssIGUgPSBwY2FsbChmdW5jdGlvbigpIHJldHVybiBnZXRnZW52IGFuZCBnZXRnZW52KCkgZW5kKQoJaWYgb2sgYW5kIHR5cGUoZSkgPT0gInRhYmxlIiB0aGVuIHJldHVybiBlIGVuZAoJcmV0dXJuIF9HCmVuZApsb2NhbCBlbnYgPSBnZXRFbnYoKQoKbG9jYWwgZ3VpID0gbmlsCgppZiBlbnYgYW5kIGVudi5YVFdfUkFEQVJfVEFSR0VUIHRoZW4KCWxvY2FsIHQgPSBlbnYuWFRXX1JBREFSX1RBUkdFVAoJaWYgdHlwZW9mKHQpID09ICJJbnN0YW5jZSIgYW5kIHQ6SXNBKCJHdWlPYmplY3QiKSB0aGVuCgkJZ3VpID0gdAoJZW5kCmVuZAoKaWYgbm90IGd1aSBhbmQgRlJBTUVfTkFNRSB0aGVuCglsb2NhbCBwbGF5ZXIgPSBnYW1lOkdldFNlcnZpY2UoIlBsYXllcnMiKS5Mb2NhbFBsYXllcgoJbG9jYWwgcGcgPSBwbGF5ZXI6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJQbGF5ZXJHdWkiKQoJaWYgcGcgdGhlbgoJCWZvciBfLCBkIGluIGlwYWlycyhwZzpHZXREZXNjZW5kYW50cygpKSBkbwoJCQlpZiBkOklzQSgiR3VpT2JqZWN0IikgYW5kIGQuTmFtZSA9PSBGUkFNRV9OQU1FIHRoZW4KCQkJCWd1aSA9IGQKCQkJCWJyZWFrCgkJCWVuZAoJCWVuZAoJZW5kCmVuZAoKaWYgbm90IGd1aSB0aGVuCglwY2FsbChmdW5jdGlvbigpCgkJbG9jYWwgcCA9IHNjcmlwdCBhbmQgc2NyaXB0LlBhcmVudAoJCWlmIHAgYW5kIHA6SXNBKCJHdWlPYmplY3QiKSB0aGVuCgkJCWd1aSA9IHAKCQllbmQKCWVuZCkKZW5kCgppZiBub3QgZ3VpIHRoZW4KCWxvY2FsIHBsYXllciA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpLkxvY2FsUGxheWVyCglsb2NhbCBwZyA9IHBsYXllcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlBsYXllckd1aSIpCglpZiBwZyB0aGVuCgkJZm9yIF8sIGQgaW4gaXBhaXJzKHBnOkdldERlc2NlbmRhbnRzKCkpIGRvCgkJCWlmIGQ6SXNBKCJHdWlPYmplY3QiKSBhbmQgZDpGaW5kRmlyc3RDaGlsZCgiQ29udGVudEhvbGRlciIsIHRydWUpIHRoZW4KCQkJCWxvY2FsIGNoID0gZDpGaW5kRmlyc3RDaGlsZCgiQ29udGVudEhvbGRlciIsIHRydWUpCgkJCQlpZiBjaCBhbmQgY2g6RmluZEZpcnN0Q2hpbGQoIlJhZGFyQ2FyZCIpIHRoZW4KCQkJCQlndWkgPSBkCgkJCQkJYnJlYWsKCQkJCWVuZAoJCQllbmQKCQllbmQKCWVuZAplbmQKCmlmIG5vdCBndWkgdGhlbgoJd2FybigiW1JhZGFyXSBObyB0YXJnZXQgZnJhbWUuIikKCXJldHVybgplbmQKCmlmIGVudi5YVFdfUkFEQVJfSEIgdGhlbgoJcGNhbGwoZnVuY3Rpb24oKSBlbnYuWFRXX1JBREFSX0hCOkRpc2Nvbm5lY3QoKSBlbmQpCmVuZAoKbG9jYWwgY2FyZCA9IGd1aTpXYWl0Rm9yQ2hpbGQoIkNvbnRlbnRIb2xkZXIiKTpXYWl0Rm9yQ2hpbGQoIlJhZGFyQ2FyZCIpCgpsb2NhbCBwb2ludGVyRG93biA9IGZhbHNlCgpVc2VySW5wdXRTZXJ2aWNlLklucHV0QmVnYW46Q29ubmVjdChmdW5jdGlvbihpbnB1dCkKCWlmIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLk1vdXNlQnV0dG9uMSBvciBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Ub3VjaCB0aGVuCgkJcG9pbnRlckRvd24gPSB0cnVlCgllbmQKZW5kKQoKVXNlcklucHV0U2VydmljZS5JbnB1dEVuZGVkOkNvbm5lY3QoZnVuY3Rpb24oaW5wdXQpCglpZiBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Nb3VzZUJ1dHRvbjEgb3IgaW5wdXQuVXNlcklucHV0VHlwZSA9PSBFbnVtLlVzZXJJbnB1dFR5cGUuVG91Y2ggdGhlbgoJCXBvaW50ZXJEb3duID0gZmFsc2UKCWVuZAplbmQpCgpsb2NhbCBybmcgPSBSYW5kb20ubmV3KCkKbG9jYWwgY2xvY2sgPSAwCmxvY2FsIFNUQVJfQ09VTlQgPSA2NApsb2NhbCBNQVhfU1RBUl9PRkZTRVQgPSAxMApsb2NhbCBNRVRFT1JfUFVTSF9TVFJFTkdUSCA9IDI2MDAKbG9jYWwgTUVURU9SX1BVU0hfRElTVCA9IDM0CgpjYXJkLkNsaXBzRGVzY2VuZGFudHMgPSB0cnVlCgpsb2NhbCBzdGFyRmllbGQgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKc3RhckZpZWxkLk5hbWUgPSAiU3RhckZpZWxkIgpzdGFyRmllbGQuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKc3RhckZpZWxkLlNpemUgPSBVRGltMi5mcm9tU2NhbGUoMSwgMSkKc3RhckZpZWxkLlpJbmRleCA9IDAKc3RhckZpZWxkLkFjdGl2ZSA9IGZhbHNlCnN0YXJGaWVsZC5QYXJlbnQgPSBjYXJkCgpsb2NhbCBzY2FsZVByb2JlID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCnNjYWxlUHJvYmUuTmFtZSA9ICJTY2FsZVByb2JlIgpzY2FsZVByb2JlLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxCnNjYWxlUHJvYmUuQm9yZGVyU2l6ZVBpeGVsID0gMApzY2FsZVByb2JlLlBvc2l0aW9uID0gVURpbTIuZnJvbU9mZnNldCgwLCAwKQpzY2FsZVByb2JlLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KDEwMCwgMTAwKQpzY2FsZVByb2JlLkFjdGl2ZSA9IGZhbHNlCnNjYWxlUHJvYmUuVmlzaWJsZSA9IGZhbHNlCnNjYWxlUHJvYmUuUGFyZW50ID0gc3RhckZpZWxkCgpsb2NhbCBmdW5jdGlvbiBnZXRGaWVsZFNjYWxlKCkKCWxvY2FsIHMgPSBzY2FsZVByb2JlLkFic29sdXRlU2l6ZS5YIC8gMTAwCglpZiBzID4gMC4wNSBhbmQgcyA8IDIwIHRoZW4KCQlyZXR1cm4gcwoJZW5kCglyZXR1cm4gMQplbmQKCmxvY2FsIHN0YXJQYWxldHRlID0gewoJQ29sb3IzLmZyb21SR0IoMjU1LCAyNTUsIDI1NSksCglDb2xvcjMuZnJvbVJHQigyNTUsIDI1NSwgMjU1KSwKCUNvbG9yMy5mcm9tUkdCKDIxNCwgMjI2LCAyNTUpLAoJQ29sb3IzLmZyb21SR0IoMjU1LCAyNDQsIDIxNCksCglDb2xvcjMuZnJvbVJHQigxOTAsIDIxMCwgMjU1KSwKfQoKbG9jYWwgc3RhcnMgPSB7fQpsb2NhbCBzaG9vdGluZ1N0YXJzID0ge30KbG9jYWwgc3BhcmtzID0ge30KCmxvY2FsIGZ1bmN0aW9uIG1ha2VSYXkocGFyZW50LCBsZW5ndGgsIHJvdGF0aW9uLCBjb2xvcikKCWxvY2FsIHJheSA9IEluc3RhbmNlLm5ldygiRnJhbWUiKQoJcmF5LkFuY2hvclBvaW50ID0gVmVjdG9yMi5uZXcoMC41LCAwLjUpCglyYXkuUG9zaXRpb24gPSBVRGltMi5mcm9tU2NhbGUoMC41LCAwLjUpCglyYXkuUm90YXRpb24gPSByb3RhdGlvbgoJcmF5LlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KGxlbmd0aCwgMSkKCXJheS5CYWNrZ3JvdW5kQ29sb3IzID0gY29sb3IKCXJheS5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJcmF5LkJvcmRlclNpemVQaXhlbCA9IDAKCXJheS5aSW5kZXggPSAwCglyYXkuUGFyZW50ID0gcGFyZW50CgoJbG9jYWwgZ3JhZGllbnQgPSBJbnN0YW5jZS5uZXcoIlVJR3JhZGllbnQiKQoJZ3JhZGllbnQuVHJhbnNwYXJlbmN5ID0gTnVtYmVyU2VxdWVuY2UubmV3KHsKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLCAxKSwKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjUsIDApLAoJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDEsIDEpLAoJfSkKCWdyYWRpZW50LlBhcmVudCA9IHJheQoKCXJldHVybiByYXkKZW5kCgpsb2NhbCBmdW5jdGlvbiBsZXJwQW5nbGUoYSwgYiwgbSkKCWxvY2FsIGRpZmYgPSAoYiAtIGEgKyAxODApICUgMzYwIC0gMTgwCglyZXR1cm4gYSArIGRpZmYgKiBtCmVuZAoKbG9jYWwgZnVuY3Rpb24gcmVyb2xsU3RhcihkYXRhKQoJbG9jYWwgaXNCcmlnaHQgPSBybmc6TmV4dE51bWJlcigpIDwgMC4xCglsb2NhbCBkZXB0aCA9IHJuZzpOZXh0TnVtYmVyKCkKCglkYXRhLmRlcHRoID0gZGVwdGgKCWRhdGEuaXNCcmlnaHQgPSBpc0JyaWdodAoKCWxvY2FsIHJhd1NpemUKCWlmIGlzQnJpZ2h0IHRoZW4KCQlyYXdTaXplID0gcm5nOk5leHROdW1iZXIoMi4yLCAzKQoJZWxzZQoJCWxvY2FsIHIgPSBybmc6TmV4dE51bWJlcigpCgkJcmF3U2l6ZSA9IDEgKyByICogciAqIDEuMwoJZW5kCglsb2NhbCBzaXplID0gbWF0aC5tYXgoMC44LCByYXdTaXplICogKDAuNiArIGRlcHRoICogMC44KSkKCglkYXRhLmJhc2VTaXplID0gc2l6ZQoJZGF0YS5jb2xvciA9IHN0YXJQYWxldHRlW3JuZzpOZXh0SW50ZWdlcigxLCAjc3RhclBhbGV0dGUpXQoJZGF0YS5iYXNlVHJhbnNwYXJlbmN5ID0gbWF0aC5jbGFtcCgKCQkoaXNCcmlnaHQgYW5kIHJuZzpOZXh0TnVtYmVyKDAuMywgMC41NSkgb3Igcm5nOk5leHROdW1iZXIoMC41NSwgMC44NSkpICsgKDEgLSBkZXB0aCkgKiAwLjE1LAoJCTAuMSwgMC45NQoJKQoJZGF0YS5hbmNob3IgPSBWZWN0b3IyLm5ldyhybmc6TmV4dE51bWJlcigwLjA0LCAwLjk2KSwgcm5nOk5leHROdW1iZXIoMC4wNCwgMC45NikpCglkYXRhLm1hc3MgPSAwLjUgKyAoc2l6ZSAvIDMpIF4gMiAqIDMKCWRhdGEuc3RpZmYgPSBpc0JyaWdodCBhbmQgcm5nOk5leHROdW1iZXIoNTUsIDg1KSBvciBybmc6TmV4dE51bWJlcigxMTAsIDE3MCkKCWRhdGEuZGFtcCA9IGlzQnJpZ2h0IGFuZCBybmc6TmV4dE51bWJlcigxLjYsIDIuOCkgb3Igcm5nOk5leHROdW1iZXIoMywgNS41KQoJZGF0YS5vZmYgPSBWZWN0b3IyLnplcm8KCWRhdGEudmVsID0gVmVjdG9yMi56ZXJvCglkYXRhLnB1c2hPZmYgPSBWZWN0b3IyLnplcm8KCWRhdGEucHVzaFZlbCA9IFZlY3RvcjIuemVybwoJZGF0YS5wdXNoVGFyZ2V0ID0gVmVjdG9yMi56ZXJvCglkYXRhLnB1c2hTdGlmZiA9IHJuZzpOZXh0TnVtYmVyKDMwLCA1NSkKCWRhdGEucHVzaERhbXAgPSBybmc6TmV4dE51bWJlcig0LjUsIDcuNSkKCWRhdGEuZmxpY2tlclNwZWVkID0gcm5nOk5leHROdW1iZXIoMC41LCAxLjgpCglkYXRhLmZsaWNrZXJQaGFzZSA9IHJuZzpOZXh0TnVtYmVyKDAsIG1hdGgucGkgKiAyKQoJZGF0YS5mbGlja2VyQW1wID0gcm5nOk5leHROdW1iZXIoMC4wMiwgMC4wNikgKiAoMC42ICsgZGVwdGggKiAwLjcpCglkYXRhLmdsb3dUaW1lciA9IHJuZzpOZXh0TnVtYmVyKDQsIDE2KQoJZGF0YS5nbG93RHVyYXRpb24gPSBybmc6TmV4dE51bWJlcigxLjUsIDMpCglkYXRhLmdsb3dQcm9ncmVzcyA9IDAKCWRhdGEuZ2xvd2luZyA9IGZhbHNlCglkYXRhLmdsb3dTdHJlbmd0aCA9IDAKCWRhdGEuZmxhc2ggPSAwCglkYXRhLmxpZmV0aW1lID0gcm5nOk5leHROdW1iZXIoNSwgMTApCglkYXRhLmFnZSA9IDAKCWRhdGEuZmFkZSA9IDAKCWRhdGEuZmFkZUluID0gcm5nOk5leHROdW1iZXIoMC44LCAxLjUpCglkYXRhLmZhZGVPdXQgPSBybmc6TmV4dE51bWJlcigwLjcsIDEuNCkKCWRhdGEucGhhc2UgPSAiaW4iCglkYXRhLmJhc2VSb3QgPSBybmc6TmV4dE51bWJlcigwLCA5MCkKCWRhdGEucm90QWxpZ24gPSAwCglkYXRhLnN0cmV0Y2ggPSAwCglkYXRhLnNoYWtlRnJlcSA9IHJuZzpOZXh0TnVtYmVyKDcsIDE0KQoJZGF0YS5zaGFrZVBoYXNlID0gcm5nOk5leHROdW1iZXIoMCwgbWF0aC5waSAqIDIpCglkYXRhLndvYkZyZXEgPSBybmc6TmV4dE51bWJlcig2LCAxMikKCWRhdGEud29iUGhhc2UgPSBybmc6TmV4dE51bWJlcigwLCBtYXRoLnBpICogMikKCWRhdGEuc3dheUFtcCA9IHJuZzpOZXh0TnVtYmVyKDEuMiwgMykgKiAoMC40ICsgZGVwdGggKiAwLjYpCglkYXRhLnN3YXlGcmVxWCA9IHJuZzpOZXh0TnVtYmVyKDAuMTUsIDAuNDUpCglkYXRhLnN3YXlGcmVxWSA9IHJuZzpOZXh0TnVtYmVyKDAuMTUsIDAuNDUpCglkYXRhLnN3YXlQaGFzZVggPSBybmc6TmV4dE51bWJlcigwLCBtYXRoLnBpICogMikKCWRhdGEuc3dheVBoYXNlWSA9IHJuZzpOZXh0TnVtYmVyKDAsIG1hdGgucGkgKiAyKQoKCWRhdGEuY29udGFpbmVyLlBvc2l0aW9uID0gVURpbTIubmV3KGRhdGEuYW5jaG9yLlgsIDAsIGRhdGEuYW5jaG9yLlksIDApCglkYXRhLmNvbnRhaW5lci5Sb3RhdGlvbiA9IGRhdGEuYmFzZVJvdAoJZGF0YS5jb250YWluZXIuWkluZGV4ID0gMSArIG1hdGguZmxvb3IoZGVwdGggKiA0Ljk5OSkKCWRhdGEuY29yZS5CYWNrZ3JvdW5kQ29sb3IzID0gZGF0YS5jb2xvcgoJZGF0YS5jb3JlLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KHNpemUsIHNpemUpCgoJbG9jYWwgcmF5TGVuID0gbWF0aC5jbGFtcChzaXplICogNSwgNywgMTYpCglkYXRhLmJhc2VSYXlMZW4gPSByYXlMZW4KCWZvciBpLCByYXkgaW4gaXBhaXJzKGRhdGEucmF5cykgZG8KCQlyYXkuQmFja2dyb3VuZENvbG9yMyA9IGRhdGEuY29sb3IKCQlyYXkuU2l6ZSA9IFVEaW0yLmZyb21PZmZzZXQocmF5TGVuLCBtYXRoLm1heCgxLCBzaXplICogMC4zKSkKCQlyYXkuVmlzaWJsZSA9IGRhdGEuaXNCcmlnaHQgb3IgaSA9PSAxIG9yIGkgPT0gMwoJZW5kCmVuZAoKbG9jYWwgZnVuY3Rpb24gY3JlYXRlU3RhcigpCglsb2NhbCBkYXRhID0ge30KCglsb2NhbCBjb250YWluZXIgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKCWNvbnRhaW5lci5BbmNob3JQb2ludCA9IFZlY3RvcjIubmV3KDAuNSwgMC41KQoJY29udGFpbmVyLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KDEsIDEpCgljb250YWluZXIuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKCWNvbnRhaW5lci5aSW5kZXggPSAxCgljb250YWluZXIuUGFyZW50ID0gc3RhckZpZWxkCgoJbG9jYWwgcmF5cyA9IHt9Cglmb3IgaSA9IDEsIDQgZG8KCQlyYXlzW2ldID0gbWFrZVJheShjb250YWluZXIsIDEwLCAoaSAtIDEpICogNDUsIENvbG9yMy5uZXcoMSwgMSwgMSkpCgllbmQKCglsb2NhbCBjb3JlID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCgljb3JlLkFuY2hvclBvaW50ID0gVmVjdG9yMi5uZXcoMC41LCAwLjUpCgljb3JlLlBvc2l0aW9uID0gVURpbTIuZnJvbVNjYWxlKDAuNSwgMC41KQoJY29yZS5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJY29yZS5Cb3JkZXJTaXplUGl4ZWwgPSAwCgljb3JlLlpJbmRleCA9IDAKCWNvcmUuUGFyZW50ID0gY29udGFpbmVyCglJbnN0YW5jZS5uZXcoIlVJQ29ybmVyIiwgY29yZSkuQ29ybmVyUmFkaXVzID0gVURpbS5uZXcoMSwgMCkKCglkYXRhLmNvbnRhaW5lciA9IGNvbnRhaW5lcgoJZGF0YS5yYXlzID0gcmF5cwoJZGF0YS5jb3JlID0gY29yZQoKCXJlcm9sbFN0YXIoZGF0YSkKCWRhdGEuYWdlID0gcm5nOk5leHROdW1iZXIoMCwgZGF0YS5saWZldGltZSkKCgl0YWJsZS5pbnNlcnQoc3RhcnMsIGRhdGEpCmVuZAoKZm9yIF8gPSAxLCBTVEFSX0NPVU5UIGRvCgljcmVhdGVTdGFyKCkKZW5kCgpsb2NhbCBuZXh0U2hvb3RpbmdTdGFyID0gcm5nOk5leHROdW1iZXIoNCwgOCkKCmxvY2FsIGZ1bmN0aW9uIHNwYXduU3BhcmsocG9zLCBiYXNlRGlyKQoJaWYgI3NwYXJrcyA+IDYwIHRoZW4gcmV0dXJuIGVuZAoKCWxvY2FsIHNpemUgPSBybmc6TmV4dE51bWJlcigwLjgsIDEuOCkKCWxvY2FsIHMgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKCXMuQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygwLjUsIDAuNSkKCXMuU2l6ZSA9IFVEaW0yLmZyb21PZmZzZXQoc2l6ZSwgc2l6ZSkKCXMuQmFja2dyb3VuZENvbG9yMyA9IHJuZzpOZXh0TnVtYmVyKCkgPCAwLjcgYW5kIENvbG9yMy5mcm9tUkdCKDIwMCwgMjIwLCAyNTUpIG9yIENvbG9yMy5mcm9tUkdCKDI1NSwgMjU1LCAyNTUpCglzLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSBybmc6TmV4dE51bWJlcigwLjEsIDAuNDUpCglzLkJvcmRlclNpemVQaXhlbCA9IDAKCXMuWkluZGV4ID0gNgoJcy5QYXJlbnQgPSBzdGFyRmllbGQKCUluc3RhbmNlLm5ldygiVUlDb3JuZXIiLCBzKS5Db3JuZXJSYWRpdXMgPSBVRGltLm5ldygxLCAwKQoKCWxvY2FsIHNwcmVhZCA9IHJuZzpOZXh0TnVtYmVyKC0wLjYsIDAuNikKCWxvY2FsIGNzLCBzbiA9IG1hdGguY29zKHNwcmVhZCksIG1hdGguc2luKHNwcmVhZCkKCWxvY2FsIGRpciA9IFZlY3RvcjIubmV3KGJhc2VEaXIuWCAqIGNzIC0gYmFzZURpci5ZICogc24sIGJhc2VEaXIuWCAqIHNuICsgYmFzZURpci5ZICogY3MpCgoJdGFibGUuaW5zZXJ0KHNwYXJrcywgewoJCWZyYW1lID0gcywKCQlwb3MgPSBwb3MgKyBWZWN0b3IyLm5ldyhybmc6TmV4dE51bWJlcigtMiwgMiksIHJuZzpOZXh0TnVtYmVyKC0yLCAyKSksCgkJdmVsID0gZGlyICogcm5nOk5leHROdW1iZXIoMjAsIDExMCksCgkJbGlmZSA9IDAsCgkJbWF4TGlmZSA9IHJuZzpOZXh0TnVtYmVyKDAuMzUsIDAuOSksCgkJc2l6ZSA9IHNpemUsCgkJYmFzZVQgPSBzLkJhY2tncm91bmRUcmFuc3BhcmVuY3ksCgl9KQplbmQKCmxvY2FsIGZ1bmN0aW9uIHNwYXduU2hvb3RpbmdTdGFyKCkKCWxvY2FsIHNpemUgPSBzdGFyRmllbGQuQWJzb2x1dGVTaXplIC8gZ2V0RmllbGRTY2FsZSgpCglpZiBzaXplLlggPCA2MCBvciBzaXplLlkgPCA2MCB0aGVuIHJldHVybiBlbmQKCglsb2NhbCBtYXJnaW4gPSA2MAoJbG9jYWwgZWRnZSA9IHJuZzpOZXh0SW50ZWdlcigwLCAzKQoJbG9jYWwgc3RhcnQKCWlmIGVkZ2UgPT0gMCB0aGVuCgkJc3RhcnQgPSBWZWN0b3IyLm5ldyhybmc6TmV4dE51bWJlcigwLCBzaXplLlgpLCAtbWFyZ2luKQoJZWxzZWlmIGVkZ2UgPT0gMSB0aGVuCgkJc3RhcnQgPSBWZWN0b3IyLm5ldyhzaXplLlggKyBtYXJnaW4sIHJuZzpOZXh0TnVtYmVyKDAsIHNpemUuWSkpCgllbHNlaWYgZWRnZSA9PSAyIHRoZW4KCQlzdGFydCA9IFZlY3RvcjIubmV3KHJuZzpOZXh0TnVtYmVyKDAsIHNpemUuWCksIHNpemUuWSArIG1hcmdpbikKCWVsc2UKCQlzdGFydCA9IFZlY3RvcjIubmV3KC1tYXJnaW4sIHJuZzpOZXh0TnVtYmVyKDAsIHNpemUuWSkpCgllbmQKCglsb2NhbCB0YXJnZXQgPSBWZWN0b3IyLm5ldyhzaXplLlggKiBybmc6TmV4dE51bWJlcigwLjIsIDAuOCksIHNpemUuWSAqIHJuZzpOZXh0TnVtYmVyKDAuMiwgMC44KSkKCWxvY2FsIGRpciA9ICh0YXJnZXQgLSBzdGFydCkuVW5pdAoJbG9jYWwgc3BlZWQgPSBybmc6TmV4dE51bWJlcigzODAsIDc2MCkKCWxvY2FsIGxpZmV0aW1lID0gKHN0YXJ0IC0gdGFyZ2V0KS5NYWduaXR1ZGUgLyBzcGVlZCArIHJuZzpOZXh0TnVtYmVyKDAuMTUsIDAuMzUpCglsb2NhbCB0cmFpbExlbiA9IHJuZzpOZXh0TnVtYmVyKDYwLCAxMTApCgoJbG9jYWwgbWV0ZW9yID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCgltZXRlb3IuQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygwLjUsIDAuNSkKCW1ldGVvci5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJbWV0ZW9yLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KDAsIDApCgltZXRlb3IuUG9zaXRpb24gPSBVRGltMi5mcm9tT2Zmc2V0KHN0YXJ0LlgsIHN0YXJ0LlkpCgltZXRlb3IuUm90YXRpb24gPSBtYXRoLmRlZyhtYXRoLmF0YW4yKGRpci5ZLCBkaXIuWCkpCgltZXRlb3IuWkluZGV4ID0gNgoJbWV0ZW9yLlBhcmVudCA9IHN0YXJGaWVsZAoKCWxvY2FsIG91dGVyID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCglvdXRlci5BbmNob3JQb2ludCA9IFZlY3RvcjIubmV3KDEsIDAuNSkKCW91dGVyLlBvc2l0aW9uID0gVURpbTIuZnJvbVNjYWxlKDAsIDApCglvdXRlci5TaXplID0gVURpbTIuZnJvbU9mZnNldCh0cmFpbExlbiwgMy40KQoJb3V0ZXIuQmFja2dyb3VuZENvbG9yMyA9IENvbG9yMy5mcm9tUkdCKDE3MCwgMjAwLCAyNTUpCglvdXRlci5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJb3V0ZXIuQm9yZGVyU2l6ZVBpeGVsID0gMAoJb3V0ZXIuWkluZGV4ID0gMAoJb3V0ZXIuUGFyZW50ID0gbWV0ZW9yCgoJbG9jYWwgb2cgPSBJbnN0YW5jZS5uZXcoIlVJR3JhZGllbnQiKQoJb2cuVHJhbnNwYXJlbmN5ID0gTnVtYmVyU2VxdWVuY2UubmV3KHsKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLCAxKSwKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjU1LCAwLjY1KSwKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygxLCAwLjIpLAoJfSkKCW9nLlBhcmVudCA9IG91dGVyCgoJbG9jYWwgaW5uZXIgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKCWlubmVyLkFuY2hvclBvaW50ID0gVmVjdG9yMi5uZXcoMSwgMC41KQoJaW5uZXIuUG9zaXRpb24gPSBVRGltMi5mcm9tU2NhbGUoMCwgMCkKCWlubmVyLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KHRyYWlsTGVuICogMC41NSwgMS40KQoJaW5uZXIuQmFja2dyb3VuZENvbG9yMyA9IENvbG9yMy5mcm9tUkdCKDI1NSwgMjU1LCAyNTUpCglpbm5lci5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJaW5uZXIuQm9yZGVyU2l6ZVBpeGVsID0gMAoJaW5uZXIuWkluZGV4ID0gMAoJaW5uZXIuUGFyZW50ID0gbWV0ZW9yCgoJbG9jYWwgaWcgPSBJbnN0YW5jZS5uZXcoIlVJR3JhZGllbnQiKQoJaWcuVHJhbnNwYXJlbmN5ID0gTnVtYmVyU2VxdWVuY2UubmV3KHsKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLCAxKSwKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjUsIDAuNCksCgkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMSwgMC4wNSksCgl9KQoJaWcuUGFyZW50ID0gaW5uZXIKCglsb2NhbCBibG9vbSA9IEluc3RhbmNlLm5ldygiRnJhbWUiKQoJYmxvb20uQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygwLjUsIDAuNSkKCWJsb29tLlBvc2l0aW9uID0gVURpbTIuZnJvbVNjYWxlKDAsIDApCglibG9vbS5TaXplID0gVURpbTIuZnJvbU9mZnNldCgxMSwgMTEpCglibG9vbS5CYWNrZ3JvdW5kQ29sb3IzID0gQ29sb3IzLmZyb21SR0IoMTg1LCAyMTAsIDI1NSkKCWJsb29tLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxCglibG9vbS5Cb3JkZXJTaXplUGl4ZWwgPSAwCglibG9vbS5aSW5kZXggPSAwCglibG9vbS5QYXJlbnQgPSBtZXRlb3IKCUluc3RhbmNlLm5ldygiVUlDb3JuZXIiLCBibG9vbSkuQ29ybmVyUmFkaXVzID0gVURpbS5uZXcoMSwgMCkKCglsb2NhbCBoZWFkID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCgloZWFkLkFuY2hvclBvaW50ID0gVmVjdG9yMi5uZXcoMC41LCAwLjUpCgloZWFkLlBvc2l0aW9uID0gVURpbTIuZnJvbVNjYWxlKDAsIDApCgloZWFkLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KDIuNCwgMi40KQoJaGVhZC5CYWNrZ3JvdW5kQ29sb3IzID0gQ29sb3IzLmZyb21SR0IoMjU1LCAyNTUsIDI1NSkKCWhlYWQuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKCWhlYWQuQm9yZGVyU2l6ZVBpeGVsID0gMAoJaGVhZC5aSW5kZXggPSAwCgloZWFkLlBhcmVudCA9IG1ldGVvcgoJSW5zdGFuY2UubmV3KCJVSUNvcm5lciIsIGhlYWQpLkNvcm5lclJhZGl1cyA9IFVEaW0ubmV3KDEsIDApCgoJdGFibGUuaW5zZXJ0KHNob290aW5nU3RhcnMsIHsKCQltZXRlb3IgPSBtZXRlb3IsCgkJb3V0ZXIgPSBvdXRlciwKCQlpbm5lciA9IGlubmVyLAoJCWJsb29tID0gYmxvb20sCgkJaGVhZCA9IGhlYWQsCgkJcG9zID0gc3RhcnQsCgkJZGlyID0gZGlyLAoJCXNwZWVkID0gc3BlZWQsCgkJY3VydmUgPSBybmc6TmV4dE51bWJlcigtMSwgMSkgKiBybmc6TmV4dE51bWJlcigwLjE1LCAwLjUpLAoJCWxpZmUgPSAwLAoJCWxpZmV0aW1lID0gbGlmZXRpbWUsCgkJc3BhcmtUaW1lciA9IDAsCgl9KQplbmQKCmxvY2FsIGxhc3RHdWlQb3MgPSBuaWwKbG9jYWwgbGFzdEd1aVZlbCA9IFZlY3RvcjIuemVybwpsb2NhbCB3YXNEb3duID0gZmFsc2UKbG9jYWwgZmxpbmdJbXB1bHNlID0gbmlsCgpsb2NhbCB1cGRhdGUgPSBmdW5jdGlvbihkdCkKCWNsb2NrICs9IGR0CglkdCA9IG1hdGgubWluKGR0LCAxIC8gMjApCgoJbG9jYWwgc2NhbGUgPSBnZXRGaWVsZFNjYWxlKCkKCWxvY2FsIGZpZWxkU2l6ZSA9IHN0YXJGaWVsZC5BYnNvbHV0ZVNpemUgLyBzY2FsZQoKCWxvY2FsIGdwID0gVmVjdG9yMi5uZXcoZ3VpLlBvc2l0aW9uLlguT2Zmc2V0LCBndWkuUG9zaXRpb24uWS5PZmZzZXQpCglsb2NhbCBndmVsID0gVmVjdG9yMi56ZXJvCglsb2NhbCBnYWNjID0gVmVjdG9yMi56ZXJvCglpZiBsYXN0R3VpUG9zIHRoZW4KCQlsb2NhbCBzYWZlRHQgPSBtYXRoLm1heChkdCwgMSAvIDI0MCkKCQlndmVsID0gKGdwIC0gbGFzdEd1aVBvcykgLyBzYWZlRHQKCQlpZiBndmVsLk1hZ25pdHVkZSA+IDMwMDAgdGhlbgoJCQlndmVsID0gZ3ZlbC5Vbml0ICogMzAwMAoJCWVuZAoJCWdhY2MgPSAoZ3ZlbCAtIGxhc3RHdWlWZWwpIC8gc2FmZUR0CgkJaWYgZ2FjYy5NYWduaXR1ZGUgPiAxMjAwMCB0aGVuCgkJCWdhY2MgPSBnYWNjLlVuaXQgKiAxMjAwMAoJCWVuZAoJZW5kCglsYXN0R3VpUG9zID0gZ3AKCWxhc3RHdWlWZWwgPSBndmVsCglsb2NhbCBzcGVlZCA9IGd2ZWwuTWFnbml0dWRlCgoJZmxpbmdJbXB1bHNlID0gbmlsCglpZiBwb2ludGVyRG93biB0aGVuCgkJd2FzRG93biA9IHRydWUKCWVsc2VpZiB3YXNEb3duIHRoZW4KCQl3YXNEb3duID0gZmFsc2UKCQlpZiBndmVsLk1hZ25pdHVkZSA+IDI1MCB0aGVuCgkJCWZsaW5nSW1wdWxzZSA9IGd2ZWwKCQllbmQKCWVuZAoKCW5leHRTaG9vdGluZ1N0YXIgLT0gZHQKCWlmIG5leHRTaG9vdGluZ1N0YXIgPD0gMCB0aGVuCgkJc3Bhd25TaG9vdGluZ1N0YXIoKQoJCW5leHRTaG9vdGluZ1N0YXIgPSBybmc6TmV4dE51bWJlcig2LCAxNCkKCWVuZAoKCWZvciBpID0gI3Nob290aW5nU3RhcnMsIDEsIC0xIGRvCgkJbG9jYWwgbSA9IHNob290aW5nU3RhcnNbaV0KCQltLmxpZmUgKz0gZHQKCgkJbG9jYWwgY3MsIHNuID0gbWF0aC5jb3MobS5jdXJ2ZSAqIGR0KSwgbWF0aC5zaW4obS5jdXJ2ZSAqIGR0KQoJCW0uZGlyID0gVmVjdG9yMi5uZXcobS5kaXIuWCAqIGNzIC0gbS5kaXIuWSAqIHNuLCBtLmRpci5YICogc24gKyBtLmRpci5ZICogY3MpCgkJbS5wb3MgKz0gbS5kaXIgKiBtLnNwZWVkICogZHQKCQltLm1ldGVvci5Qb3NpdGlvbiA9IFVEaW0yLmZyb21PZmZzZXQobS5wb3MuWCwgbS5wb3MuWSkKCQltLm1ldGVvci5Sb3RhdGlvbiA9IG1hdGguZGVnKG1hdGguYXRhbjIobS5kaXIuWSwgbS5kaXIuWCkpCgoJCWxvY2FsIGZhZGVJbiA9IG1hdGguY2xhbXAobS5saWZlIC8gMC4xNSwgMCwgMSkKCQlsb2NhbCBmYWRlT3V0ID0gbWF0aC5jbGFtcCgobS5saWZldGltZSAtIG0ubGlmZSkgLyAwLjM1LCAwLCAxKQoJCWxvY2FsIGFscGhhID0gbWF0aC5taW4oZmFkZUluLCBmYWRlT3V0KQoKCQltLmhlYWQuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEgLSBhbHBoYQoJCW0uYmxvb20uQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEgLSBhbHBoYSAqICgwLjUgKyAwLjEyICogbWF0aC5zaW4obS5saWZlICogMjYpKQoJCW0ub3V0ZXIuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEgLSBhbHBoYSAqIDAuODUKCQltLmlubmVyLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxIC0gYWxwaGEKCgkJbS5zcGFya1RpbWVyIC09IGR0CgkJaWYgbS5zcGFya1RpbWVyIDw9IDAgYW5kIGFscGhhID4gMC4yIHRoZW4KCQkJc3Bhd25TcGFyayhtLnBvcyAtIG0uZGlyICogNiwgLW0uZGlyKQoJCQltLnNwYXJrVGltZXIgPSBybmc6TmV4dE51bWJlcigwLjAzLCAwLjA3KQoJCWVuZAoKCQlpZiBtLmxpZmUgPj0gbS5saWZldGltZSB0aGVuCgkJCW0ubWV0ZW9yOkRlc3Ryb3koKQoJCQl0YWJsZS5yZW1vdmUoc2hvb3RpbmdTdGFycywgaSkKCQllbmQKCWVuZAoKCWxvY2FsIHB1c2hSYWRpdXMgPSBtYXRoLmNsYW1wKG1hdGgubWluKGZpZWxkU2l6ZS5YLCBmaWVsZFNpemUuWSkgKiAwLjI4LCA3MCwgMTMwKQoKCWZvciBfLCBkYXRhIGluIGlwYWlycyhzdGFycykgZG8KCQlpZiBkYXRhLnBoYXNlID09ICJpbiIgdGhlbgoJCQlkYXRhLmZhZGUgKz0gZHQgLyBkYXRhLmZhZGVJbgoJCQlpZiBkYXRhLmZhZGUgPj0gMSB0aGVuCgkJCQlkYXRhLmZhZGUgPSAxCgkJCQlkYXRhLnBoYXNlID0gImxpdmUiCgkJCWVuZAoJCWVsc2VpZiBkYXRhLnBoYXNlID09ICJsaXZlIiB0aGVuCgkJCWRhdGEuYWdlICs9IGR0CgkJCWlmIGRhdGEuYWdlID49IGRhdGEubGlmZXRpbWUgdGhlbgoJCQkJZGF0YS5waGFzZSA9ICJvdXQiCgkJCWVuZAoJCWVsc2UKCQkJZGF0YS5mYWRlIC09IGR0IC8gZGF0YS5mYWRlT3V0CgkJCWlmIGRhdGEuZmFkZSA8PSAwIHRoZW4KCQkJCXJlcm9sbFN0YXIoZGF0YSkKCQkJZW5kCgkJZW5kCgoJCWxvY2FsIGRlcHRoID0gZGF0YS5kZXB0aAoJCWxvY2FsIHJlYWN0ID0gMC4zNSArIGRlcHRoICogMC42NQoKCQlkYXRhLnd4ID0gZGF0YS5hbmNob3IuWCAqIGZpZWxkU2l6ZS5YICsgZGF0YS5vZmYuWCArIGRhdGEucHVzaE9mZi5YCgkJZGF0YS53eSA9IGRhdGEuYW5jaG9yLlkgKiBmaWVsZFNpemUuWSArIGRhdGEub2ZmLlkgKyBkYXRhLnB1c2hPZmYuWQoKCQlkYXRhLnB1c2hUYXJnZXQgPSBWZWN0b3IyLnplcm8KCgkJaWYgI3Nob290aW5nU3RhcnMgPiAwIHRoZW4KCQkJZm9yIF8sIG0gaW4gaXBhaXJzKHNob290aW5nU3RhcnMpIGRvCgkJCQlsb2NhbCBkeCA9IGRhdGEud3ggLSBtLnBvcy5YCgkJCQlsb2NhbCBkeSA9IGRhdGEud3kgLSBtLnBvcy5ZCgkJCQlsb2NhbCBkaXN0ID0gbWF0aC5zcXJ0KGR4ICogZHggKyBkeSAqIGR5KQoJCQkJaWYgZGlzdCA8IHB1c2hSYWRpdXMgYW5kIGRpc3QgPiAwLjAwMSB0aGVuCgkJCQkJbG9jYWwgZiA9IDEgLSBkaXN0IC8gcHVzaFJhZGl1cwoJCQkJCWxvY2FsIGVuZXJneSA9IGYgKiBmCgkJCQkJbG9jYWwgdXggPSBkeCAvIGRpc3QKCQkJCQlsb2NhbCB1eSA9IGR5IC8gZGlzdAoJCQkJCWxvY2FsIHN4ID0gdXggKiAwLjcgKyBtLmRpci5YICogMC40NQoJCQkJCWxvY2FsIHN5ID0gdXkgKiAwLjcgKyBtLmRpci5ZICogMC40NQoJCQkJCWxvY2FsIHNsID0gbWF0aC5zcXJ0KHN4ICogc3ggKyBzeSAqIHN5KQoJCQkJCWlmIHNsID4gMC4wMDEgdGhlbgoJCQkJCQlsb2NhbCBwdXNoID0gTUVURU9SX1BVU0hfU1RSRU5HVEggKiBlbmVyZ3kgKiByZWFjdCAvICgwLjggKyBkYXRhLm1hc3MgKiAwLjMpCgkJCQkJCWRhdGEucHVzaFZlbCArPSBWZWN0b3IyLm5ldyhzeCAvIHNsLCBzeSAvIHNsKSAqIHB1c2ggKiBkdAoJCQkJCWVuZAoJCQkJCWRhdGEucHVzaFRhcmdldCArPSBWZWN0b3IyLm5ldyh1eCwgdXkpICogKGVuZXJneSAqIE1FVEVPUl9QVVNIX0RJU1QgKiByZWFjdCkKCQkJCQlpZiBlbmVyZ3kgPiBkYXRhLmZsYXNoIHRoZW4KCQkJCQkJZGF0YS5mbGFzaCA9IGVuZXJneQoJCQkJCWVuZAoJCQkJZW5kCgkJCWVuZAoJCWVuZAoKCQlpZiBwb2ludGVyRG93biBhbmQgc3BlZWQgPiAxNSB0aGVuCgkJCWxvY2FsIHNoYWtlQW1wID0gKDE0ICsgc3BlZWQgKiAwLjYpICogKDAuNDUgKyBkZXB0aCAqIDAuOTUpIC8gZGF0YS5tYXNzCgkJCWxvY2FsIHN4ID0gbWF0aC5zaW4oY2xvY2sgKiBkYXRhLnNoYWtlRnJlcSArIGRhdGEuc2hha2VQaGFzZSkKCQkJbG9jYWwgc3kgPSBtYXRoLmNvcyhjbG9jayAqIGRhdGEuc2hha2VGcmVxICogMS4xNyArIGRhdGEuc2hha2VQaGFzZSkKCQkJZGF0YS52ZWwgKz0gVmVjdG9yMi5uZXcoc3gsIHN5KSAqIHNoYWtlQW1wICogZHQKCQllbmQKCgkJaWYgZmxpbmdJbXB1bHNlIHRoZW4KCQkJZGF0YS52ZWwgKz0gZmxpbmdJbXB1bHNlICogMC4xNSAqICgwLjM1ICsgZGVwdGggKiAwLjY1KQoJCWVuZAoKCQlkYXRhLnZlbCAtPSBnYWNjICogZHQgKiAoMC4wMiArIGRlcHRoICogMC4wNikKCQlkYXRhLm9mZiAtPSBndmVsICogZHQgKiAoMC4xNCArIGRlcHRoICogMC40MikKCgkJbG9jYWwgYWNjID0gLWRhdGEuc3RpZmYgKiBkYXRhLm9mZiAtIGRhdGEuZGFtcCAqIGRhdGEudmVsCgkJZGF0YS52ZWwgKz0gYWNjICogZHQKCQlkYXRhLm9mZiArPSBkYXRhLnZlbCAqIGR0CgoJCWlmIGRhdGEub2ZmLk1hZ25pdHVkZSA+IE1BWF9TVEFSX09GRlNFVCAqICgwLjUgKyBkZXB0aCAqIDAuNSkgdGhlbgoJCQlkYXRhLm9mZiA9IGRhdGEub2ZmLlVuaXQgKiBNQVhfU1RBUl9PRkZTRVQgKiAoMC41ICsgZGVwdGggKiAwLjUpCgkJZW5kCgkJaWYgZGF0YS52ZWwuTWFnbml0dWRlID4gNzAwIHRoZW4KCQkJZGF0YS52ZWwgPSBkYXRhLnZlbC5Vbml0ICogNzAwCgkJZW5kCgoJCWxvY2FsIHB1c2hBY2MgPSAoZGF0YS5wdXNoVGFyZ2V0IC0gZGF0YS5wdXNoT2ZmKSAqIGRhdGEucHVzaFN0aWZmIC0gZGF0YS5wdXNoVmVsICogZGF0YS5wdXNoRGFtcAoJCWRhdGEucHVzaFZlbCArPSBwdXNoQWNjICogZHQKCQlkYXRhLnB1c2hPZmYgKz0gZGF0YS5wdXNoVmVsICogZHQKCgkJbG9jYWwgcE1heCA9IE1FVEVPUl9QVVNIX0RJU1QgKiAoMC41ICsgZGVwdGggKiAwLjUpICogMS45CgkJaWYgZGF0YS5wdXNoT2ZmLk1hZ25pdHVkZSA+IHBNYXggdGhlbgoJCQlkYXRhLnB1c2hPZmYgPSBkYXRhLnB1c2hPZmYuVW5pdCAqIHBNYXgKCQllbmQKCQlpZiBkYXRhLnB1c2hWZWwuTWFnbml0dWRlID4gMTgwMCB0aGVuCgkJCWRhdGEucHVzaFZlbCA9IGRhdGEucHVzaFZlbC5Vbml0ICogMTgwMAoJCWVuZAoKCQlpZiBkYXRhLmdsb3dpbmcgdGhlbgoJCQlkYXRhLmdsb3dQcm9ncmVzcyArPSBkdCAvIGRhdGEuZ2xvd0R1cmF0aW9uCgkJCWlmIGRhdGEuZ2xvd1Byb2dyZXNzID49IDEgdGhlbgoJCQkJZGF0YS5nbG93aW5nID0gZmFsc2UKCQkJCWRhdGEuZ2xvd1N0cmVuZ3RoID0gMAoJCQkJZGF0YS5nbG93VGltZXIgPSBybmc6TmV4dE51bWJlcig1LCAxOCkKCQkJZWxzZQoJCQkJZGF0YS5nbG93U3RyZW5ndGggPSBtYXRoLnNpbihkYXRhLmdsb3dQcm9ncmVzcyAqIG1hdGgucGkpCgkJCWVuZAoJCWVsc2UKCQkJZGF0YS5nbG93VGltZXIgLT0gZHQKCQkJaWYgZGF0YS5nbG93VGltZXIgPD0gMCB0aGVuCgkJCQlkYXRhLmdsb3dpbmcgPSB0cnVlCgkJCQlkYXRhLmdsb3dQcm9ncmVzcyA9IDAKCQkJZW5kCgkJZW5kCgoJCWlmIGRhdGEuZmxhc2ggPiAwIHRoZW4KCQkJZGF0YS5mbGFzaCAtPSBkdCAqIDEuNgoJCQlpZiBkYXRhLmZsYXNoIDwgMCB0aGVuCgkJCQlkYXRhLmZsYXNoID0gMAoJCQllbmQKCQllbmQKCgkJbG9jYWwgZmxpY2sgPSBtYXRoLnNpbihjbG9jayAqIGRhdGEuZmxpY2tlclNwZWVkICogbWF0aC5waSAqIDIgKyBkYXRhLmZsaWNrZXJQaGFzZSkgKiBkYXRhLmZsaWNrZXJBbXAKCQlsb2NhbCBnID0gZGF0YS5nbG93U3RyZW5ndGggKiAoMC4zNSArIGRlcHRoICogMC42NSkgKyBkYXRhLmZsYXNoICogKDAuNSArIGRlcHRoICogMC41KQoJCWxvY2FsIGEgPSBkYXRhLmZhZGUKCgkJbG9jYWwgc3dheVggPSBtYXRoLnNpbihjbG9jayAqIGRhdGEuc3dheUZyZXFYICogbWF0aC5waSAqIDIgKyBkYXRhLnN3YXlQaGFzZVgpICogZGF0YS5zd2F5QW1wCgkJbG9jYWwgc3dheVkgPSBtYXRoLmNvcyhjbG9jayAqIGRhdGEuc3dheUZyZXFZICogbWF0aC5waSAqIDIgKyBkYXRhLnN3YXlQaGFzZVkpICogZGF0YS5zd2F5QW1wCgoJCWRhdGEuY29udGFpbmVyLlBvc2l0aW9uID0gVURpbTIubmV3KAoJCQlkYXRhLmFuY2hvci5YLAoJCQlkYXRhLm9mZi5YICsgZGF0YS5wdXNoT2ZmLlggKyBzd2F5WCwKCQkJZGF0YS5hbmNob3IuWSwKCQkJZGF0YS5vZmYuWSArIGRhdGEucHVzaE9mZi5ZICsgc3dheVkKCQkpCgoJCWxvY2FsIG1vdGlvbkFuZ2xlID0gMAoJCWlmIHNwZWVkID4gNDAgdGhlbgoJCQltb3Rpb25BbmdsZSA9IG1hdGguZGVnKG1hdGguYXRhbjIoZ3ZlbC5ZLCBndmVsLlgpKQoJCWVuZAoJCWxvY2FsIGFsaWduVCA9IG1hdGguY2xhbXAoKHNwZWVkIC0gNDApIC8gNzAwLCAwLCAxKQoJCWRhdGEucm90QWxpZ24gKz0gKGFsaWduVCAtIGRhdGEucm90QWxpZ24pICogbWF0aC5taW4oZHQgKiA4LCAxKQoJCWxvY2FsIHdvYmJsZSA9IG1hdGguc2luKGNsb2NrICogZGF0YS53b2JGcmVxICsgZGF0YS53b2JQaGFzZSkKCQkJKiBtYXRoLmNsYW1wKHNwZWVkICogMC4wMDQsIDAsIDYpCgkJCSogKDAuMyArIGRlcHRoICogMC43KQoJCWRhdGEuY29udGFpbmVyLlJvdGF0aW9uID0gbGVycEFuZ2xlKGRhdGEuYmFzZVJvdCwgbW90aW9uQW5nbGUsIGRhdGEucm90QWxpZ24pICsgd29iYmxlCgoJCWxvY2FsIHRhcmdldFN0cmV0Y2ggPSBtYXRoLmNsYW1wKChzcGVlZCAtIDEyMCkgLyAyNDAwLCAwLCAxKSAqIDAuOAoJCWRhdGEuc3RyZXRjaCArPSAodGFyZ2V0U3RyZXRjaCAtIGRhdGEuc3RyZXRjaCkgKiBtYXRoLm1pbihkdCAqIDgsIDEpCgkJbG9jYWwgc3QgPSBkYXRhLnN0cmV0Y2gKCgkJZGF0YS5jb3JlLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KAoJCQlkYXRhLmJhc2VTaXplICogKDEgKyBzdCksCgkJCWRhdGEuYmFzZVNpemUgKiAoMSAtIHN0ICogMC4zNSkKCQkpCgoJCWxvY2FsIGNvcmVUID0gbWF0aC5jbGFtcChkYXRhLmJhc2VUcmFuc3BhcmVuY3kgLSBmbGljayAtIGcgKiAwLjQsIDAuMDUsIDEpCgkJZGF0YS5jb3JlLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxIC0gKDEgLSBjb3JlVCkgKiBhCgoJCWxvY2FsIHJheVJlc3QgPSAoZGF0YS5pc0JyaWdodCBhbmQgMC44NSBvciAxKSArICgxIC0gZGVwdGgpICogMC4xCgkJbG9jYWwgcmF5VCA9IG1hdGguY2xhbXAocmF5UmVzdCAtIGcgKiAwLjY1LCAwLjMsIDEpCgkJbG9jYWwgcmF5SCA9IGRhdGEuYmFzZVJheUxlbiAqICgxICsgc3QpCgkJbG9jYWwgcmF5ViA9IGRhdGEuYmFzZVJheUxlbiAqICgxIC0gc3QgKiAwLjMpCgkJbG9jYWwgcmF5RCA9IGRhdGEuYmFzZVJheUxlbiAqICgxICsgc3QgKiAwLjM1KQoJCWZvciBpLCByYXkgaW4gaXBhaXJzKGRhdGEucmF5cykgZG8KCQkJcmF5LkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxIC0gKDEgLSByYXlUKSAqIGEKCQkJbG9jYWwgbGVuID0gKGkgPT0gMSBvciBpID09IDMpIGFuZCAoaSA9PSAxIGFuZCByYXlIIG9yIHJheVYpIG9yIHJheUQKCQkJcmF5LlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KGxlbiwgbWF0aC5tYXgoMSwgZGF0YS5iYXNlU2l6ZSAqIDAuMykpCgkJZW5kCgllbmQKCglmb3IgaSA9ICNzcGFya3MsIDEsIC0xIGRvCgkJbG9jYWwgcyA9IHNwYXJrc1tpXQoJCXMubGlmZSArPSBkdAoJCWlmIHMubGlmZSA+PSBzLm1heExpZmUgdGhlbgoJCQlzLmZyYW1lOkRlc3Ryb3koKQoJCQl0YWJsZS5yZW1vdmUoc3BhcmtzLCBpKQoJCWVsc2UKCQkJcy5wb3MgKz0gcy52ZWwgKiBkdAoJCQlzLnZlbCAqPSAxIC0gbWF0aC5taW4oMi41ICogZHQsIDEpCgkJCWxvY2FsIGYgPSAxIC0gcy5saWZlIC8gcy5tYXhMaWZlCgkJCXMuZnJhbWUuUG9zaXRpb24gPSBVRGltMi5mcm9tT2Zmc2V0KHMucG9zLlgsIHMucG9zLlkpCgkJCXMuZnJhbWUuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEgLSAoMSAtIHMuYmFzZVQpICogZgoJCQlsb2NhbCBzeiA9IHMuc2l6ZSAqICgwLjQgKyAwLjYgKiBmKQoJCQlzLmZyYW1lLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KHN6LCBzeikKCQllbmQKCWVuZAplbmQKCmVudi5YVFdfUkFEQVJfSEIgPSBSdW5TZXJ2aWNlLkhlYXJ0YmVhdDpDb25uZWN0KHVwZGF0ZSkKZW5kLCBmdW5jdGlvbihlKQogICAgbG9jYWwgdGIgPSAiIgogICAgcGNhbGwoZnVuY3Rpb24oKSB0YiA9IGRlYnVnLnRyYWNlYmFjaygiIiwgMikgZW5kKQogICAgcmV0dXJuIHRvc3RyaW5nKGUpIC4uICJcbiIgLi4gdGIKZW5kKQppZiBub3QgX194dHdfb2sgdGhlbgogICAgbG9jYWwgZXJyU3RyID0gdG9zdHJpbmcoX194dHdfZXJyKQogICAgaWYgX194dHdfc2VsZiBhbmQgX194dHdfc2VsZi5TZXRBdHRyaWJ1dGUgdGhlbgogICAgICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19lcnJvciIsIGVyclN0cikgZW5kKQogICAgZW5kCiAgICBwY2FsbChmdW5jdGlvbigpIHdhcm4oIlt4dHddIEZBSUw6ICIgLi4gX194dHdfbmFtZSAuLiAiICgiIC4uIF9feHR3X2NscyAuLiAiKTogIiAuLiBlcnJTdHIpIGVuZCkKZW5k")
        local prelude = "local script = ...\n"
        local fn, cerr = loadstring(prelude .. src, "@xtw-m:" .. tostring(inst.Name))
        if not fn then
            manualFail = manualFail + 1
            runErrors[#runErrors + 1] = "Background (load): " .. tostring(cerr)
        else
            local thread = coroutine.create(fn)
            local okRun, runErr = coroutine.resume(thread, inst)
            if okRun then ranManual = ranManual + 1
            else
                manualFail = manualFail + 1
                runErrors[#runErrors + 1] = "Background (resume): " .. tostring(runErr)
            end
        end
    end
end
do
    local inst = n[5]
    local hasRan = false
    pcall(function() hasRan = inst:GetAttribute("xtw_ran") and true or false end)
    if not hasRan then
        local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkRyYWcgTWVjaGFuaXNtIiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgVXNlcklucHV0U2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVXNlcklucHV0U2VydmljZSIpCmxvY2FsIFJ1blNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlJ1blNlcnZpY2UiKQoKbG9jYWwgRlJBTUVfTkFNRSA9IG5pbAoKbG9jYWwgZnVuY3Rpb24gZ2V0RW52KCkKCWxvY2FsIG9rLCBlID0gcGNhbGwoZnVuY3Rpb24oKSByZXR1cm4gZ2V0Z2VudiBhbmQgZ2V0Z2VudigpIGVuZCkKCWlmIG9rIGFuZCB0eXBlKGUpID09ICJ0YWJsZSIgdGhlbiByZXR1cm4gZSBlbmQKCXJldHVybiBfRwplbmQKbG9jYWwgZW52ID0gZ2V0RW52KCkKCmxvY2FsIGd1aSA9IG5pbAoKaWYgZW52IGFuZCBlbnYuWFRXX0RSQUdfVEFSR0VUIHRoZW4KCWxvY2FsIHQgPSBlbnYuWFRXX0RSQUdfVEFSR0VUCglpZiB0eXBlb2YodCkgPT0gIkluc3RhbmNlIiBhbmQgdDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCQlndWkgPSB0CgllbmQKZW5kCgppZiBub3QgZ3VpIGFuZCBGUkFNRV9OQU1FIHRoZW4KCWxvY2FsIHBsYXllciA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpLkxvY2FsUGxheWVyCglsb2NhbCBwZyA9IHBsYXllcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlBsYXllckd1aSIpCglpZiBwZyB0aGVuCgkJZm9yIF8sIGQgaW4gaXBhaXJzKHBnOkdldERlc2NlbmRhbnRzKCkpIGRvCgkJCWlmIGQ6SXNBKCJHdWlPYmplY3QiKSBhbmQgZC5OYW1lID09IEZSQU1FX05BTUUgdGhlbgoJCQkJZ3VpID0gZAoJCQkJYnJlYWsKCQkJZW5kCgkJZW5kCgllbmQKZW5kCgppZiBub3QgZ3VpIHRoZW4KCXBjYWxsKGZ1bmN0aW9uKCkKCQlsb2NhbCBwID0gc2NyaXB0IGFuZCBzY3JpcHQuUGFyZW50CgkJaWYgcCBhbmQgcDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCQkJZ3VpID0gcAoJCWVuZAoJZW5kKQplbmQKCmlmIG5vdCBndWkgdGhlbgoJd2FybigiW0RyYWddIE5vIHRhcmdldCBmcmFtZS4iKQoJcmV0dXJuCmVuZAoKaWYgZW52LlhUV19EUkFHX0hCIHRoZW4KCXBjYWxsKGZ1bmN0aW9uKCkgZW52LlhUV19EUkFHX0hCOkRpc2Nvbm5lY3QoKSBlbmQpCmVuZAoKbG9jYWwgZHJhZ2dpbmcgPSBmYWxzZQpsb2NhbCBkcmFnSW5wdXQKbG9jYWwgZHJhZ1N0YXJ0CmxvY2FsIHN0YXJ0UG9zCgpsb2NhbCBsYXN0TW91c2VQb3MKbG9jYWwgbGFzdEdvYWxQb3MKbG9jYWwgRFJBR19TUEVFRCA9IDQwCgpsb2NhbCBmdW5jdGlvbiBMZXJwKGEsIGIsIG0pCglyZXR1cm4gYSArIChiIC0gYSkgKiBtCmVuZAoKbG9jYWwgZnVuY3Rpb24gVXBkYXRlKGR0KQoJaWYgbm90IHN0YXJ0UG9zIHRoZW4gcmV0dXJuIGVuZAoKCWlmIGRyYWdnaW5nIHRoZW4KCQlsb2NhbCBkZWx0YSA9IChsYXN0TW91c2VQb3MgLSBVc2VySW5wdXRTZXJ2aWNlOkdldE1vdXNlTG9jYXRpb24oKSkKCQlsb2NhbCB4R29hbCA9IChzdGFydFBvcy5YLk9mZnNldCAtIGRlbHRhLlgpCgkJbG9jYWwgeUdvYWwgPSAoc3RhcnRQb3MuWS5PZmZzZXQgLSBkZWx0YS5ZKQoJCWxhc3RHb2FsUG9zID0gVURpbTIubmV3KHN0YXJ0UG9zLlguU2NhbGUsIHhHb2FsLCBzdGFydFBvcy5ZLlNjYWxlLCB5R29hbCkKCgkJZ3VpLlBvc2l0aW9uID0gVURpbTIubmV3KAoJCQlzdGFydFBvcy5YLlNjYWxlLAoJCQlMZXJwKGd1aS5Qb3NpdGlvbi5YLk9mZnNldCwgeEdvYWwsIGR0ICogRFJBR19TUEVFRCksCgkJCXN0YXJ0UG9zLlkuU2NhbGUsCgkJCUxlcnAoZ3VpLlBvc2l0aW9uLlkuT2Zmc2V0LCB5R29hbCwgZHQgKiBEUkFHX1NQRUVEKQoJCSkKCWVsc2UKCQlpZiBsYXN0R29hbFBvcyB0aGVuCgkJCWd1aS5Qb3NpdGlvbiA9IFVEaW0yLm5ldygKCQkJCXN0YXJ0UG9zLlguU2NhbGUsCgkJCQlMZXJwKGd1aS5Qb3NpdGlvbi5YLk9mZnNldCwgbGFzdEdvYWxQb3MuWC5PZmZzZXQsIGR0ICogRFJBR19TUEVFRCksCgkJCQlzdGFydFBvcy5ZLlNjYWxlLAoJCQkJTGVycChndWkuUG9zaXRpb24uWS5PZmZzZXQsIGxhc3RHb2FsUG9zLlkuT2Zmc2V0LCBkdCAqIERSQUdfU1BFRUQpCgkJCSkKCQllbmQKCWVuZAplbmQKCmd1aS5JbnB1dEJlZ2FuOkNvbm5lY3QoZnVuY3Rpb24oaW5wdXQpCglpZiBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Nb3VzZUJ1dHRvbjEKCQlvciBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Ub3VjaCB0aGVuCgkJZHJhZ2dpbmcgPSB0cnVlCgkJZHJhZ1N0YXJ0ID0gaW5wdXQuUG9zaXRpb24KCQlzdGFydFBvcyA9IGd1aS5Qb3NpdGlvbgoJCWxhc3RNb3VzZVBvcyA9IFVzZXJJbnB1dFNlcnZpY2U6R2V0TW91c2VMb2NhdGlvbigpCgoJCWlucHV0LkNoYW5nZWQ6Q29ubmVjdChmdW5jdGlvbigpCgkJCWlmIGlucHV0LlVzZXJJbnB1dFN0YXRlID09IEVudW0uVXNlcklucHV0U3RhdGUuRW5kIHRoZW4KCQkJCWRyYWdnaW5nID0gZmFsc2UKCQkJZW5kCgkJZW5kKQoJZW5kCmVuZCkKCmd1aS5JbnB1dENoYW5nZWQ6Q29ubmVjdChmdW5jdGlvbihpbnB1dCkKCWlmIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLk1vdXNlTW92ZW1lbnQKCQlvciBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Ub3VjaCB0aGVuCgkJZHJhZ0lucHV0ID0gaW5wdXQKCWVuZAplbmQpCgplbnYuWFRXX0RSQUdfSEIgPSBSdW5TZXJ2aWNlLkhlYXJ0YmVhdDpDb25uZWN0KFVwZGF0ZSkKZW5kLCBmdW5jdGlvbihlKQogICAgbG9jYWwgdGIgPSAiIgogICAgcGNhbGwoZnVuY3Rpb24oKSB0YiA9IGRlYnVnLnRyYWNlYmFjaygiIiwgMikgZW5kKQogICAgcmV0dXJuIHRvc3RyaW5nKGUpIC4uICJcbiIgLi4gdGIKZW5kKQppZiBub3QgX194dHdfb2sgdGhlbgogICAgbG9jYWwgZXJyU3RyID0gdG9zdHJpbmcoX194dHdfZXJyKQogICAgaWYgX194dHdfc2VsZiBhbmQgX194dHdfc2VsZi5TZXRBdHRyaWJ1dGUgdGhlbgogICAgICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19lcnJvciIsIGVyclN0cikgZW5kKQogICAgZW5kCiAgICBwY2FsbChmdW5jdGlvbigpIHdhcm4oIlt4dHddIEZBSUw6ICIgLi4gX194dHdfbmFtZSAuLiAiICgiIC4uIF9feHR3X2NscyAuLiAiKTogIiAuLiBlcnJTdHIpIGVuZCkKZW5k")
        local prelude = "local script = ...\n"
        local fn, cerr = loadstring(prelude .. src, "@xtw-m:" .. tostring(inst.Name))
        if not fn then
            manualFail = manualFail + 1
            runErrors[#runErrors + 1] = "Drag Mechanism (load): " .. tostring(cerr)
        else
            local thread = coroutine.create(fn)
            local okRun, runErr = coroutine.resume(thread, inst)
            if okRun then ranManual = ranManual + 1
            else
                manualFail = manualFail + 1
                runErrors[#runErrors + 1] = "Drag Mechanism (resume): " .. tostring(runErr)
            end
        end
    end
end
do
    local inst = n[27]
    local hasRan = false
    pcall(function() hasRan = inst:GetAttribute("xtw_ran") and true or false end)
    if not hasRan then
        local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIk1vdmVtZW50IiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgVXNlcklucHV0U2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVXNlcklucHV0U2VydmljZSIpCmxvY2FsIFJ1blNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlJ1blNlcnZpY2UiKQpsb2NhbCBUd2VlblNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlR3ZWVuU2VydmljZSIpCgpsb2NhbCBGUkFNRV9OQU1FID0gbmlsCgpsb2NhbCBmdW5jdGlvbiBnZXRFbnYoKQoJbG9jYWwgb2ssIGUgPSBwY2FsbChmdW5jdGlvbigpIHJldHVybiBnZXRnZW52IGFuZCBnZXRnZW52KCkgZW5kKQoJaWYgb2sgYW5kIHR5cGUoZSkgPT0gInRhYmxlIiB0aGVuIHJldHVybiBlIGVuZAoJcmV0dXJuIF9HCmVuZApsb2NhbCBlbnYgPSBnZXRFbnYoKQoKbG9jYWwgZ3VpID0gbmlsCgppZiBlbnYgYW5kIGVudi5YVFdfRVhQQU5EX1RBUkdFVCB0aGVuCglsb2NhbCB0ID0gZW52LlhUV19FWFBBTkRfVEFSR0VUCglpZiB0eXBlb2YodCkgPT0gIkluc3RhbmNlIiBhbmQgdDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCQlndWkgPSB0CgllbmQKZW5kCgppZiBub3QgZ3VpIGFuZCBGUkFNRV9OQU1FIHRoZW4KCWxvY2FsIHBsYXllciA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpLkxvY2FsUGxheWVyCglsb2NhbCBwZyA9IHBsYXllcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlBsYXllckd1aSIpCglpZiBwZyB0aGVuCgkJZm9yIF8sIGQgaW4gaXBhaXJzKHBnOkdldERlc2NlbmRhbnRzKCkpIGRvCgkJCWlmIGQ6SXNBKCJHdWlPYmplY3QiKSBhbmQgZC5OYW1lID09IEZSQU1FX05BTUUgdGhlbgoJCQkJZ3VpID0gZAoJCQkJYnJlYWsKCQkJZW5kCgkJZW5kCgllbmQKZW5kCgppZiBub3QgZ3VpIHRoZW4KCXBjYWxsKGZ1bmN0aW9uKCkKCQlsb2NhbCBwID0gc2NyaXB0IGFuZCBzY3JpcHQuUGFyZW50CgkJaWYgcCBhbmQgcDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCQkJZ3VpID0gcAoJCWVuZAoJZW5kKQplbmQKCmlmIG5vdCBndWkgdGhlbgoJd2FybigiW0V4cGFuZF0gTm8gdGFyZ2V0IGZyYW1lLiIpCglyZXR1cm4KZW5kCgppZiBlbnYuWFRXX0VYUEFORF9IQiB0aGVuCglwY2FsbChmdW5jdGlvbigpIGVudi5YVFdfRVhQQU5EX0hCOkRpc2Nvbm5lY3QoKSBlbmQpCmVuZAoKbG9jYWwgcGFyZW50ID0gZ3VpLlBhcmVudAoKZ3VpLkFjdGl2ZSA9IHRydWUKCmxvY2FsIHBhcmVudERyYWcgPSBuaWwKZG8KCWxvY2FsIG5vZGUgPSBwYXJlbnQKCXdoaWxlIG5vZGUgZG8KCQlsb2NhbCBzID0gbm9kZTpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIkxvY2FsU2NyaXB0IikKCQlpZiBzIGFuZCBzIH49IHNjcmlwdCB0aGVuCgkJCXBhcmVudERyYWcgPSBzCgkJCWJyZWFrCgkJZW5kCgkJbm9kZSA9IG5vZGUuUGFyZW50CgllbmQKZW5kCgpmb3IgXywgYyBpbiBpcGFpcnMoZ3VpOkdldENoaWxkcmVuKCkpIGRvCglpZiBjLk5hbWUgPT0gIkhlYWRlciIgYW5kIGM6SXNBKCJUZXh0QnV0dG9uIikgdGhlbgoJCWM6RGVzdHJveSgpCgllbmQKZW5kCgpsb2NhbCBoZWFkZXIgPSBJbnN0YW5jZS5uZXcoIlRleHRCdXR0b24iKQpoZWFkZXIuTmFtZSA9ICJIZWFkZXIiCmhlYWRlci5UZXh0ID0gIiIKaGVhZGVyLkF1dG9CdXR0b25Db2xvciA9IGZhbHNlCmhlYWRlci5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQpoZWFkZXIuQWN0aXZlID0gdHJ1ZQpoZWFkZXIuWkluZGV4ID0gMTAKaGVhZGVyLlNpemUgPSBVRGltMi5uZXcoMSwgMCwgMSwgMCkKaGVhZGVyLlBhcmVudCA9IGd1aQoKbG9jYWwgcm93cyA9IHt9CmZvciBfLCBjIGluIGlwYWlycyhndWk6R2V0Q2hpbGRyZW4oKSkgZG8KCWlmIGM6SXNBKCJGcmFtZSIpIGFuZCBjIH49IGhlYWRlciBhbmQgYzpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIkxvY2FsU2NyaXB0IikgdGhlbgoJCXJvd3NbI3Jvd3MgKyAxXSA9IGMKCWVuZAplbmQKdGFibGUuc29ydChyb3dzLCBmdW5jdGlvbihhLCBiKQoJaWYgYS5MYXlvdXRPcmRlciB+PSBiLkxheW91dE9yZGVyIHRoZW4KCQlyZXR1cm4gYS5MYXlvdXRPcmRlciA8IGIuTGF5b3V0T3JkZXIKCWVuZAoJcmV0dXJuIGEuTmFtZSA8IGIuTmFtZQplbmQpCgpmb3IgXywgciBpbiBpcGFpcnMocm93cykgZG8KCXIuVmlzaWJsZSA9IGZhbHNlCmVuZAoKbG9jYWwgZHJhZ2dpbmcgPSBmYWxzZQpsb2NhbCBkcmFnSW5wdXQKbG9jYWwgZHJhZ1N0YXJ0CmxvY2FsIHN0YXJ0UG9zCgpsb2NhbCBsYXN0TW91c2VQb3MKbG9jYWwgbGFzdEdvYWxQb3MKbG9jYWwgRFJBR19TUEVFRCA9IDQwCgpsb2NhbCBleHBhbmRlZCA9IGZhbHNlCmxvY2FsIGFuaW1hdGluZyA9IGZhbHNlCmxvY2FsIGNvbGxhcHNlZEhlaWdodCA9IG5pbApsb2NhbCByb3dIZWlnaHRzID0ge30KbG9jYWwgZXhwYW5kZWRIZWlnaHQgPSAwCmxvY2FsIHByZXNzUG9zID0gbmlsCmxvY2FsIG1vdmVkID0gZmFsc2UKCmZ1bmN0aW9uIExlcnAoYSwgYiwgbSkKCXJldHVybiBhICsgKGIgLSBhKSAqIG0KZW5kCgpsb2NhbCBmdW5jdGlvbiBjbGFtcEdvYWwocG9zKQoJaWYgbm90IHBhcmVudCB0aGVuIHJldHVybiBwb3MgZW5kCgoJbG9jYWwgcHcgPSBwYXJlbnQuQWJzb2x1dGVTaXplLlgKCWxvY2FsIHBoID0gcGFyZW50LkFic29sdXRlU2l6ZS5ZCglsb2NhbCBndyA9IGd1aS5BYnNvbHV0ZVNpemUuWAoJbG9jYWwgZ2ggPSBndWkuQWJzb2x1dGVTaXplLlkKCWxvY2FsIGF4ID0gZ3VpLkFuY2hvclBvaW50LlgKCWxvY2FsIGF5ID0gZ3VpLkFuY2hvclBvaW50LlkKCglsb2NhbCBtaW5YID0gYXggKiBndyAtIHBvcy5YLlNjYWxlICogcHcKCWxvY2FsIG1heFggPSBtaW5YICsgKHB3IC0gZ3cpCglsb2NhbCBtaW5ZID0gYXkgKiBnaCAtIHBvcy5ZLlNjYWxlICogcGgKCWxvY2FsIG1heFkgPSBtaW5ZICsgKHBoIC0gZ2gpCgoJbG9jYWwgZnVuY3Rpb24gZml0KHYsIGxvLCBoaSkKCQlpZiBsbyA+IGhpIHRoZW4KCQkJcmV0dXJuIChsbyArIGhpKSAqIDAuNQoJCWVuZAoJCXJldHVybiBtYXRoLmNsYW1wKHYsIGxvLCBoaSkKCWVuZAoKCXJldHVybiBVRGltMi5uZXcoCgkJcG9zLlguU2NhbGUsCgkJZml0KHBvcy5YLk9mZnNldCwgbWluWCwgbWF4WCksCgkJcG9zLlkuU2NhbGUsCgkJZml0KHBvcy5ZLk9mZnNldCwgbWluWSwgbWF4WSkKCSkKZW5kCgpsb2NhbCBmdW5jdGlvbiBjYXB0dXJlU2l6ZXMoKQoJY29sbGFwc2VkSGVpZ2h0ID0gZ3VpLkFic29sdXRlU2l6ZS5ZCglpZiBjb2xsYXBzZWRIZWlnaHQgPD0gMCB0aGVuCgkJY29sbGFwc2VkSGVpZ2h0ID0gMzAKCWVuZAoJZm9yIGksIHIgaW4gaXBhaXJzKHJvd3MpIGRvCgkJcm93SGVpZ2h0c1tpXSA9IG1hdGgubWF4KHIuQWJzb2x1dGVTaXplLlksIDIwKQoJZW5kCgloZWFkZXIuU2l6ZSA9IFVEaW0yLm5ldygxLCAwLCAwLCBjb2xsYXBzZWRIZWlnaHQpCmVuZAoKbG9jYWwgZnVuY3Rpb24gbGF5b3V0Um93cygpCglsb2NhbCB5ID0gY29sbGFwc2VkSGVpZ2h0ICsgNgoJZm9yIGksIHIgaW4gaXBhaXJzKHJvd3MpIGRvCgkJci5Qb3NpdGlvbiA9IFVEaW0yLm5ldygwLCA2LCAwLCB5KQoJCXIuU2l6ZSA9IFVEaW0yLm5ldygxLCAtMTIsIDAsIHJvd0hlaWdodHNbaV0pCgkJeSA9IHkgKyByb3dIZWlnaHRzW2ldICsgNgoJZW5kCglleHBhbmRlZEhlaWdodCA9IHkKZW5kCgpsb2NhbCBmdW5jdGlvbiB0b2dnbGVFeHBhbmQoKQoJaWYgYW5pbWF0aW5nIG9yIG5vdCBwYXJlbnQgdGhlbiByZXR1cm4gZW5kCglpZiBub3QgY29sbGFwc2VkSGVpZ2h0IHRoZW4KCQljYXB0dXJlU2l6ZXMoKQoJZW5kCgoJYW5pbWF0aW5nID0gdHJ1ZQoKCWxvY2FsIHdpbGxFeHBhbmQgPSBub3QgZXhwYW5kZWQKCWxvY2FsIHRhcmdldEggPSB3aWxsRXhwYW5kIGFuZCBleHBhbmRlZEhlaWdodCBvciBjb2xsYXBzZWRIZWlnaHQKCglpZiB3aWxsRXhwYW5kIHRoZW4KCQlsYXlvdXRSb3dzKCkKCQlmb3IgXywgciBpbiBpcGFpcnMocm93cykgZG8KCQkJci5WaXNpYmxlID0gdHJ1ZQoJCWVuZAoJZW5kCgoJbG9jYWwgcGggPSBwYXJlbnQuQWJzb2x1dGVTaXplLlkKCWxvY2FsIHNjYWxlWSA9IGd1aS5Qb3NpdGlvbi5ZLlNjYWxlCglsb2NhbCBheSA9IGd1aS5BbmNob3JQb2ludC5ZCglsb2NhbCBjdXJUb3AgPSBndWkuQWJzb2x1dGVQb3NpdGlvbi5ZIC0gcGFyZW50LkFic29sdXRlUG9zaXRpb24uWQoJbG9jYWwgdGFyZ2V0VG9wID0gY3VyVG9wCglpZiB0YXJnZXRUb3AgKyB0YXJnZXRIID4gcGggdGhlbgoJCXRhcmdldFRvcCA9IG1hdGgubWF4KHBoIC0gdGFyZ2V0SCwgMCkKCWVuZAoKCWd1aS5DbGlwc0Rlc2NlbmRhbnRzID0gdHJ1ZQoKCVR3ZWVuU2VydmljZTpDcmVhdGUoZ3VpLCBUd2VlbkluZm8ubmV3KDAuMjUsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uT3V0KSwgewoJCVNpemUgPSBVRGltMi5uZXcoZ3VpLlNpemUuWC5TY2FsZSwgZ3VpLlNpemUuWC5PZmZzZXQsIDAsIHRhcmdldEgpLAoJCVBvc2l0aW9uID0gVURpbTIubmV3KGd1aS5Qb3NpdGlvbi5YLlNjYWxlLCBndWkuUG9zaXRpb24uWC5PZmZzZXQsIHNjYWxlWSwgdGFyZ2V0VG9wICsgYXkgKiB0YXJnZXRIIC0gc2NhbGVZICogcGgpLAoJfSk6UGxheSgpCgoJdGFzay5kZWxheSgwLjI2LCBmdW5jdGlvbigpCgkJaWYgd2lsbEV4cGFuZCB0aGVuCgkJCWd1aS5DbGlwc0Rlc2NlbmRhbnRzID0gZmFsc2UKCQllbHNlCgkJCWZvciBfLCByIGluIGlwYWlycyhyb3dzKSBkbwoJCQkJci5WaXNpYmxlID0gZmFsc2UKCQkJZW5kCgkJCWd1aS5DbGlwc0Rlc2NlbmRhbnRzID0gZmFsc2UKCQllbmQKCQlsYXN0R29hbFBvcyA9IGd1aS5Qb3NpdGlvbgoJCWFuaW1hdGluZyA9IGZhbHNlCgllbmQpCgoJZXhwYW5kZWQgPSB3aWxsRXhwYW5kCmVuZAoKZnVuY3Rpb24gVXBkYXRlKGR0KQoJaWYgYW5pbWF0aW5nIHRoZW4gcmV0dXJuIGVuZAoJaWYgbm90IHN0YXJ0UG9zIHRoZW4gcmV0dXJuIGVuZAoJbG9jYWwgYSA9IG1hdGgubWluKGR0ICogRFJBR19TUEVFRCwgMSkKCglpZiBkcmFnZ2luZyB0aGVuCgkJbG9jYWwgbW91c2UgPSBVc2VySW5wdXRTZXJ2aWNlOkdldE1vdXNlTG9jYXRpb24oKQoJCWlmIG5vdCBtb3ZlZCBhbmQgcHJlc3NQb3MKCQkJYW5kIChtYXRoLmFicyhtb3VzZS5YIC0gcHJlc3NQb3MuWCkgPiA1IG9yIG1hdGguYWJzKG1vdXNlLlkgLSBwcmVzc1Bvcy5ZKSA+IDUpIHRoZW4KCQkJbW92ZWQgPSB0cnVlCgkJZW5kCgkJbG9jYWwgZGVsdGEgPSAobGFzdE1vdXNlUG9zIC0gbW91c2UpCgkJbG9jYWwgeEdvYWwgPSAoc3RhcnRQb3MuWC5PZmZzZXQgLSBkZWx0YS5YKQoJCWxvY2FsIHlHb2FsID0gKHN0YXJ0UG9zLlkuT2Zmc2V0IC0gZGVsdGEuWSkKCQlsYXN0R29hbFBvcyA9IGNsYW1wR29hbChVRGltMi5uZXcoc3RhcnRQb3MuWC5TY2FsZSwgeEdvYWwsIHN0YXJ0UG9zLlkuU2NhbGUsIHlHb2FsKSkKCgkJZ3VpLlBvc2l0aW9uID0gVURpbTIubmV3KAoJCQlzdGFydFBvcy5YLlNjYWxlLAoJCQlMZXJwKGd1aS5Qb3NpdGlvbi5YLk9mZnNldCwgbGFzdEdvYWxQb3MuWC5PZmZzZXQsIGEpLAoJCQlzdGFydFBvcy5ZLlNjYWxlLAoJCQlMZXJwKGd1aS5Qb3NpdGlvbi5ZLk9mZnNldCwgbGFzdEdvYWxQb3MuWS5PZmZzZXQsIGEpCgkJKQoJZWxzZQoJCWlmIGxhc3RHb2FsUG9zIHRoZW4KCQkJZ3VpLlBvc2l0aW9uID0gVURpbTIubmV3KAoJCQkJc3RhcnRQb3MuWC5TY2FsZSwKCQkJCUxlcnAoZ3VpLlBvc2l0aW9uLlguT2Zmc2V0LCBsYXN0R29hbFBvcy5YLk9mZnNldCwgYSksCgkJCQlzdGFydFBvcy5ZLlNjYWxlLAoJCQkJTGVycChndWkuUG9zaXRpb24uWS5PZmZzZXQsIGxhc3RHb2FsUG9zLlkuT2Zmc2V0LCBhKQoJCQkpCgkJZW5kCgllbmQKZW5kCgpsb2NhbCBpbml0aWFsaXplZCA9IGZhbHNlCmxvY2FsIGZ1bmN0aW9uIGluaXRFeHBhbmRlZCgpCglpZiBpbml0aWFsaXplZCB0aGVuIHJldHVybiBlbmQKCWlmIG5vdCBwYXJlbnQgb3IgZ3VpLkFic29sdXRlU2l6ZS5ZIDw9IDAgdGhlbiByZXR1cm4gZW5kCglpbml0aWFsaXplZCA9IHRydWUKCgljYXB0dXJlU2l6ZXMoKQoJbGF5b3V0Um93cygpCglmb3IgXywgciBpbiBpcGFpcnMocm93cykgZG8KCQlyLlZpc2libGUgPSB0cnVlCgllbmQKCglsb2NhbCBwaCA9IHBhcmVudC5BYnNvbHV0ZVNpemUuWQoJbG9jYWwgc2NhbGVZID0gZ3VpLlBvc2l0aW9uLlkuU2NhbGUKCWxvY2FsIGF5ID0gZ3VpLkFuY2hvclBvaW50LlkKCWxvY2FsIGN1clRvcCA9IGd1aS5BYnNvbHV0ZVBvc2l0aW9uLlkgLSBwYXJlbnQuQWJzb2x1dGVQb3NpdGlvbi5ZCglsb2NhbCB0YXJnZXRUb3AgPSBjdXJUb3AKCWlmIHRhcmdldFRvcCArIGV4cGFuZGVkSGVpZ2h0ID4gcGggdGhlbgoJCXRhcmdldFRvcCA9IG1hdGgubWF4KHBoIC0gZXhwYW5kZWRIZWlnaHQsIDApCgllbmQKCglndWkuU2l6ZSA9IFVEaW0yLm5ldyhndWkuU2l6ZS5YLlNjYWxlLCBndWkuU2l6ZS5YLk9mZnNldCwgMCwgZXhwYW5kZWRIZWlnaHQpCglndWkuUG9zaXRpb24gPSBVRGltMi5uZXcoZ3VpLlBvc2l0aW9uLlguU2NhbGUsIGd1aS5Qb3NpdGlvbi5YLk9mZnNldCwgc2NhbGVZLCB0YXJnZXRUb3AgKyBheSAqIGV4cGFuZGVkSGVpZ2h0IC0gc2NhbGVZICogcGgpCglndWkuQ2xpcHNEZXNjZW5kYW50cyA9IGZhbHNlCglleHBhbmRlZCA9IHRydWUKZW5kCgppZiBndWkuQWJzb2x1dGVTaXplLlkgPiAwIHRoZW4KCXRhc2suZGVmZXIoaW5pdEV4cGFuZGVkKQplbHNlCglsb2NhbCBjb25uCgljb25uID0gZ3VpOkdldFByb3BlcnR5Q2hhbmdlZFNpZ25hbCgiQWJzb2x1dGVTaXplIik6Q29ubmVjdChmdW5jdGlvbigpCgkJaWYgZ3VpLkFic29sdXRlU2l6ZS5ZID4gMCB0aGVuCgkJCWNvbm46RGlzY29ubmVjdCgpCgkJCWluaXRFeHBhbmRlZCgpCgkJZW5kCgllbmQpCmVuZAoKaGVhZGVyLklucHV0QmVnYW46Q29ubmVjdChmdW5jdGlvbihpbnB1dCkKCWlmIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLk1vdXNlQnV0dG9uMSBvciBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Ub3VjaCB0aGVuCgkJaWYgbm90IGNvbGxhcHNlZEhlaWdodCB0aGVuCgkJCWNhcHR1cmVTaXplcygpCgkJZW5kCgoJCWRyYWdnaW5nID0gdHJ1ZQoJCWRyYWdTdGFydCA9IGlucHV0LlBvc2l0aW9uCgkJc3RhcnRQb3MgPSBndWkuUG9zaXRpb24KCQlsYXN0TW91c2VQb3MgPSBVc2VySW5wdXRTZXJ2aWNlOkdldE1vdXNlTG9jYXRpb24oKQoJCXByZXNzUG9zID0gbGFzdE1vdXNlUG9zCgkJbW92ZWQgPSBmYWxzZQoKCQlsb2NhbCB3YXNFbmFibGVkID0gbmlsCgkJaWYgcGFyZW50RHJhZyB0aGVuCgkJCXdhc0VuYWJsZWQgPSBub3QgcGFyZW50RHJhZy5EaXNhYmxlZAoJCQlwYXJlbnREcmFnLkRpc2FibGVkID0gdHJ1ZQoJCWVuZAoKCQlpbnB1dC5DaGFuZ2VkOkNvbm5lY3QoZnVuY3Rpb24oKQoJCQlpZiBpbnB1dC5Vc2VySW5wdXRTdGF0ZSA9PSBFbnVtLlVzZXJJbnB1dFN0YXRlLkVuZCB0aGVuCgkJCQlkcmFnZ2luZyA9IGZhbHNlCgkJCQlpZiBwYXJlbnREcmFnIGFuZCB3YXNFbmFibGVkIHRoZW4KCQkJCQlwYXJlbnREcmFnLkRpc2FibGVkID0gZmFsc2UKCQkJCWVuZAoJCQllbmQKCQllbmQpCgllbmQKZW5kKQoKaGVhZGVyLkFjdGl2YXRlZDpDb25uZWN0KGZ1bmN0aW9uKCkKCWlmIG5vdCBtb3ZlZCB0aGVuCgkJdG9nZ2xlRXhwYW5kKCkKCWVuZAplbmQpCgpoZWFkZXIuSW5wdXRDaGFuZ2VkOkNvbm5lY3QoZnVuY3Rpb24oaW5wdXQpCglpZiBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Nb3VzZU1vdmVtZW50IG9yIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLlRvdWNoIHRoZW4KCQlkcmFnSW5wdXQgPSBpbnB1dAoJZW5kCmVuZCkKCmVudi5YVFdfRVhQQU5EX0hCID0gUnVuU2VydmljZS5IZWFydGJlYXQ6Q29ubmVjdChVcGRhdGUpCmVuZCwgZnVuY3Rpb24oZSkKICAgIGxvY2FsIHRiID0gIiIKICAgIHBjYWxsKGZ1bmN0aW9uKCkgdGIgPSBkZWJ1Zy50cmFjZWJhY2soIiIsIDIpIGVuZCkKICAgIHJldHVybiB0b3N0cmluZyhlKSAuLiAiXG4iIC4uIHRiCmVuZCkKaWYgbm90IF9feHR3X29rIHRoZW4KICAgIGxvY2FsIGVyclN0ciA9IHRvc3RyaW5nKF9feHR3X2VycikKICAgIGlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgICAgICBwY2FsbChmdW5jdGlvbigpIF9feHR3X3NlbGY6U2V0QXR0cmlidXRlKCJ4dHdfZXJyb3IiLCBlcnJTdHIpIGVuZCkKICAgIGVuZAogICAgcGNhbGwoZnVuY3Rpb24oKSB3YXJuKCJbeHR3XSBGQUlMOiAiIC4uIF9feHR3X25hbWUgLi4gIiAoIiAuLiBfX3h0d19jbHMgLi4gIik6ICIgLi4gZXJyU3RyKSBlbmQpCmVuZA==")
        local prelude = "local script = ...\n"
        local fn, cerr = loadstring(prelude .. src, "@xtw-m:" .. tostring(inst.Name))
        if not fn then
            manualFail = manualFail + 1
            runErrors[#runErrors + 1] = "Movement (load): " .. tostring(cerr)
        else
            local thread = coroutine.create(fn)
            local okRun, runErr = coroutine.resume(thread, inst)
            if okRun then ranManual = ranManual + 1
            else
                manualFail = manualFail + 1
                runErrors[#runErrors + 1] = "Movement (resume): " .. tostring(runErr)
            end
        end
    end
end
do
    local inst = n[13]
    local hasRan = false
    pcall(function() hasRan = inst:GetAttribute("xtw_ran") and true or false end)
    if not hasRan then
        local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkZ1bmN0aW9uIiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgUnVuU2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiUnVuU2VydmljZSIpCmxvY2FsIFR3ZWVuU2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVHdlZW5TZXJ2aWNlIikKCmxvY2FsIExBQkVMX05BTUUgPSBuaWwKCmxvY2FsIGZ1bmN0aW9uIGdldEVudigpCglsb2NhbCBvaywgZSA9IHBjYWxsKGZ1bmN0aW9uKCkgcmV0dXJuIGdldGdlbnYgYW5kIGdldGdlbnYoKSBlbmQpCglpZiBvayBhbmQgdHlwZShlKSA9PSAidGFibGUiIHRoZW4gcmV0dXJuIGUgZW5kCglyZXR1cm4gX0cKZW5kCmxvY2FsIGVudiA9IGdldEVudigpCgpsb2NhbCBsYWJlbCA9IG5pbAoKaWYgZW52IGFuZCBlbnYuWFRXX0ZQU19MQUJFTCB0aGVuCglsb2NhbCB0ID0gZW52LlhUV19GUFNfTEFCRUwKCWlmIHR5cGVvZih0KSA9PSAiSW5zdGFuY2UiIGFuZCB0OklzQSgiVGV4dExhYmVsIikgdGhlbgoJCWxhYmVsID0gdAoJZW5kCmVuZAoKaWYgbm90IGxhYmVsIGFuZCBMQUJFTF9OQU1FIHRoZW4KCWxvY2FsIHBsYXllciA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpLkxvY2FsUGxheWVyCglsb2NhbCBwZyA9IHBsYXllcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlBsYXllckd1aSIpCglpZiBwZyB0aGVuCgkJZm9yIF8sIGQgaW4gaXBhaXJzKHBnOkdldERlc2NlbmRhbnRzKCkpIGRvCgkJCWlmIGQ6SXNBKCJUZXh0TGFiZWwiKSBhbmQgZC5OYW1lID09IExBQkVMX05BTUUgdGhlbgoJCQkJbGFiZWwgPSBkCgkJCQlicmVhawoJCQllbmQKCQllbmQKCWVuZAplbmQKCmlmIG5vdCBsYWJlbCB0aGVuCglwY2FsbChmdW5jdGlvbigpCgkJbG9jYWwgcCA9IHNjcmlwdCBhbmQgc2NyaXB0LlBhcmVudAoJCWlmIHAgYW5kIHA6SXNBKCJUZXh0TGFiZWwiKSB0aGVuCgkJCWxhYmVsID0gcAoJCWVsc2VpZiBwIHRoZW4KCQkJbGFiZWwgPSBwOkZpbmRGaXJzdENoaWxkV2hpY2hJc0EoIlRleHRMYWJlbCIsIHRydWUpCgkJZW5kCgllbmQpCmVuZAoKaWYgbm90IGxhYmVsIG9yIG5vdCBsYWJlbDpJc0EoIlRleHRMYWJlbCIpIHRoZW4KCXdhcm4oIltGUFNdIE5vIHRhcmdldCBUZXh0TGFiZWwuIikKCXJldHVybgplbmQKCmlmIGVudi5YVFdfRlBTX0hCIHRoZW4KCXBjYWxsKGZ1bmN0aW9uKCkgZW52LlhUV19GUFNfSEI6RGlzY29ubmVjdCgpIGVuZCkKZW5kCgpsb2NhbCByb3cgPSBuaWwKbG9jYWwgc3RhcnRlZCA9IGZhbHNlCmxvY2FsIGRpZ2l0cyA9IHt9Cgpsb2NhbCBmdW5jdGlvbiBidWlsZFJvdygpCglyb3cgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKCXJvdy5OYW1lID0gIkZwc1JvdyIKCXJvdy5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJcm93LlBvc2l0aW9uID0gbGFiZWwuUG9zaXRpb24KCXJvdy5BbmNob3JQb2ludCA9IGxhYmVsLkFuY2hvclBvaW50Cglyb3cuU2l6ZSA9IGxhYmVsLlNpemUKCXJvdy5aSW5kZXggPSBsYWJlbC5aSW5kZXgKCXJvdy5QYXJlbnQgPSBsYWJlbC5QYXJlbnQKCglsb2NhbCBsYXlvdXQgPSBJbnN0YW5jZS5uZXcoIlVJTGlzdExheW91dCIpCglsYXlvdXQuRmlsbERpcmVjdGlvbiA9IEVudW0uRmlsbERpcmVjdGlvbi5Ib3Jpem9udGFsCglsYXlvdXQuU29ydE9yZGVyID0gRW51bS5Tb3J0T3JkZXIuTGF5b3V0T3JkZXIKCWxheW91dC5QYWRkaW5nID0gVURpbS5uZXcoKQoJbGF5b3V0LlZlcnRpY2FsQWxpZ25tZW50ID0gRW51bS5WZXJ0aWNhbEFsaWdubWVudC5DZW50ZXIKCWxvY2FsIGFsaWduID0gbGFiZWwuVGV4dFhBbGlnbm1lbnQKCWlmIGFsaWduID09IEVudW0uVGV4dFhBbGlnbm1lbnQuQ2VudGVyIHRoZW4KCQlsYXlvdXQuSG9yaXpvbnRhbEFsaWdubWVudCA9IEVudW0uSG9yaXpvbnRhbEFsaWdubWVudC5DZW50ZXIKCWVsc2VpZiBhbGlnbiA9PSBFbnVtLlRleHRYQWxpZ25tZW50LlJpZ2h0IHRoZW4KCQlsYXlvdXQuSG9yaXpvbnRhbEFsaWdubWVudCA9IEVudW0uSG9yaXpvbnRhbEFsaWdubWVudC5SaWdodAoJZWxzZQoJCWxheW91dC5Ib3Jpem9udGFsQWxpZ25tZW50ID0gRW51bS5Ib3Jpem9udGFsQWxpZ25tZW50LkxlZnQKCWVuZAoJbGF5b3V0LlBhcmVudCA9IHJvdwoKCWxvY2FsIHJlbmRlcmVkID0gbGFiZWwuVGV4dEJvdW5kcy5ZCglpZiBsYWJlbC5UZXh0U2NhbGVkIHRoZW4KCQlsYWJlbC5UZXh0U2NhbGVkID0gZmFsc2UKCQlsYWJlbC5UZXh0U2l6ZSA9IG1hdGgubWF4KDEsIG1hdGguZmxvb3IocmVuZGVyZWQgPiAwIGFuZCByZW5kZXJlZCBvciBsYWJlbC5BYnNvbHV0ZVNpemUuWSAqIDAuNykpCgllbmQKCglsYWJlbC5UZXh0V3JhcHBlZCA9IGZhbHNlCglsYWJlbC5UZXh0ID0gIkZQUzogIgoJbGFiZWwuUG9zaXRpb24gPSBVRGltMi5mcm9tT2Zmc2V0KDAsIDApCglsYWJlbC5BbmNob3JQb2ludCA9IFZlY3RvcjIubmV3KCkKCWxhYmVsLlNpemUgPSBVRGltMi5uZXcoMCwgMCwgMSwgMCkKCWxhYmVsLkF1dG9tYXRpY1NpemUgPSBFbnVtLkF1dG9tYXRpY1NpemUuWAoJbGFiZWwuTGF5b3V0T3JkZXIgPSAwCglsYWJlbC5QYXJlbnQgPSByb3cKZW5kCgpsb2NhbCBmdW5jdGlvbiBtYWtlRGlnaXQoaSkKCWxvY2FsIGQgPSBsYWJlbDpDbG9uZSgpCgoJZm9yIF8sIGMgaW4gaXBhaXJzKGQ6R2V0RGVzY2VuZGFudHMoKSkgZG8KCQlpZiBjOklzQSgiTHVhU291cmNlQ29udGFpbmVyIikgb3IgYzpJc0EoIlVJUGFkZGluZyIpIHRoZW4KCQkJYzpEZXN0cm95KCkKCQllbmQKCWVuZAoKCWQuTmFtZSA9ICJEaWdpdCIKCWQuVGV4dCA9ICIiCglkLlRleHRXcmFwcGVkID0gZmFsc2UKCWQuVGV4dFNjYWxlZCA9IGZhbHNlCglkLlBvc2l0aW9uID0gVURpbTIuZnJvbU9mZnNldCgwLCAwKQoJZC5BbmNob3JQb2ludCA9IFZlY3RvcjIubmV3KCkKCWQuU2l6ZSA9IFVEaW0yLm5ldygwLCAwLCAxLCAwKQoJZC5BdXRvbWF0aWNTaXplID0gRW51bS5BdXRvbWF0aWNTaXplLlgKCWQuTGF5b3V0T3JkZXIgPSBpCglkLlBhcmVudCA9IHJvdwoJcmV0dXJuIGQKZW5kCgpsb2NhbCBmdW5jdGlvbiBzZXROdW1iZXIobikKCWlmIG4gfj0gbiB0aGVuIHJldHVybiBlbmQKCWxvY2FsIHMgPSB0b3N0cmluZyhtYXRoLmNsYW1wKG1hdGguZmxvb3IobiArIDAuNSksIDAsIDk5OSkpCglpZiAjcyA+IDMgdGhlbiByZXR1cm4gZW5kCgoJaWYgbm90IHJvdyB0aGVuCgkJaWYgbGFiZWwuQWJzb2x1dGVTaXplLlkgPD0gMCB0aGVuIHJldHVybiBlbmQKCQlidWlsZFJvdygpCgllbmQKCglpZiAjcyB+PSAjZGlnaXRzIHRoZW4KCQlmb3IgXywgZCBpbiBpcGFpcnMoZGlnaXRzKSBkbyBkOkRlc3Ryb3koKSBlbmQKCQl0YWJsZS5jbGVhcihkaWdpdHMpCgoJCWxvY2FsIGZhZGVJbiA9IHN0YXJ0ZWQKCQlzdGFydGVkID0gdHJ1ZQoKCQlmb3IgaSA9IDEsICNzIGRvCgkJCWxvY2FsIGQgPSBtYWtlRGlnaXQoaSkKCQkJZGlnaXRzW2ldID0gZAoJCQlkLlRleHQgPSBzOnN1YihpLCBpKQoJCQlpZiBmYWRlSW4gdGhlbgoJCQkJZC5UZXh0VHJhbnNwYXJlbmN5ID0gMQoJCQkJVHdlZW5TZXJ2aWNlOkNyZWF0ZShkLCBUd2VlbkluZm8ubmV3KDAuMTIsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uT3V0KSwgewoJCQkJCVRleHRUcmFuc3BhcmVuY3kgPSAwCgkJCQl9KTpQbGF5KCkKCQkJZW5kCgkJZW5kCgllbHNlCgkJZm9yIGkgPSAxLCAjcyBkbwoJCQlsb2NhbCBjaCA9IHM6c3ViKGksIGkpCgkJCWxvY2FsIGQgPSBkaWdpdHNbaV0KCQkJaWYgY2ggfj0gZC5UZXh0IHRoZW4KCQkJCVR3ZWVuU2VydmljZTpDcmVhdGUoZCwgVHdlZW5JbmZvLm5ldygwLjEyLCBFbnVtLkVhc2luZ1N0eWxlLlF1YWQsIEVudW0uRWFzaW5nRGlyZWN0aW9uLkluKSwgewoJCQkJCVRleHRUcmFuc3BhcmVuY3kgPSAxCgkJCQl9KTpQbGF5KCkKCQkJCXRhc2suZGVsYXkoMC4xMiwgZnVuY3Rpb24oKQoJCQkJCWlmIGQuUGFyZW50IHRoZW4KCQkJCQkJZC5UZXh0ID0gY2gKCQkJCQkJVHdlZW5TZXJ2aWNlOkNyZWF0ZShkLCBUd2VlbkluZm8ubmV3KDAuMTIsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uT3V0KSwgewoJCQkJCQkJVGV4dFRyYW5zcGFyZW5jeSA9IDAKCQkJCQkJfSk6UGxheSgpCgkJCQkJZW5kCgkJCQllbmQpCgkJCWVuZAoJCWVuZAoJZW5kCmVuZAoKbG9jYWwgZnJhbWVzLCBlbGFwc2VkID0gMCwgMApsb2NhbCBzYW1wbGVzID0ge30KCmVudi5YVFdfRlBTX0hCID0gUnVuU2VydmljZS5SZW5kZXJTdGVwcGVkOkNvbm5lY3QoZnVuY3Rpb24oZHQpCglpZiBkdCA+IDAgdGhlbgoJCWZyYW1lcyArPSAxCgkJZWxhcHNlZCArPSBkdAoJZW5kCglpZiBlbGFwc2VkID49IDEgdGhlbgoJCXNhbXBsZXNbI3NhbXBsZXMgKyAxXSA9IG1hdGguY2xhbXAoZnJhbWVzIC8gZWxhcHNlZCwgMCwgOTk5KQoJCWlmICNzYW1wbGVzID4gMTAgdGhlbiB0YWJsZS5yZW1vdmUoc2FtcGxlcywgMSkgZW5kCgkJZnJhbWVzLCBlbGFwc2VkID0gMCwgMAoKCQlsb2NhbCBzdW0gPSAwCgkJZm9yIF8sIHYgaW4gaXBhaXJzKHNhbXBsZXMpIGRvIHN1bSArPSB2IGVuZAoJCXNldE51bWJlcihzdW0gLyAjc2FtcGxlcykKCWVuZAplbmQpCmVuZCwgZnVuY3Rpb24oZSkKICAgIGxvY2FsIHRiID0gIiIKICAgIHBjYWxsKGZ1bmN0aW9uKCkgdGIgPSBkZWJ1Zy50cmFjZWJhY2soIiIsIDIpIGVuZCkKICAgIHJldHVybiB0b3N0cmluZyhlKSAuLiAiXG4iIC4uIHRiCmVuZCkKaWYgbm90IF9feHR3X29rIHRoZW4KICAgIGxvY2FsIGVyclN0ciA9IHRvc3RyaW5nKF9feHR3X2VycikKICAgIGlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgICAgICBwY2FsbChmdW5jdGlvbigpIF9feHR3X3NlbGY6U2V0QXR0cmlidXRlKCJ4dHdfZXJyb3IiLCBlcnJTdHIpIGVuZCkKICAgIGVuZAogICAgcGNhbGwoZnVuY3Rpb24oKSB3YXJuKCJbeHR3XSBGQUlMOiAiIC4uIF9feHR3X25hbWUgLi4gIiAoIiAuLiBfX3h0d19jbHMgLi4gIik6ICIgLi4gZXJyU3RyKSBlbmQpCmVuZA==")
        local prelude = "local script = ...\n"
        local fn, cerr = loadstring(prelude .. src, "@xtw-m:" .. tostring(inst.Name))
        if not fn then
            manualFail = manualFail + 1
            runErrors[#runErrors + 1] = "Function (load): " .. tostring(cerr)
        else
            local thread = coroutine.create(fn)
            local okRun, runErr = coroutine.resume(thread, inst)
            if okRun then ranManual = ranManual + 1
            else
                manualFail = manualFail + 1
                runErrors[#runErrors + 1] = "Function (resume): " .. tostring(runErr)
            end
        end
    end
end
do
    local inst = n[15]
    local hasRan = false
    pcall(function() hasRan = inst:GetAttribute("xtw_ran") and true or false end)
    if not hasRan then
        local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkZ1bmN0aW9uIiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgUnVuU2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiUnVuU2VydmljZSIpCmxvY2FsIFR3ZWVuU2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVHdlZW5TZXJ2aWNlIikKbG9jYWwgUGxheWVycyA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpCgpsb2NhbCBMQUJFTF9OQU1FID0gbmlsCgpsb2NhbCBmdW5jdGlvbiBnZXRFbnYoKQoJbG9jYWwgb2ssIGUgPSBwY2FsbChmdW5jdGlvbigpIHJldHVybiBnZXRnZW52IGFuZCBnZXRnZW52KCkgZW5kKQoJaWYgb2sgYW5kIHR5cGUoZSkgPT0gInRhYmxlIiB0aGVuIHJldHVybiBlIGVuZAoJcmV0dXJuIF9HCmVuZApsb2NhbCBlbnYgPSBnZXRFbnYoKQoKbG9jYWwgbGFiZWwgPSBuaWwKCmlmIGVudiBhbmQgZW52LlhUV19QSU5HX0xBQkVMIHRoZW4KCWxvY2FsIHQgPSBlbnYuWFRXX1BJTkdfTEFCRUwKCWlmIHR5cGVvZih0KSA9PSAiSW5zdGFuY2UiIGFuZCB0OklzQSgiVGV4dExhYmVsIikgdGhlbgoJCWxhYmVsID0gdAoJZW5kCmVuZAoKaWYgbm90IGxhYmVsIGFuZCBMQUJFTF9OQU1FIHRoZW4KCWxvY2FsIHBnID0gUGxheWVycy5Mb2NhbFBsYXllcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlBsYXllckd1aSIpCglpZiBwZyB0aGVuCgkJZm9yIF8sIGQgaW4gaXBhaXJzKHBnOkdldERlc2NlbmRhbnRzKCkpIGRvCgkJCWlmIGQ6SXNBKCJUZXh0TGFiZWwiKSBhbmQgZC5OYW1lID09IExBQkVMX05BTUUgdGhlbgoJCQkJbGFiZWwgPSBkCgkJCQlicmVhawoJCQllbmQKCQllbmQKCWVuZAplbmQKCmlmIG5vdCBsYWJlbCB0aGVuCglwY2FsbChmdW5jdGlvbigpCgkJbG9jYWwgcCA9IHNjcmlwdCBhbmQgc2NyaXB0LlBhcmVudAoJCWlmIHAgYW5kIHA6SXNBKCJUZXh0TGFiZWwiKSB0aGVuCgkJCWxhYmVsID0gcAoJCWVsc2VpZiBwIHRoZW4KCQkJbGFiZWwgPSBwOkZpbmRGaXJzdENoaWxkV2hpY2hJc0EoIlRleHRMYWJlbCIsIHRydWUpCgkJZW5kCgllbmQpCmVuZAoKaWYgbm90IGxhYmVsIG9yIG5vdCBsYWJlbDpJc0EoIlRleHRMYWJlbCIpIHRoZW4KCXdhcm4oIltQaW5nXSBObyB0YXJnZXQgVGV4dExhYmVsLiIpCglyZXR1cm4KZW5kCgppZiBlbnYuWFRXX1BJTkdfVEhSRUFEIHRoZW4KCXBjYWxsKGZ1bmN0aW9uKCkgZW52LlhUV19QSU5HX1RIUkVBRCA9IG5pbCBlbmQpCmVuZAppZiBlbnYuWFRXX1BJTkdfSEIgdGhlbgoJcGNhbGwoZnVuY3Rpb24oKSBlbnYuWFRXX1BJTkdfSEI6RGlzY29ubmVjdCgpIGVuZCkKZW5kCgpsb2NhbCBwbGF5ZXIgPSBQbGF5ZXJzLkxvY2FsUGxheWVyCgpsb2NhbCByb3cgPSBuaWwKbG9jYWwgc3RhcnRlZCA9IGZhbHNlCmxvY2FsIGRpZ2l0cyA9IHt9CmxvY2FsIGN1ckNvbG9yID0gbmlsCgpsb2NhbCBmdW5jdGlvbiBidWlsZFJvdygpCglmb3IgXywgYyBpbiBpcGFpcnMobGFiZWw6R2V0Q2hpbGRyZW4oKSkgZG8KCQlpZiBjOklzQSgiVUlHcmFkaWVudCIpIHRoZW4KCQkJYzpEZXN0cm95KCkKCQllbmQKCWVuZAoKCXJvdyA9IEluc3RhbmNlLm5ldygiRnJhbWUiKQoJcm93LkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxCglyb3cuUG9zaXRpb24gPSBsYWJlbC5Qb3NpdGlvbgoJcm93LkFuY2hvclBvaW50ID0gbGFiZWwuQW5jaG9yUG9pbnQKCXJvdy5TaXplID0gbGFiZWwuU2l6ZQoJcm93LlpJbmRleCA9IGxhYmVsLlpJbmRleAoJcm93LlBhcmVudCA9IGxhYmVsLlBhcmVudAoKCWxvY2FsIGxheW91dCA9IEluc3RhbmNlLm5ldygiVUlMaXN0TGF5b3V0IikKCWxheW91dC5GaWxsRGlyZWN0aW9uID0gRW51bS5GaWxsRGlyZWN0aW9uLkhvcml6b250YWwKCWxheW91dC5Tb3J0T3JkZXIgPSBFbnVtLlNvcnRPcmRlci5MYXlvdXRPcmRlcgoJbGF5b3V0LlBhZGRpbmcgPSBVRGltLm5ldygpCglsYXlvdXQuVmVydGljYWxBbGlnbm1lbnQgPSBFbnVtLlZlcnRpY2FsQWxpZ25tZW50LkNlbnRlcgoJbG9jYWwgYWxpZ24gPSBsYWJlbC5UZXh0WEFsaWdubWVudAoJaWYgYWxpZ24gPT0gRW51bS5UZXh0WEFsaWdubWVudC5DZW50ZXIgdGhlbgoJCWxheW91dC5Ib3Jpem9udGFsQWxpZ25tZW50ID0gRW51bS5Ib3Jpem9udGFsQWxpZ25tZW50LkNlbnRlcgoJZWxzZWlmIGFsaWduID09IEVudW0uVGV4dFhBbGlnbm1lbnQuUmlnaHQgdGhlbgoJCWxheW91dC5Ib3Jpem9udGFsQWxpZ25tZW50ID0gRW51bS5Ib3Jpem9udGFsQWxpZ25tZW50LlJpZ2h0CgllbHNlCgkJbGF5b3V0Lkhvcml6b250YWxBbGlnbm1lbnQgPSBFbnVtLkhvcml6b250YWxBbGlnbm1lbnQuTGVmdAoJZW5kCglsYXlvdXQuUGFyZW50ID0gcm93CgoJbG9jYWwgaGVpZ2h0ID0gbGFiZWwuQWJzb2x1dGVTaXplLlkKCWxvY2FsIHJlbmRlcmVkID0gbGFiZWwuVGV4dEJvdW5kcy5ZCglpZiBsYWJlbC5UZXh0U2NhbGVkIHRoZW4KCQlsYWJlbC5UZXh0U2NhbGVkID0gZmFsc2UKCQlsYWJlbC5UZXh0U2l6ZSA9IG1hdGgubWF4KDEsIG1hdGguZmxvb3IocmVuZGVyZWQgPiAwIGFuZCByZW5kZXJlZCBvciBoZWlnaHQgKiAwLjcpKQoJZW5kCgoJbGFiZWwuVGV4dFdyYXBwZWQgPSBmYWxzZQoJbGFiZWwuVGV4dCA9ICJtcyIKCWxhYmVsLlBvc2l0aW9uID0gVURpbTIuZnJvbU9mZnNldCgwLCAwKQoJbGFiZWwuQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygpCglsYWJlbC5TaXplID0gVURpbTIubmV3KDAsIDAsIDEsIDApCglsYWJlbC5BdXRvbWF0aWNTaXplID0gRW51bS5BdXRvbWF0aWNTaXplLlgKCWxhYmVsLkxheW91dE9yZGVyID0gMTAwCglsYWJlbC5QYXJlbnQgPSByb3cKZW5kCgpsb2NhbCBmdW5jdGlvbiBtYWtlRGlnaXQoaSkKCWxvY2FsIGQgPSBsYWJlbDpDbG9uZSgpCglmb3IgXywgYyBpbiBpcGFpcnMoZDpHZXREZXNjZW5kYW50cygpKSBkbwoJCWlmIGM6SXNBKCJMdWFTb3VyY2VDb250YWluZXIiKSBvciBjOklzQSgiVUlQYWRkaW5nIikgb3IgYzpJc0EoIlVJR3JhZGllbnQiKSB0aGVuCgkJCWM6RGVzdHJveSgpCgkJZW5kCgllbmQKCglkLk5hbWUgPSAiRGlnaXQiCglkLlRleHQgPSAiIgoJZC5UZXh0V3JhcHBlZCA9IGZhbHNlCglkLlRleHRTY2FsZWQgPSBmYWxzZQoJZC5Qb3NpdGlvbiA9IFVEaW0yLmZyb21PZmZzZXQoMCwgMCkKCWQuQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygpCglkLlNpemUgPSBVRGltMi5uZXcoMCwgMCwgMSwgMCkKCWQuQXV0b21hdGljU2l6ZSA9IEVudW0uQXV0b21hdGljU2l6ZS5YCglkLkxheW91dE9yZGVyID0gaQoJZC5QYXJlbnQgPSByb3cKCXJldHVybiBkCmVuZAoKbG9jYWwgZnVuY3Rpb24gc2V0Q29sb3IobikKCWxvY2FsIHQgPSBtYXRoLmNsYW1wKG4gLyAyMDAsIDAsIDEpCglsb2NhbCBjb2wgPSBDb2xvcjMuZnJvbVJHQig4NSwgMjU1LCA4NSk6TGVycChDb2xvcjMuZnJvbVJHQigyNTUsIDAsIDApLCB0KQoJaWYgY3VyQ29sb3IgYW5kIG1hdGguYWJzKGN1ckNvbG9yLlIgLSBjb2wuUikgKyBtYXRoLmFicyhjdXJDb2xvci5HIC0gY29sLkcpICsgbWF0aC5hYnMoY3VyQ29sb3IuQiAtIGNvbC5CKSA8IDAuMDEgdGhlbgoJCXJldHVybgoJZW5kCgljdXJDb2xvciA9IGNvbAoKCWxvY2FsIHRpID0gVHdlZW5JbmZvLm5ldygwLjMsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uT3V0KQoJVHdlZW5TZXJ2aWNlOkNyZWF0ZShsYWJlbCwgdGksIHtUZXh0Q29sb3IzID0gY29sfSk6UGxheSgpCglmb3IgXywgZCBpbiBpcGFpcnMoZGlnaXRzKSBkbwoJCVR3ZWVuU2VydmljZTpDcmVhdGUoZCwgdGksIHtUZXh0Q29sb3IzID0gY29sfSk6UGxheSgpCgllbmQKZW5kCgpsb2NhbCBmdW5jdGlvbiBzZXRQaW5nKG4pCglpZiBuIH49IG4gdGhlbiByZXR1cm4gZW5kCgluID0gbWF0aC5jbGFtcChtYXRoLmZsb29yKG4gKyAwLjUpLCAwLCA5OTkpCglsb2NhbCBzID0gdG9zdHJpbmcobikKCWlmICNzID4gMyB0aGVuIHJldHVybiBlbmQKCglpZiBub3Qgcm93IHRoZW4KCQlpZiBsYWJlbC5BYnNvbHV0ZVNpemUuWSA8PSAwIHRoZW4gcmV0dXJuIGVuZAoJCWJ1aWxkUm93KCkKCWVuZAoKCWlmICNzIH49ICNkaWdpdHMgdGhlbgoJCWZvciBfLCBkIGluIGlwYWlycyhkaWdpdHMpIGRvIGQ6RGVzdHJveSgpIGVuZAoJCXRhYmxlLmNsZWFyKGRpZ2l0cykKCgkJbG9jYWwgZmFkZUluID0gc3RhcnRlZAoJCXN0YXJ0ZWQgPSB0cnVlCgoJCWZvciBpID0gMSwgI3MgZG8KCQkJbG9jYWwgZCA9IG1ha2VEaWdpdChpKQoJCQlkaWdpdHNbaV0gPSBkCgkJCWQuVGV4dCA9IHM6c3ViKGksIGkpCgkJCWlmIGZhZGVJbiB0aGVuCgkJCQlkLlRleHRUcmFuc3BhcmVuY3kgPSAxCgkJCQlUd2VlblNlcnZpY2U6Q3JlYXRlKGQsIFR3ZWVuSW5mby5uZXcoMC4xMiwgRW51bS5FYXNpbmdTdHlsZS5RdWFkLCBFbnVtLkVhc2luZ0RpcmVjdGlvbi5PdXQpLCB7CgkJCQkJVGV4dFRyYW5zcGFyZW5jeSA9IDAKCQkJCX0pOlBsYXkoKQoJCQllbmQKCQllbmQKCWVsc2UKCQlmb3IgaSA9IDEsICNzIGRvCgkJCWxvY2FsIGNoID0gczpzdWIoaSwgaSkKCQkJbG9jYWwgZCA9IGRpZ2l0c1tpXQoJCQlpZiBjaCB+PSBkLlRleHQgdGhlbgoJCQkJVHdlZW5TZXJ2aWNlOkNyZWF0ZShkLCBUd2VlbkluZm8ubmV3KDAuMTIsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uSW4pLCB7CgkJCQkJVGV4dFRyYW5zcGFyZW5jeSA9IDEKCQkJCX0pOlBsYXkoKQoJCQkJdGFzay5kZWxheSgwLjEyLCBmdW5jdGlvbigpCgkJCQkJaWYgZC5QYXJlbnQgdGhlbgoJCQkJCQlkLlRleHQgPSBjaAoJCQkJCQlUd2VlblNlcnZpY2U6Q3JlYXRlKGQsIFR3ZWVuSW5mby5uZXcoMC4xMiwgRW51bS5FYXNpbmdTdHlsZS5RdWFkLCBFbnVtLkVhc2luZ0RpcmVjdGlvbi5PdXQpLCB7CgkJCQkJCQlUZXh0VHJhbnNwYXJlbmN5ID0gMAoJCQkJCQl9KTpQbGF5KCkKCQkJCQllbmQKCQkJCWVuZCkKCQkJZW5kCgkJZW5kCgllbmQKCglzZXRDb2xvcihuKQplbmQKCmVudi5YVFdfUElOR19USFJFQUQgPSB0YXNrLnNwYXduKGZ1bmN0aW9uKCkKCWxvY2FsIHNhbXBsZXMgPSB7fQoJd2hpbGUgZW52LlhUV19QSU5HX1RIUkVBRCBkbwoJCXRhc2sud2FpdCgxKQoJCWxvY2FsIG9rLCBwID0gcGNhbGwoZnVuY3Rpb24oKQoJCQlyZXR1cm4gcGxheWVyOkdldE5ldHdvcmtQaW5nKCkKCQllbmQpCgkJbG9jYWwgdiA9IDAKCQlpZiBvayBhbmQgdHlwZShwKSA9PSAibnVtYmVyIiBhbmQgcCA9PSBwIGFuZCBwID4gMCB0aGVuCgkJCXYgPSBwICogMTAwMAoJCWVuZAoJCXNhbXBsZXNbI3NhbXBsZXMgKyAxXSA9IHYKCQlpZiAjc2FtcGxlcyA+IDEwIHRoZW4gdGFibGUucmVtb3ZlKHNhbXBsZXMsIDEpIGVuZAoKCQlsb2NhbCBzdW0gPSAwCgkJZm9yIF8sIHggaW4gaXBhaXJzKHNhbXBsZXMpIGRvIHN1bSArPSB4IGVuZAoJCXNldFBpbmcoc3VtIC8gI3NhbXBsZXMpCgllbmQKZW5kKQplbmQsIGZ1bmN0aW9uKGUpCiAgICBsb2NhbCB0YiA9ICIiCiAgICBwY2FsbChmdW5jdGlvbigpIHRiID0gZGVidWcudHJhY2ViYWNrKCIiLCAyKSBlbmQpCiAgICByZXR1cm4gdG9zdHJpbmcoZSkgLi4gIlxuIiAuLiB0YgplbmQpCmlmIG5vdCBfX3h0d19vayB0aGVuCiAgICBsb2NhbCBlcnJTdHIgPSB0b3N0cmluZyhfX3h0d19lcnIpCiAgICBpZiBfX3h0d19zZWxmIGFuZCBfX3h0d19zZWxmLlNldEF0dHJpYnV0ZSB0aGVuCiAgICAgICAgcGNhbGwoZnVuY3Rpb24oKSBfX3h0d19zZWxmOlNldEF0dHJpYnV0ZSgieHR3X2Vycm9yIiwgZXJyU3RyKSBlbmQpCiAgICBlbmQKICAgIHBjYWxsKGZ1bmN0aW9uKCkgd2FybigiW3h0d10gRkFJTDogIiAuLiBfX3h0d19uYW1lIC4uICIgKCIgLi4gX194dHdfY2xzIC4uICIpOiAiIC4uIGVyclN0cikgZW5kKQplbmQ=")
        local prelude = "local script = ...\n"
        local fn, cerr = loadstring(prelude .. src, "@xtw-m:" .. tostring(inst.Name))
        if not fn then
            manualFail = manualFail + 1
            runErrors[#runErrors + 1] = "Function (load): " .. tostring(cerr)
        else
            local thread = coroutine.create(fn)
            local okRun, runErr = coroutine.resume(thread, inst)
            if okRun then ranManual = ranManual + 1
            else
                manualFail = manualFail + 1
                runErrors[#runErrors + 1] = "Function (resume): " .. tostring(runErr)
            end
        end
    end
end
do
    local inst = n[29]
    local hasRan = false
    pcall(function() hasRan = inst:GetAttribute("xtw_ran") and true or false end)
    if not hasRan then
        local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkZ1bmN0aW9uIiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgUGxheWVycyA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpCmxvY2FsIFJ1blNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlJ1blNlcnZpY2UiKQpsb2NhbCBUd2VlblNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlR3ZWVuU2VydmljZSIpCmxvY2FsIERlYnJpcyA9IGdhbWU6R2V0U2VydmljZSgiRGVicmlzIikKbG9jYWwgVGV4dFNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlRleHRTZXJ2aWNlIikKCmxvY2FsIFJPV19OQU1FID0gbmlsCgpsb2NhbCBmdW5jdGlvbiBnZXRFbnYoKQoJbG9jYWwgb2ssIGUgPSBwY2FsbChmdW5jdGlvbigpIHJldHVybiBnZXRnZW52IGFuZCBnZXRnZW52KCkgZW5kKQoJaWYgb2sgYW5kIHR5cGUoZSkgPT0gInRhYmxlIiB0aGVuIHJldHVybiBlIGVuZAoJcmV0dXJuIF9HCmVuZApsb2NhbCBlbnYgPSBnZXRFbnYoKQoKbG9jYWwgcm93ID0gbmlsCgppZiBlbnYgYW5kIGVudi5YVFdfRVNQX1RBUkdFVCB0aGVuCglsb2NhbCB0ID0gZW52LlhUV19FU1BfVEFSR0VUCglpZiB0eXBlb2YodCkgPT0gIkluc3RhbmNlIiBhbmQgdDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCQlyb3cgPSB0CgllbmQKZW5kCgppZiBub3Qgcm93IGFuZCBST1dfTkFNRSB0aGVuCglsb2NhbCBwZyA9IFBsYXllcnMuTG9jYWxQbGF5ZXI6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJQbGF5ZXJHdWkiKQoJaWYgcGcgdGhlbgoJCWZvciBfLCBkIGluIGlwYWlycyhwZzpHZXREZXNjZW5kYW50cygpKSBkbwoJCQlpZiBkOklzQSgiR3VpT2JqZWN0IikgYW5kIGQuTmFtZSA9PSBST1dfTkFNRSBhbmQgZDpGaW5kRmlyc3RDaGlsZCgiQmFsbCIsIHRydWUpIHRoZW4KCQkJCXJvdyA9IGQKCQkJCWJyZWFrCgkJCWVuZAoJCWVuZAoJZW5kCmVuZAoKaWYgbm90IHJvdyB0aGVuCglwY2FsbChmdW5jdGlvbigpCgkJbG9jYWwgcCA9IHNjcmlwdCBhbmQgc2NyaXB0LlBhcmVudAoJCWlmIHAgYW5kIHA6SXNBKCJHdWlPYmplY3QiKSB0aGVuCgkJCXJvdyA9IHAKCQllbmQKCWVuZCkKZW5kCgppZiBub3Qgcm93IHRoZW4KCXdhcm4oIltFU1BdIE5vIHRhcmdldCByb3cgZnJhbWUuIikKCXJldHVybgplbmQKCmxvY2FsIGJhbGxzID0gcm93OkZpbmRGaXJzdENoaWxkKCJCYWxsIiwgdHJ1ZSkKaWYgbm90IGJhbGxzIHRoZW4KCWJhbGxzID0gcm93OldhaXRGb3JDaGlsZCgiQmFsbCIsIDUpCmVuZAppZiBub3QgYmFsbHMgdGhlbgoJd2FybigiW0VTUF0gTm8gQmFsbCBjaGlsZCBpbiByb3cuIikKCXJldHVybgplbmQKCmxvY2FsIGRlc2NyaXB0aW9uID0gcm93OldhaXRGb3JDaGlsZCgiRGVzY3JpcHRpb24iLCA1KQppZiBub3QgZGVzY3JpcHRpb24gdGhlbgoJd2FybigiW0VTUF0gTm8gRGVzY3JpcHRpb24gY2hpbGQgaW4gcm93LiIpCglyZXR1cm4KZW5kCgpsb2NhbCBwbGF5ZXIgPSBQbGF5ZXJzLkxvY2FsUGxheWVyCgpyb3cuQWN0aXZlID0gdHJ1ZQpiYWxscy5BY3RpdmUgPSB0cnVlCmJhbGxzLkF1dG9CdXR0b25Db2xvciA9IGZhbHNlCgpsb2NhbCBsZWZ0b3ZlciA9IHJvdzpGaW5kRmlyc3RDaGlsZCgiRGVzY1BhbmVsIiwgdHJ1ZSkKaWYgbGVmdG92ZXIgdGhlbgoJbGVmdG92ZXI6RGVzdHJveSgpCmVuZAoKbG9jYWwgZGFya3llbGxvdyA9IENvbG9yMy5mcm9tUkdCKDQwLCA0MCwgNDApCmxvY2FsIHllbGxvdyA9IENvbG9yMy5mcm9tUkdCKDAsIDExMCwgMCkKCmxvY2FsIGdyYWRpZW50ID0gcm93OkZpbmRGaXJzdENoaWxkT2ZDbGFzcygiVUlHcmFkaWVudCIpIG9yIEluc3RhbmNlLm5ldygiVUlHcmFkaWVudCIpCmdyYWRpZW50LkNvbG9yID0gQ29sb3JTZXF1ZW5jZS5uZXcoewoJQ29sb3JTZXF1ZW5jZUtleXBvaW50Lm5ldygwLCB5ZWxsb3cpLAoJQ29sb3JTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjQ5OSwgeWVsbG93KSwKCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMC41LCBkYXJreWVsbG93KSwKCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMSwgZGFya3llbGxvdyksCn0pCmdyYWRpZW50Lk9mZnNldCA9IFZlY3RvcjIubmV3KC0wLjUsIDApCmdyYWRpZW50LlBhcmVudCA9IHJvdwoKbG9jYWwgb2ZmUG9zID0gYmFsbHMuUG9zaXRpb24KbG9jYWwgb25Qb3MgPSBVRGltMi5uZXcoCgkxIC0gb2ZmUG9zLlguU2NhbGUgLSBiYWxscy5TaXplLlguU2NhbGUsCglvZmZQb3MuWC5PZmZzZXQgLSBiYWxscy5TaXplLlguT2Zmc2V0LAoJb2ZmUG9zLlkuU2NhbGUsCglvZmZQb3MuWS5PZmZzZXQKKQoKbG9jYWwgb2ZmQyA9IDAKbG9jYWwgb25DID0gMAoKbG9jYWwgZnVuY3Rpb24gbWVhc3VyZSgpCglsb2NhbCB3ID0gcm93LkFic29sdXRlU2l6ZS5YCglpZiB3IDw9IDAgdGhlbiByZXR1cm4gZW5kCglsb2NhbCBoYWxmID0gKDAuNSAtIGJhbGxzLkFuY2hvclBvaW50LlgpICogKGJhbGxzLlNpemUuWC5TY2FsZSArIGJhbGxzLlNpemUuWC5PZmZzZXQgLyB3KQoJb2ZmQyA9IG9mZlBvcy5YLlNjYWxlICsgb2ZmUG9zLlguT2Zmc2V0IC8gdyArIGhhbGYKCW9uQyA9IG9uUG9zLlguU2NhbGUgKyBvblBvcy5YLk9mZnNldCAvIHcgKyBoYWxmCmVuZAoKbG9jYWwgYW5pbSA9IEluc3RhbmNlLm5ldygiTnVtYmVyVmFsdWUiKQphbmltLlZhbHVlID0gMAoKbG9jYWwgZnVuY3Rpb24gYXBwbHkodSkKCWxvY2FsIHN4ID0gb2ZmUG9zLlguU2NhbGUgKyAob25Qb3MuWC5TY2FsZSAtIG9mZlBvcy5YLlNjYWxlKSAqIHUKCWxvY2FsIG94ID0gb2ZmUG9zLlguT2Zmc2V0ICsgKG9uUG9zLlguT2Zmc2V0IC0gb2ZmUG9zLlguT2Zmc2V0KSAqIHUKCWJhbGxzLlBvc2l0aW9uID0gVURpbTIubmV3KHN4LCBveCwgb2ZmUG9zLlkuU2NhbGUsIG9mZlBvcy5ZLk9mZnNldCkKCWdyYWRpZW50Lk9mZnNldCA9IFZlY3RvcjIubmV3KChvZmZDICsgKG9uQyAtIG9mZkMpICogdSkgLSAwLjUsIDApCmVuZAoKYW5pbS5DaGFuZ2VkOkNvbm5lY3QoYXBwbHkpCm1lYXN1cmUoKQphcHBseSgwKQoKcm93OkdldFByb3BlcnR5Q2hhbmdlZFNpZ25hbCgiQWJzb2x1dGVTaXplIik6Q29ubmVjdChmdW5jdGlvbigpCgltZWFzdXJlKCkKCWFwcGx5KGFuaW0uVmFsdWUpCmVuZCkKCmxvY2FsIGRlc2NUZXh0ID0gIlRoaXMgaXMgeW91ciBFeHRyYXNlbnNvcnkgUGVyY2VwdGlvbiB0b2dnbGUuIgoKaWYgZGVzY3JpcHRpb24uVGV4dFNjYWxlZCB0aGVuCglsb2NhbCByZW5kZXJlZCA9IGRlc2NyaXB0aW9uLlRleHRCb3VuZHMuWQoJZGVzY3JpcHRpb24uVGV4dFNjYWxlZCA9IGZhbHNlCglkZXNjcmlwdGlvbi5UZXh0U2l6ZSA9IG1hdGgubWF4KDEsIG1hdGguZmxvb3IocmVuZGVyZWQgPiAwIGFuZCByZW5kZXJlZCBvciByb3cuQWJzb2x1dGVTaXplLlkgKiAwLjcpKQplbmQKCmZvciBfLCBjIGluIGlwYWlycyhkZXNjcmlwdGlvbjpHZXRDaGlsZHJlbigpKSBkbwoJaWYgYzpJc0EoIlVJU3Ryb2tlIikgb3IgYy5OYW1lID09ICJUb3BMaW5lIiBvciBjLk5hbWUgPT0gIkJvdHRvbUxpbmUiIG9yIGMuTmFtZSA9PSAiUmlnaHRMaW5lIgoJCW9yIGMuTmFtZSA9PSAiU2VhbVBhdGNoIiBvciBjLk5hbWUgPT0gIlRvcEJyaWRnZSIgb3IgYy5OYW1lID09ICJCb3R0b21CcmlkZ2UiCgkJb3IgYy5OYW1lID09ICJDYXBDbGlwIiBvciBjLk5hbWUgPT0gIkNhcCIgb3IgYy5OYW1lID09ICJEZXNjQ29ybmVyIgoJCW9yIGMuTmFtZSA9PSAiTGVmdEd1YXJkIiB0aGVuCgkJYzpEZXN0cm95KCkKCWVuZAplbmQKCmxvY2FsIGhvc3QgPSByb3cuUGFyZW50CmxvY2FsIHN0cm9rZUNvbG9yID0gbmlsCmxvY2FsIHN0cm9rZVRyYW5zcGFyZW5jeSA9IDAKbG9jYWwgc3Ryb2tlRXhhY3QgPSAxCmxvY2FsIHN0cm9rZU1vZGUgPSBFbnVtLkFwcGx5U3Ryb2tlTW9kZS5Cb3JkZXIKbG9jYWwgY29ybmVyUmFkaXVzID0gMAoKaWYgaG9zdCBhbmQgaG9zdDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCWRlc2NyaXB0aW9uLkJhY2tncm91bmRDb2xvcjMgPSBob3N0LkJhY2tncm91bmRDb2xvcjMKCWRlc2NyaXB0aW9uLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSBob3N0LkJhY2tncm91bmRUcmFuc3BhcmVuY3kKCWxvY2FsIGhzID0gaG9zdDpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlVJU3Ryb2tlIikKCWlmIGhzIHRoZW4KCQlzdHJva2VDb2xvciA9IGhzLkNvbG9yCgkJc3Ryb2tlVHJhbnNwYXJlbmN5ID0gaHMuVHJhbnNwYXJlbmN5CgkJc3Ryb2tlRXhhY3QgPSBocy5UaGlja25lc3MKCQlzdHJva2VNb2RlID0gaHMuQXBwbHlTdHJva2VNb2RlCgkJaWYgc3Ryb2tlRXhhY3QgPCAxIHRoZW4KCQkJc3Ryb2tlRXhhY3QgPSAxCgkJZW5kCgllbmQKCWxvY2FsIGhjID0gaG9zdDpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlVJQ29ybmVyIikKCWlmIGhjIHRoZW4KCQlsb2NhbCByaCA9IHJvdy5BYnNvbHV0ZVNpemUuWQoJCWlmIHJoIDwgMCB0aGVuIHJoID0gMCBlbmQKCQljb3JuZXJSYWRpdXMgPSBtYXRoLmZsb29yKGhjLkNvcm5lclJhZGl1cy5PZmZzZXQgKyBoYy5Db3JuZXJSYWRpdXMuU2NhbGUgKiByaCArIDAuNSkKCQlpZiBjb3JuZXJSYWRpdXMgPCAwIHRoZW4gY29ybmVyUmFkaXVzID0gMCBlbmQKCQlsb2NhbCBtYXhSID0gbWF0aC5mbG9vcihyaCAvIDIpCgkJaWYgbWF4UiA+IDYgdGhlbgoJCQltYXhSID0gNgoJCWVuZAoJCWlmIGNvcm5lclJhZGl1cyA+IG1heFIgdGhlbgoJCQljb3JuZXJSYWRpdXMgPSBtYXhSCgkJZW5kCgllbmQKZWxzZQoJZGVzY3JpcHRpb24uQmFja2dyb3VuZENvbG9yMyA9IENvbG9yMy5mcm9tUkdCKDM1LCAzNSwgMzUpCglkZXNjcmlwdGlvbi5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMC4xCmVuZAoKbG9jYWwgcGFkID0gZGVzY3JpcHRpb246RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJVSVBhZGRpbmciKQppZiBub3QgcGFkIHRoZW4KCXBhZCA9IEluc3RhbmNlLm5ldygiVUlQYWRkaW5nIikKCXBhZC5QYXJlbnQgPSBkZXNjcmlwdGlvbgplbmQKcGFkLlBhZGRpbmdMZWZ0ID0gVURpbS5uZXcoMCwgOCkKcGFkLlBhZGRpbmdSaWdodCA9IFVEaW0ubmV3KDAsIDIpCgpsb2NhbCBwYWRMZWZ0ID0gOApsb2NhbCBwYWRSaWdodCA9IDIKZG8KCWxvY2FsIHAgPSBkZXNjcmlwdGlvbjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlVJUGFkZGluZyIpCglpZiBwIHRoZW4KCQlwYWRMZWZ0ID0gcC5QYWRkaW5nTGVmdC5PZmZzZXQKCQlwYWRSaWdodCA9IHAuUGFkZGluZ1JpZ2h0Lk9mZnNldAoJZW5kCmVuZAoKZGVzY3JpcHRpb24uVGV4dFdyYXBwZWQgPSBmYWxzZQpkZXNjcmlwdGlvbi5UZXh0WEFsaWdubWVudCA9IEVudW0uVGV4dFhBbGlnbm1lbnQuTGVmdApkZXNjcmlwdGlvbi5BbmNob3JQb2ludCA9IFZlY3RvcjIubmV3KDAsIDApCmRlc2NyaXB0aW9uLkF1dG9tYXRpY1NpemUgPSBFbnVtLkF1dG9tYXRpY1NpemUuTm9uZQpkZXNjcmlwdGlvbi5Qb3NpdGlvbiA9IFVEaW0yLm5ldygxLCAwLCAwLCAwKQpkZXNjcmlwdGlvbi5TaXplID0gVURpbTIubmV3KDAsIDAsIDEsIDApCmRlc2NyaXB0aW9uLlpJbmRleCA9IDUKZGVzY3JpcHRpb24uVGV4dCA9ICIiCmRlc2NyaXB0aW9uLlZpc2libGUgPSBmYWxzZQpkZXNjcmlwdGlvbi5DbGlwc0Rlc2NlbmRhbnRzID0gZmFsc2UKCmlmIGNvcm5lclJhZGl1cyA+IDAgdGhlbgoJbG9jYWwgZGVzY0Nvcm5lciA9IEluc3RhbmNlLm5ldygiVUlDb3JuZXIiKQoJZGVzY0Nvcm5lci5OYW1lID0gIkRlc2NDb3JuZXIiCglkZXNjQ29ybmVyLkNvcm5lclJhZGl1cyA9IFVEaW0ubmV3KDAsIGNvcm5lclJhZGl1cykKCWRlc2NDb3JuZXIuUGFyZW50ID0gZGVzY3JpcHRpb24KZW5kCgppZiBzdHJva2VDb2xvciB0aGVuCglsb2NhbCBndWFyZFggPSAtKG1hdGguY2VpbChzdHJva2VFeGFjdCkgKyAxKQoJbG9jYWwgY2FwTGVmdCA9IC0oY29ybmVyUmFkaXVzICsgc3Ryb2tlRXhhY3QgKyAyKQoJbG9jYWwgbVkgPSBzdHJva2VFeGFjdCArIDEKCglsb2NhbCBsZWZ0R3VhcmQgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKCWxlZnRHdWFyZC5OYW1lID0gIkxlZnRHdWFyZCIKCWxlZnRHdWFyZC5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJbGVmdEd1YXJkLkJvcmRlclNpemVQaXhlbCA9IDAKCWxlZnRHdWFyZC5DbGlwc0Rlc2NlbmRhbnRzID0gdHJ1ZQoJbGVmdEd1YXJkLlpJbmRleCA9IDYKCWxlZnRHdWFyZC5Qb3NpdGlvbiA9IFVEaW0yLm5ldygwLCBndWFyZFgsIDAsIC1tWSkKCWxlZnRHdWFyZC5TaXplID0gVURpbTIubmV3KDEsIHN0cm9rZUV4YWN0ICsgMSAtIGd1YXJkWCwgMSwgMiAqIG1ZKQoJbGVmdEd1YXJkLlBhcmVudCA9IGRlc2NyaXB0aW9uCgoJbG9jYWwgY2FwID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCgljYXAuTmFtZSA9ICJDYXAiCgljYXAuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKCWNhcC5Cb3JkZXJTaXplUGl4ZWwgPSAwCgljYXAuWkluZGV4ID0gNgoJY2FwLlBvc2l0aW9uID0gVURpbTIubmV3KDAsIGNhcExlZnQgLSBndWFyZFgsIDAsIG1ZKQoJY2FwLlNpemUgPSBVRGltMi5uZXcoMSwgY29ybmVyUmFkaXVzICsgZ3VhcmRYICsgMSwgMSwgLTIgKiBtWSkKCWNhcC5QYXJlbnQgPSBsZWZ0R3VhcmQKCglsb2NhbCBjYXBDb3JuZXIgPSBJbnN0YW5jZS5uZXcoIlVJQ29ybmVyIikKCWNhcENvcm5lci5Db3JuZXJSYWRpdXMgPSBVRGltLm5ldygwLCBjb3JuZXJSYWRpdXMpCgljYXBDb3JuZXIuUGFyZW50ID0gY2FwCgoJbG9jYWwgY2FwU3Ryb2tlID0gSW5zdGFuY2UubmV3KCJVSVN0cm9rZSIpCgljYXBTdHJva2UuQ29sb3IgPSBzdHJva2VDb2xvcgoJY2FwU3Ryb2tlLlRoaWNrbmVzcyA9IHN0cm9rZUV4YWN0CgljYXBTdHJva2UuVHJhbnNwYXJlbmN5ID0gc3Ryb2tlVHJhbnNwYXJlbmN5CgljYXBTdHJva2UuQXBwbHlTdHJva2VNb2RlID0gc3Ryb2tlTW9kZQoJY2FwU3Ryb2tlLkxpbmVKb2luTW9kZSA9IEVudW0uTGluZUpvaW5Nb2RlLlJvdW5kCgljYXBTdHJva2UuUGFyZW50ID0gY2FwCmVuZAoKbG9jYWwgZnVuY3Rpb24gc2V0RGVzY1RleHQodGV4dCkKCWRlc2NyaXB0aW9uLlRleHQgPSB0ZXh0Cglsb2NhbCB3ID0gVGV4dFNlcnZpY2U6R2V0VGV4dFNpemUodGV4dCwgZGVzY3JpcHRpb24uVGV4dFNpemUsIGRlc2NyaXB0aW9uLkZvbnQsIFZlY3RvcjIubmV3KDEwMDAwLCAxMDAwMCkpLlgKCXcgPSB3ICsgcGFkTGVmdCArIHBhZFJpZ2h0ICsgNAoJZGVzY3JpcHRpb24uU2l6ZSA9IFVEaW0yLm5ldygwLCB3LCAxLCAwKQplbmQKCmxvY2FsIGRlc2NHZW4gPSAwCmxvY2FsIGRlc2NNb2RlID0gImlkbGUiCmxvY2FsIGRlc2NUd2VlbiA9IG5pbApsb2NhbCBkZXNjUmV0cmFjdGluZyA9IGZhbHNlCgpsb2NhbCBmdW5jdGlvbiBzdG9wRGVzY1R3ZWVuKCkKCWlmIGRlc2NUd2VlbiB0aGVuCgkJZGVzY1R3ZWVuOkNhbmNlbCgpCgkJZGVzY1R3ZWVuID0gbmlsCgllbmQKCWRlc2NSZXRyYWN0aW5nID0gZmFsc2UKCWRlc2NyaXB0aW9uLkNsaXBzRGVzY2VuZGFudHMgPSBmYWxzZQplbmQKClJ1blNlcnZpY2UuUmVuZGVyU3RlcHBlZDpDb25uZWN0KGZ1bmN0aW9uKCkKCWlmIGRlc2NyaXB0aW9uLlZpc2libGUgYW5kIGRlc2NyaXB0aW9uLlRleHQgfj0gIiIgYW5kIG5vdCBkZXNjUmV0cmFjdGluZyB0aGVuCgkJbG9jYWwgdyA9IGRlc2NyaXB0aW9uLlRleHRCb3VuZHMuWCArIHBhZExlZnQgKyBwYWRSaWdodCArIDIKCQlpZiBtYXRoLmFicyhkZXNjcmlwdGlvbi5TaXplLlguT2Zmc2V0IC0gdykgPiAxIHRoZW4KCQkJZGVzY3JpcHRpb24uU2l6ZSA9IFVEaW0yLm5ldygwLCB3LCAxLCAwKQoJCWVuZAoJZW5kCmVuZCkKCmxvY2FsIHNvdW5kSWRzID0gewoJWzJdID0gMTEzMTA4ODMwMjQwMzUzLAoJWzNdID0gNzE5MDI0ODE3NTk2NjAsCglbNF0gPSA3MjgyNjU2NTAxODc2NSwKCVs1XSA9IDEwMjg1NTUzNTU0MzkzMCwKfQoKbG9jYWwgdHlwZVNvdW5kcyA9IHt9CmZvciBpID0gMiwgNCBkbwoJbG9jYWwgcyA9IHJvdzpGaW5kRmlyc3RDaGlsZCh0b3N0cmluZyhpKSwgdHJ1ZSkKCWlmIHMgYW5kIHM6SXNBKCJTb3VuZCIpIHRoZW4KCQl0eXBlU291bmRzWyN0eXBlU291bmRzICsgMV0gPSBzCgllbHNlCgkJcyA9IEluc3RhbmNlLm5ldygiU291bmQiKQoJCXMuTmFtZSA9IHRvc3RyaW5nKGkpCgkJcy5Tb3VuZElkID0gInJieGFzc2V0aWQ6Ly8iIC4uIHNvdW5kSWRzW2ldCgkJcy5Wb2x1bWUgPSAxCgkJcy5QYXJlbnQgPSBkZXNjcmlwdGlvbgoJCXR5cGVTb3VuZHNbI3R5cGVTb3VuZHMgKyAxXSA9IHMKCWVuZAplbmQKCmxvY2FsIGRlbGV0ZVNvdW5kID0gcm93OkZpbmRGaXJzdENoaWxkKCI1IiwgdHJ1ZSkKaWYgbm90IChkZWxldGVTb3VuZCBhbmQgZGVsZXRlU291bmQ6SXNBKCJTb3VuZCIpKSB0aGVuCglkZWxldGVTb3VuZCA9IEluc3RhbmNlLm5ldygiU291bmQiKQoJZGVsZXRlU291bmQuTmFtZSA9ICI1IgoJZGVsZXRlU291bmQuU291bmRJZCA9ICJyYnhhc3NldGlkOi8vIiAuLiBzb3VuZElkc1s1XQoJZGVsZXRlU291bmQuVm9sdW1lID0gMQoJZGVsZXRlU291bmQuUGFyZW50ID0gZGVzY3JpcHRpb24KZW5kCgpsb2NhbCBmdW5jdGlvbiBwbGF5SGl0KHNvdW5kKQoJaWYgbm90IHNvdW5kIHRoZW4gcmV0dXJuIGVuZAoJbG9jYWwgcyA9IHNvdW5kOkNsb25lKCkKCXMuUGFyZW50ID0gZGVzY3JpcHRpb24KCXM6UGxheSgpCglEZWJyaXM6QWRkSXRlbShzLCA1KQplbmQKCmxvY2FsIGZ1bmN0aW9uIHN0YXJ0VHlwaW5nKCkKCXN0b3BEZXNjVHdlZW4oKQoJZGVzY0dlbiArPSAxCglkZXNjTW9kZSA9ICJ0eXBpbmciCglsb2NhbCBnZW4gPSBkZXNjR2VuCgl0YXNrLnNwYXduKGZ1bmN0aW9uKCkKCQlkZXNjcmlwdGlvbi5WaXNpYmxlID0gdHJ1ZQoJCWxvY2FsIHNob3duID0gI2Rlc2NyaXB0aW9uLlRleHQKCQl3aGlsZSBzaG93biA8ICNkZXNjVGV4dCBhbmQgZ2VuID09IGRlc2NHZW4gZG8KCQkJc2hvd24gKz0gMQoJCQlzZXREZXNjVGV4dChzdHJpbmcuc3ViKGRlc2NUZXh0LCAxLCBzaG93bikpCgkJCWlmIHNob3duICUgMiA9PSAwIGFuZCAjdHlwZVNvdW5kcyA+IDAgdGhlbgoJCQkJcGxheUhpdCh0eXBlU291bmRzW21hdGgucmFuZG9tKDEsICN0eXBlU291bmRzKV0pCgkJCWVuZAoJCQl0YXNrLndhaXQoMC4wNCkKCQllbmQKCQlpZiBnZW4gPT0gZGVzY0dlbiB0aGVuCgkJCWRlc2NNb2RlID0gImlkbGUiCgkJZW5kCgllbmQpCmVuZAoKbG9jYWwgZnVuY3Rpb24gc3RhcnREZWxldGluZygpCglzdG9wRGVzY1R3ZWVuKCkKCWRlc2NHZW4gKz0gMQoJZGVzY01vZGUgPSAiZGVsZXRpbmciCglsb2NhbCBnZW4gPSBkZXNjR2VuCgl0YXNrLnNwYXduKGZ1bmN0aW9uKCkKCQlsb2NhbCBzaG93biA9ICNkZXNjcmlwdGlvbi5UZXh0CgkJbG9jYWwgbmV4dEhpdCA9IG1hdGgucmFuZG9tKDIsIDMpCgkJbG9jYWwgcmV0cmFjdGluZyA9IGZhbHNlCgkJd2hpbGUgc2hvd24gPiAwIGFuZCBnZW4gPT0gZGVzY0dlbiBkbwoJCQlzaG93biAtPSAxCgkJCW5leHRIaXQgLT0gMQoJCQlpZiByZXRyYWN0aW5nIHRoZW4KCQkJCWRlc2NyaXB0aW9uLlRleHQgPSBzdHJpbmcuc3ViKGRlc2NUZXh0LCAxLCBzaG93bikKCQkJZWxzZQoJCQkJc2V0RGVzY1RleHQoc3RyaW5nLnN1YihkZXNjVGV4dCwgMSwgc2hvd24pKQoJCQllbmQKCQkJaWYgbm90IHJldHJhY3RpbmcgYW5kIG5leHRIaXQgPD0gMCB0aGVuCgkJCQlwbGF5SGl0KGRlbGV0ZVNvdW5kKQoJCQkJbmV4dEhpdCA9IG1hdGgucmFuZG9tKDIsIDMpCgkJCWVuZAoJCQlpZiBub3QgcmV0cmFjdGluZyBhbmQgc2hvd24gPD0gMyB0aGVuCgkJCQlyZXRyYWN0aW5nID0gdHJ1ZQoJCQkJZGVzY1JldHJhY3RpbmcgPSB0cnVlCgkJCQlkZXNjcmlwdGlvbi5DbGlwc0Rlc2NlbmRhbnRzID0gdHJ1ZQoJCQkJbG9jYWwgdHcgPSBUd2VlblNlcnZpY2U6Q3JlYXRlKAoJCQkJCWRlc2NyaXB0aW9uLAoJCQkJCVR3ZWVuSW5mby5uZXcoMC4xNiwgRW51bS5FYXNpbmdTdHlsZS5RdWFkLCBFbnVtLkVhc2luZ0RpcmVjdGlvbi5JbiksCgkJCQkJewoJCQkJCQlTaXplID0gVURpbTIubmV3KDAsIDAsIDEsIDApLAoJCQkJCQlUZXh0VHJhbnNwYXJlbmN5ID0gMSwKCQkJCQl9CgkJCQkpCgkJCQlkZXNjVHdlZW4gPSB0dwoJCQkJdHc6UGxheSgpCgkJCWVuZAoJCQl0YXNrLndhaXQoMC4wMykKCQllbmQKCQlpZiBnZW4gfj0gZGVzY0dlbiB0aGVuIHJldHVybiBlbmQKCQlpZiBkZXNjVHdlZW4gdGhlbgoJCQlkZXNjVHdlZW4uQ29tcGxldGVkOldhaXQoKQoJCWVuZAoJCWlmIGdlbiA9PSBkZXNjR2VuIHRoZW4KCQkJZGVzY01vZGUgPSAiaWRsZSIKCQkJZGVzY3JpcHRpb24uVmlzaWJsZSA9IGZhbHNlCgkJCWRlc2NyaXB0aW9uLlRleHQgPSAiIgoJCQlkZXNjcmlwdGlvbi5UZXh0VHJhbnNwYXJlbmN5ID0gMAoJCWVuZAoJCWRlc2NUd2VlbiA9IG5pbAoJCWRlc2NSZXRyYWN0aW5nID0gZmFsc2UKCQlkZXNjcmlwdGlvbi5DbGlwc0Rlc2NlbmRhbnRzID0gZmFsc2UKCWVuZCkKZW5kCgpsb2NhbCBob3ZlcmVkID0ge30KbG9jYWwgaG92ZXJTZXNzaW9uID0gMApsb2NhbCBzZXNzaW9uQ291bnQgPSAwCmxvY2FsIGVuZEdlbiA9IDAKCmxvY2FsIGZ1bmN0aW9uIGhvdmVyQ2hhbmdlZCgpCglsb2NhbCBvdmVyID0gbmV4dChob3ZlcmVkKSB+PSBuaWwKCglpZiBvdmVyIHRoZW4KCQllbmRHZW4gKz0gMQoJCWlmIGhvdmVyU2Vzc2lvbiA9PSAwIHRoZW4KCQkJc2Vzc2lvbkNvdW50ICs9IDEKCQkJaG92ZXJTZXNzaW9uID0gc2Vzc2lvbkNvdW50CgkJCWxvY2FsIHNpZCA9IGhvdmVyU2Vzc2lvbgoJCQlpZiBkZXNjTW9kZSA9PSAiZGVsZXRpbmciIHRoZW4KCQkJCXN0YXJ0VHlwaW5nKCkKCQkJZWxzZQoJCQkJdGFzay5kZWxheSgwLjgsIGZ1bmN0aW9uKCkKCQkJCQlpZiBob3ZlclNlc3Npb24gPT0gc2lkIHRoZW4KCQkJCQkJc3RhcnRUeXBpbmcoKQoJCQkJCWVuZAoJCQkJZW5kKQoJCQllbmQKCQllbmQKCWVsc2UKCQlpZiBob3ZlclNlc3Npb24gfj0gMCB0aGVuCgkJCWVuZEdlbiArPSAxCgkJCWxvY2FsIGcgPSBlbmRHZW4KCQkJdGFzay5kZWxheSgwLjA1LCBmdW5jdGlvbigpCgkJCQlpZiBnID09IGVuZEdlbiBhbmQgbmV4dChob3ZlcmVkKSA9PSBuaWwgdGhlbgoJCQkJCWhvdmVyU2Vzc2lvbiA9IDAKCQkJCQlzdGFydERlbGV0aW5nKCkKCQkJCWVuZAoJCQllbmQpCgkJZW5kCgllbmQKZW5kCgpsb2NhbCBmdW5jdGlvbiBiaW5kSG92ZXIoZ3VpKQoJZ3VpLk1vdXNlRW50ZXI6Q29ubmVjdChmdW5jdGlvbigpCgkJaG92ZXJlZFtndWldID0gdHJ1ZQoJCWhvdmVyQ2hhbmdlZCgpCgllbmQpCglndWkuTW91c2VMZWF2ZTpDb25uZWN0KGZ1bmN0aW9uKCkKCQlob3ZlcmVkW2d1aV0gPSBuaWwKCQlob3ZlckNoYW5nZWQoKQoJZW5kKQplbmQKCmJpbmRIb3Zlcihyb3cpCmJpbmRIb3ZlcihiYWxscykKZm9yIF8sIGMgaW4gaXBhaXJzKHJvdzpHZXREZXNjZW5kYW50cygpKSBkbwoJaWYgYzpJc0EoIkd1aU9iamVjdCIpIGFuZCBjIH49IGJhbGxzIHRoZW4KCQliaW5kSG92ZXIoYykKCWVuZAplbmQKCmxvY2FsIFNDUklQVF9JRCA9IHRvc3RyaW5nKHJvdykgLi4gIl8iIC4uIHRvc3RyaW5nKG9zLnRpbWUoKSkKbG9jYWwgU1RPUF9LRVkgPSAiWFRXX0VTUF9TVE9QIgpsb2NhbCBFU1BfR1VJX05BTUUgPSAiUGxheWVyQm94RVNQIgoKaWYgZW52W1NUT1BfS0VZXSB0aGVuCglwY2FsbChlbnZbU1RPUF9LRVldKQplbmQKCmxvY2FsIGNhbWVyYSA9IHdvcmtzcGFjZS5DdXJyZW50Q2FtZXJhCgpsb2NhbCBncmVlbiA9IENvbG9yMy5mcm9tUkdCKDAsIDI1NSwgMCkKbG9jYWwgYmx1ZSA9IENvbG9yMy5mcm9tUkdCKDAsIDE3MCwgMjU1KQpsb2NhbCByZWQgPSBDb2xvcjMuZnJvbVJHQigyNTUsIDYwLCA2MCkKbG9jYWwgZ3JleSA9IENvbG9yMy5mcm9tUkdCKDEzMCwgMTMwLCAxMzApCmxvY2FsIHRoaWNrbmVzcyA9IDEuNQpsb2NhbCBzbW9vdGhTcGVlZCA9IDE0CmxvY2FsIGNvbG9yU3BlZWQgPSA5CmxvY2FsIHJlc3Bhd25TaGllbGRUaW1lID0gNQpsb2NhbCBpY29uVGludCA9IHRydWUKbG9jYWwgcGFkZGluZyA9IDIKbG9jYWwgaW5jbHVkZUFjY2Vzc29yaWVzID0gZmFsc2UKbG9jYWwgaW5jbHVkZVRvb2xzID0gZmFsc2UKbG9jYWwgbWF4UGFydHMgPSA2NApsb2NhbCBmYWRlU3BlZWQgPSA2CmxvY2FsIGljb25GYWRlT3V0ID0gMC4xMgpsb2NhbCBpY29uRmFkZUluID0gMC4yNQpsb2NhbCBzY3JlZW5NYXJnaW4gPSAxMjAKCmxvY2FsIGljb25JZHMgPSB7CglrbmlmZSA9IDExMzAxNTU5MzE0MDc4NywKCWdyaW4gPSAxMDc3NzgyMDMxNzk0MzQsCglndW4gPSAxMTM1ODM4NjU0ODg5MzUsCglza3VsbCA9IDEyMTcyNzQzNDgwOTA5MiwKCXNoaWVsZCA9IDc3MTU1MzI3MDQyOTk4LAp9Cgpsb2NhbCBpY29ucyA9IHt9CmZvciBraW5kLCBpZCBpbiBwYWlycyhpY29uSWRzKSBkbwoJaWNvbnNba2luZF0gPSAicmJ4YXNzZXRpZDovLyIgLi4gaWQKZW5kCgpsb2NhbCBndWlQYXJlbnQgPSBwbGF5ZXI6V2FpdEZvckNoaWxkKCJQbGF5ZXJHdWkiKQpkbwoJbG9jYWwgb2ssIGh1aSA9IHBjYWxsKGZ1bmN0aW9uKCkKCQlyZXR1cm4gZ2V0aHVpIGFuZCBnZXRodWkoKQoJZW5kKQoJaWYgb2sgYW5kIGh1aSB0aGVuCgkJZ3VpUGFyZW50ID0gaHVpCgllbmQKCWxvY2FsIG9sZCA9IGd1aVBhcmVudDpGaW5kRmlyc3RDaGlsZChFU1BfR1VJX05BTUUpCglpZiBvbGQgdGhlbgoJCW9sZDpEZXN0cm95KCkKCWVuZAplbmQKCmxvY2FsIGVzcEd1aSA9IEluc3RhbmNlLm5ldygiU2NyZWVuR3VpIikKZXNwR3VpLk5hbWUgPSBFU1BfR1VJX05BTUUKZXNwR3VpLlJlc2V0T25TcGF3biA9IGZhbHNlCmVzcEd1aS5JZ25vcmVHdWlJbnNldCA9IHRydWUKZXNwR3VpLkRpc3BsYXlPcmRlciA9IDk5OQplc3BHdWkuUGFyZW50ID0gZ3VpUGFyZW50Cgpsb2NhbCBmdW5jdGlvbiBuZXdCb3gocGxyKQoJbG9jYWwgZnJhbWUgPSBJbnN0YW5jZS5uZXcoIkZyYW1lIikKCWZyYW1lLlZpc2libGUgPSBmYWxzZQoJZnJhbWUuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKCWZyYW1lLkJvcmRlclNpemVQaXhlbCA9IDAKCglsb2NhbCBzdHJva2UgPSBJbnN0YW5jZS5uZXcoIlVJU3Ryb2tlIikKCXN0cm9rZS5UaGlja25lc3MgPSB0aGlja25lc3MKCXN0cm9rZS5Db2xvciA9IGdyZWVuCglzdHJva2UuQXBwbHlTdHJva2VNb2RlID0gRW51bS5BcHBseVN0cm9rZU1vZGUuQm9yZGVyCglzdHJva2UuUGFyZW50ID0gZnJhbWUKCglsb2NhbCBuYW1lID0gSW5zdGFuY2UubmV3KCJUZXh0TGFiZWwiKQoJbmFtZS5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJbmFtZS5UZXh0ID0gcGxyLk5hbWUKCW5hbWUuRm9udCA9IEVudW0uRm9udC5Hb3RoYW1Cb2xkCgluYW1lLlRleHRDb2xvcjMgPSBncmVlbgoJbmFtZS5UZXh0U3Ryb2tlVHJhbnNwYXJlbmN5ID0gMC41CgluYW1lLlRleHRTY2FsZWQgPSB0cnVlCgluYW1lLkFuY2hvclBvaW50ID0gVmVjdG9yMi5uZXcoMC41LCAxKQoJbmFtZS5Qb3NpdGlvbiA9IFVEaW0yLm5ldygwLjUsIDAsIDAsIC00KQoJbmFtZS5TaXplID0gVURpbTIubmV3KDEsIDMwLCAwLCAxNCkKCW5hbWUuWkluZGV4ID0gMgoJbmFtZS5QYXJlbnQgPSBmcmFtZQoKCWxvY2FsIGNhcCA9IEluc3RhbmNlLm5ldygiVUlUZXh0U2l6ZUNvbnN0cmFpbnQiKQoJY2FwLk1heFRleHRTaXplID0gMTQKCWNhcC5NaW5UZXh0U2l6ZSA9IDEKCWNhcC5QYXJlbnQgPSBuYW1lCgoJbG9jYWwgc2hhZG93ID0gSW5zdGFuY2UubmV3KCJJbWFnZUxhYmVsIikKCXNoYWRvdy5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJc2hhZG93LkFuY2hvclBvaW50ID0gVmVjdG9yMi5uZXcoMC41LCAwLjUpCglzaGFkb3cuUG9zaXRpb24gPSBVRGltMi5uZXcoMC41LCAxLCAwLjUsIDEpCglzaGFkb3cuU2l6ZSA9IFVEaW0yLmZyb21PZmZzZXQoMjQsIDI0KQoJc2hhZG93LkltYWdlID0gaWNvbnMuZ3JpbgoJc2hhZG93LkltYWdlQ29sb3IzID0gQ29sb3IzLm5ldygwLCAwLCAwKQoJc2hhZG93LkltYWdlVHJhbnNwYXJlbmN5ID0gMC40NQoJc2hhZG93LlpJbmRleCA9IDIKCXNoYWRvdy5QYXJlbnQgPSBmcmFtZQoKCWxvY2FsIGljb24gPSBJbnN0YW5jZS5uZXcoIkltYWdlTGFiZWwiKQoJaWNvbi5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJaWNvbi5BbmNob3JQb2ludCA9IFZlY3RvcjIubmV3KDAuNSwgMC41KQoJaWNvbi5Qb3NpdGlvbiA9IFVEaW0yLm5ldygwLjUsIDAsIDAuNSwgMCkKCWljb24uU2l6ZSA9IFVEaW0yLmZyb21PZmZzZXQoMjQsIDI0KQoJaWNvbi5JbWFnZSA9IGljb25zLmdyaW4KCWljb24uSW1hZ2VDb2xvcjMgPSBpY29uVGludCBhbmQgZ3JlZW4gb3IgQ29sb3IzLm5ldygxLCAxLCAxKQoJaWNvbi5aSW5kZXggPSAzCglpY29uLlBhcmVudCA9IGZyYW1lCgoJZnJhbWUuUGFyZW50ID0gZXNwR3VpCgoJbG9jYWwgYm94ID0gewoJCXNob3duID0gZmFsc2UsCgkJaGFzUmVjdCA9IGZhbHNlLAoJCWZhZGUgPSAwLAoJCXggPSAwLAoJCXkgPSAwLAoJCXcgPSAwLAoJCWggPSAwLAoJCWhhc0d1biA9IGZhbHNlLAoJCWhhc0tuaWZlID0gZmFsc2UsCgkJbmV4dFNjYW4gPSAwLAoJCXJlc3Bhd25VbnRpbCA9IG5pbCwKCQlpY29uS2luZCA9ICJncmluIiwKCQlzaG93bkltYWdlID0gImdyaW4iLAoJCXN3YXBQaGFzZSA9IG5pbCwKCQlzd2FwVCA9IDAsCgkJY29sb3JDdXIgPSBncmVlbiwKCQljaGFyID0gbmlsLAoJCWNoYXJDb25uID0gbmlsLAoJCWRlc2NBZGRlZCA9IG5pbCwKCQlkZXNjUmVtb3ZlZCA9IG5pbCwKCQlwYXJ0cyA9IHt9LAoJCXBhcnRzRGlydHkgPSB0cnVlLAoJfQoKCWZ1bmN0aW9uIGJveC5TZXQoeCwgeSwgdywgaCkKCQlmcmFtZS5Qb3NpdGlvbiA9IFVEaW0yLmZyb21PZmZzZXQoeCwgeSkKCQlmcmFtZS5TaXplID0gVURpbTIuZnJvbU9mZnNldCh3LCBoKQoKCQlsb2NhbCBtID0gbWF0aC5taW4odywgaCkKCQlsb2NhbCBweCA9IG1hdGguY2xhbXAobSAqIDAuNDUsIDgsIDY0KQoJCXB4ID0gbWF0aC5taW4ocHgsIG1hdGgubWF4KG0gLSA0LCAwKSkKCQlpY29uLlNpemUgPSBVRGltMi5mcm9tT2Zmc2V0KHB4LCBweCkKCQlzaGFkb3cuU2l6ZSA9IFVEaW0yLmZyb21PZmZzZXQocHgsIHB4KQoKCQlsb2NhbCBuaCA9IG1hdGguY2xhbXAoaCAqIDAuMiwgNSwgMTQpCgkJbmFtZS5TaXplID0gVURpbTIubmV3KDEsIDMwLCAwLCBuaCkKCWVuZAoKCWZ1bmN0aW9uIGJveC5TZXRJY29uKGspCgkJaWNvbi5JbWFnZSA9IGljb25zW2tdCgkJc2hhZG93LkltYWdlID0gaWNvbnNba10KCQlib3guc2hvd25JbWFnZSA9IGsKCWVuZAoKCWZ1bmN0aW9uIGJveC5TbmFwSWNvbigpCgkJYm94LnNob3duSW1hZ2UgPSBib3guaWNvbktpbmQKCQlib3guc3dhcFBoYXNlID0gbmlsCgkJYm94LnN3YXBUID0gMAoJCWljb24uSW1hZ2UgPSBpY29uc1tib3guaWNvbktpbmRdCgkJc2hhZG93LkltYWdlID0gaWNvbnNbYm94Lmljb25LaW5kXQoJZW5kCgoJZnVuY3Rpb24gYm94LlVwZGF0ZUljb24oa2luZCwgZHQpCgkJaWYga2luZCB+PSBib3guaWNvbktpbmQgdGhlbgoJCQlib3guaWNvbktpbmQgPSBraW5kCgkJZW5kCgoJCWlmIGJveC5pY29uS2luZCB+PSBib3guc2hvd25JbWFnZSB0aGVuCgkJCWlmIG5vdCBib3guc3dhcFBoYXNlIHRoZW4KCQkJCWJveC5zd2FwUGhhc2UgPSAib3V0IgoJCQkJYm94LnN3YXBUID0gMAoJCQllbHNlaWYgYm94LnN3YXBQaGFzZSA9PSAiaW4iIHRoZW4KCQkJCWJveC5zd2FwUGhhc2UgPSAib3V0IgoJCQkJYm94LnN3YXBUID0gMSAtIGJveC5zd2FwVAoJCQllbmQKCQllbmQKCgkJbG9jYWwgYSA9IDEKCgkJaWYgYm94LnN3YXBQaGFzZSA9PSAib3V0IiB0aGVuCgkJCWJveC5zd2FwVCA9IG1hdGgubWluKGJveC5zd2FwVCArIGR0IC8gaWNvbkZhZGVPdXQsIDEpCgkJCWEgPSAxIC0gYm94LnN3YXBUCgkJCWlmIGJveC5zd2FwVCA+PSAxIHRoZW4KCQkJCWJveC5zaG93bkltYWdlID0gYm94Lmljb25LaW5kCgkJCQlpY29uLkltYWdlID0gaWNvbnNbYm94Lmljb25LaW5kXQoJCQkJc2hhZG93LkltYWdlID0gaWNvbnNbYm94Lmljb25LaW5kXQoJCQkJYm94LnN3YXBQaGFzZSA9ICJpbiIKCQkJCWJveC5zd2FwVCA9IDAKCQkJCWEgPSAwCgkJCWVuZAoJCWVsc2VpZiBib3guc3dhcFBoYXNlID09ICJpbiIgdGhlbgoJCQlib3guc3dhcFQgPSBtYXRoLm1pbihib3guc3dhcFQgKyBkdCAvIGljb25GYWRlSW4sIDEpCgkJCWEgPSBib3guc3dhcFQKCQkJaWYgYm94LnN3YXBUID49IDEgdGhlbgoJCQkJYm94LnN3YXBQaGFzZSA9IG5pbAoJCQkJYm94LnN3YXBUID0gMAoJCQkJYSA9IDEKCQkJZW5kCgkJZW5kCgoJCWljb24uSW1hZ2VUcmFuc3BhcmVuY3kgPSAxIC0gYm94LmZhZGUgKiBhCgkJc2hhZG93LkltYWdlVHJhbnNwYXJlbmN5ID0gMSAtIGJveC5mYWRlICogYSAqIDAuNTUKCWVuZAoKCWZ1bmN0aW9uIGJveC5TZXRDb2xvcihjKQoJCXN0cm9rZS5Db2xvciA9IGMKCQluYW1lLlRleHRDb2xvcjMgPSBjCgkJaWYgaWNvblRpbnQgdGhlbgoJCQlpY29uLkltYWdlQ29sb3IzID0gYwoJCWVuZAoJZW5kCgoJZnVuY3Rpb24gYm94LkFwcGx5RmFkZSh0KQoJCXN0cm9rZS5UcmFuc3BhcmVuY3kgPSAxIC0gdAoJCW5hbWUuVGV4dFRyYW5zcGFyZW5jeSA9IDEgLSB0CgkJbmFtZS5UZXh0U3Ryb2tlVHJhbnNwYXJlbmN5ID0gMSAtIHQgKiAwLjUKCWVuZAoKCWZ1bmN0aW9uIGJveC5TaG93KCkKCQlmcmFtZS5WaXNpYmxlID0gdHJ1ZQoJZW5kCgoJZnVuY3Rpb24gYm94LkhpZGUoKQoJCWZyYW1lLlZpc2libGUgPSBmYWxzZQoJZW5kCgoJZnVuY3Rpb24gYm94LkRlc3Ryb3koKQoJCWZyYW1lOkRlc3Ryb3koKQoJZW5kCgoJcmV0dXJuIGJveAplbmQKCmxvY2FsIENPUk5FUlMgPSB7CglWZWN0b3IzLm5ldygxLCAxLCAxKSwgVmVjdG9yMy5uZXcoMSwgMSwgLTEpLAoJVmVjdG9yMy5uZXcoMSwgLTEsIDEpLCBWZWN0b3IzLm5ldygxLCAtMSwgLTEpLAoJVmVjdG9yMy5uZXcoLTEsIDEsIDEpLCBWZWN0b3IzLm5ldygtMSwgMSwgLTEpLAoJVmVjdG9yMy5uZXcoLTEsIC0xLCAxKSwgVmVjdG9yMy5uZXcoLTEsIC0xLCAtMSksCn0KCmxvY2FsIEVTUCA9IHsKCWVuYWJsZWQgPSBmYWxzZSwKCWJveGVzID0ge30sCglyZW5kZXJDb25uID0gbmlsLAoJYWRkZWRDb25uID0gbmlsLAoJcmVtb3ZpbmdDb25uID0gbmlsLAp9Cgpsb2NhbCBmdW5jdGlvbiBzY2FuUGxheWVyKHBscikKCWxvY2FsIGhhc0d1biwgaGFzS25pZmUgPSBmYWxzZSwgZmFsc2UKCglsb2NhbCBmdW5jdGlvbiBzY2FuKHBhcmVudCkKCQlpZiBub3QgcGFyZW50IHRoZW4gcmV0dXJuIGVuZAoJCWZvciBfLCBjaGlsZCBpbiBpcGFpcnMocGFyZW50OkdldENoaWxkcmVuKCkpIGRvCgkJCWlmIGNoaWxkOklzQSgiVG9vbCIpIHRoZW4KCQkJCWlmIGNoaWxkLk5hbWUgPT0gIkd1biIgdGhlbgoJCQkJCWhhc0d1biA9IHRydWUKCQkJCWVsc2VpZiBjaGlsZC5OYW1lID09ICJLbmlmZSIgdGhlbgoJCQkJCWhhc0tuaWZlID0gdHJ1ZQoJCQkJZW5kCgkJCWVuZAoJCQlpZiAjY2hpbGQ6R2V0Q2hpbGRyZW4oKSA+IDAgdGhlbgoJCQkJc2NhbihjaGlsZCkKCQkJZW5kCgkJZW5kCgllbmQKCglzY2FuKHBscikKCXNjYW4ocGxyLkNoYXJhY3RlcikKCglyZXR1cm4gaGFzR3VuLCBoYXNLbmlmZQplbmQKCmxvY2FsIGZ1bmN0aW9uIHJlYnVpbGRQYXJ0cyhjaGFyKQoJbG9jYWwgbGlzdCA9IHt9Cglmb3IgXywgZCBpbiBpcGFpcnMoY2hhcjpHZXREZXNjZW5kYW50cygpKSBkbwoJCWlmIGQ6SXNBKCJCYXNlUGFydCIpIGFuZCBkLlRyYW5zcGFyZW5jeSA8IDEgdGhlbgoJCQlpZiBpbmNsdWRlQWNjZXNzb3JpZXMgb3Igbm90IGQ6RmluZEZpcnN0QW5jZXN0b3JPZkNsYXNzKCJBY2Nlc3NvcnkiKSB0aGVuCgkJCQlpZiBpbmNsdWRlVG9vbHMgb3Igbm90IGQ6RmluZEZpcnN0QW5jZXN0b3JPZkNsYXNzKCJUb29sIikgdGhlbgoJCQkJCWxvY2FsIHMgPSBkLlNpemUKCQkJCQlpZiBzLlggKiBzLlkgKiBzLlogPj0gMC4wMiB0aGVuCgkJCQkJCWxpc3RbI2xpc3QgKyAxXSA9IGQKCQkJCQllbmQKCQkJCWVuZAoJCQllbmQKCQllbmQKCWVuZAoJaWYgI2xpc3QgPiBtYXhQYXJ0cyB0aGVuCgkJdGFibGUuc29ydChsaXN0LCBmdW5jdGlvbihhLCBiKQoJCQlsb2NhbCBzYSwgc2IgPSBhLlNpemUsIGIuU2l6ZQoJCQlyZXR1cm4gc2EuWCAqIHNhLlkgKiBzYS5aID4gc2IuWCAqIHNiLlkgKiBzYi5aCgkJZW5kKQoJCWZvciBpID0gbWF4UGFydHMgKyAxLCAjbGlzdCBkbwoJCQlsaXN0W2ldID0gbmlsCgkJZW5kCgllbmQKCXJldHVybiBsaXN0CmVuZAoKbG9jYWwgZnVuY3Rpb24gaGlkZUJveChib3gpCglpZiBib3guc2hvd24gdGhlbgoJCWJveC5zaG93biA9IGZhbHNlCgkJYm94LkhpZGUoKQoJZW5kCglib3guaGFzUmVjdCA9IGZhbHNlCglib3guZmFkZSA9IDAKCWJveC5TbmFwSWNvbigpCmVuZAoKbG9jYWwgZnVuY3Rpb24gdXBkYXRlQm94KHBsciwgYm94LCBkdCkKCWxvY2FsIGNoYXIgPSBwbHIuQ2hhcmFjdGVyCglpZiBub3QgY2hhciBvciBub3QgY2hhci5QYXJlbnQgdGhlbgoJCWhpZGVCb3goYm94KQoJCXJldHVybgoJZW5kCgoJbG9jYWwgaHVtID0gY2hhcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIkh1bWFub2lkIikKCWxvY2FsIHJvb3QgPSBjaGFyOkZpbmRGaXJzdENoaWxkKCJIdW1hbm9pZFJvb3RQYXJ0IikKCWlmIG5vdCBodW0gb3Igbm90IHJvb3QgdGhlbgoJCWhpZGVCb3goYm94KQoJCXJldHVybgoJZW5kCgoJaWYgYm94LmNoYXIgfj0gY2hhciB0aGVuCgkJYm94LmNoYXIgPSBjaGFyCgkJYm94LnBhcnRzRGlydHkgPSB0cnVlCgkJaWYgYm94LmRlc2NBZGRlZCB0aGVuIGJveC5kZXNjQWRkZWQ6RGlzY29ubmVjdCgpIGJveC5kZXNjQWRkZWQgPSBuaWwgZW5kCgkJaWYgYm94LmRlc2NSZW1vdmVkIHRoZW4gYm94LmRlc2NSZW1vdmVkOkRpc2Nvbm5lY3QoKSBib3guZGVzY1JlbW92ZWQgPSBuaWwgZW5kCgkJYm94LmRlc2NBZGRlZCA9IGNoYXIuRGVzY2VuZGFudEFkZGVkOkNvbm5lY3QoZnVuY3Rpb24oKQoJCQlib3gucGFydHNEaXJ0eSA9IHRydWUKCQllbmQpCgkJYm94LmRlc2NSZW1vdmVkID0gY2hhci5EZXNjZW5kYW50UmVtb3ZlZDpDb25uZWN0KGZ1bmN0aW9uKCkKCQkJYm94LnBhcnRzRGlydHkgPSB0cnVlCgkJZW5kKQoJZW5kCgoJaWYgYm94LnBhcnRzRGlydHkgdGhlbgoJCWJveC5wYXJ0c0RpcnR5ID0gZmFsc2UKCQlib3gucGFydHMgPSByZWJ1aWxkUGFydHMoY2hhcikKCWVuZAoKCWxvY2FsIHJvb3RTUCA9IGNhbWVyYTpXb3JsZFRvVmlld3BvcnRQb2ludChyb290LlBvc2l0aW9uKQoJaWYgcm9vdFNQLlogPD0gMCB0aGVuCgkJaGlkZUJveChib3gpCgkJcmV0dXJuCgllbmQKCglsb2NhbCBwYXJ0cyA9IGJveC5wYXJ0cwoJbG9jYWwgbWluWCwgbWluWSA9IG1hdGguaHVnZSwgbWF0aC5odWdlCglsb2NhbCBtYXhYLCBtYXhZID0gLW1hdGguaHVnZSwgLW1hdGguaHVnZQoJbG9jYWwgYW55ID0gZmFsc2UKCglsb2NhbCBmdW5jdGlvbiBwcm9qZWN0KGNmLCBoeCwgaHksIGh6KQoJCWZvciBjID0gMSwgI0NPUk5FUlMgZG8KCQkJbG9jYWwgcyA9IENPUk5FUlNbY10KCQkJbG9jYWwgc3AgPSBjYW1lcmE6V29ybGRUb1ZpZXdwb3J0UG9pbnQoY2Y6UG9pbnRUb1dvcmxkU3BhY2UoVmVjdG9yMy5uZXcocy5YICogaHgsIHMuWSAqIGh5LCBzLlogKiBoeikpKQoJCQlpZiBzcC5aID4gMC4wNSB0aGVuCgkJCQlhbnkgPSB0cnVlCgkJCQlsb2NhbCBweCwgcHkgPSBzcC5YLCBzcC5ZCgkJCQlpZiBweCA8IG1pblggdGhlbiBtaW5YID0gcHggZW5kCgkJCQlpZiBweCA+IG1heFggdGhlbiBtYXhYID0gcHggZW5kCgkJCQlpZiBweSA8IG1pblkgdGhlbiBtaW5ZID0gcHkgZW5kCgkJCQlpZiBweSA+IG1heFkgdGhlbiBtYXhZID0gcHkgZW5kCgkJCWVuZAoJCWVuZAoJZW5kCgoJaWYgI3BhcnRzID4gMCB0aGVuCgkJZm9yIGkgPSAxLCAjcGFydHMgZG8KCQkJbG9jYWwgcGFydCA9IHBhcnRzW2ldCgkJCWlmIHBhcnQuUGFyZW50IHRoZW4KCQkJCWxvY2FsIHN6ID0gcGFydC5TaXplCgkJCQlwcm9qZWN0KHBhcnQuQ0ZyYW1lLCBzei5YICogMC41LCBzei5ZICogMC41LCBzei5aICogMC41KQoJCQllbmQKCQllbmQKCWVsc2UKCQlwcm9qZWN0KHJvb3QuQ0ZyYW1lLCAxLjI1LCAyLjc1LCAxLjI1KQoJZW5kCgoJaWYgbm90IGFueSB0aGVuCgkJaGlkZUJveChib3gpCgkJcmV0dXJuCgllbmQKCglsb2NhbCB2cyA9IGNhbWVyYS5WaWV3cG9ydFNpemUKCW1pblggPSBtYXRoLmNsYW1wKG1pblgsIC1zY3JlZW5NYXJnaW4sIHZzLlggKyBzY3JlZW5NYXJnaW4pCgltYXhYID0gbWF0aC5jbGFtcChtYXhYLCAtc2NyZWVuTWFyZ2luLCB2cy5YICsgc2NyZWVuTWFyZ2luKQoJbWluWSA9IG1hdGguY2xhbXAobWluWSwgLXNjcmVlbk1hcmdpbiwgdnMuWSArIHNjcmVlbk1hcmdpbikKCW1heFkgPSBtYXRoLmNsYW1wKG1heFksIC1zY3JlZW5NYXJnaW4sIHZzLlkgKyBzY3JlZW5NYXJnaW4pCgoJbWluWCA9IG1pblggLSBwYWRkaW5nCgltaW5ZID0gbWluWSAtIHBhZGRpbmcKCW1heFggPSBtYXhYICsgcGFkZGluZwoJbWF4WSA9IG1heFkgKyBwYWRkaW5nCgoJbG9jYWwgdHcgPSBtYXhYIC0gbWluWAoJbG9jYWwgdGggPSBtYXhZIC0gbWluWQoJaWYgdHcgPCAyIG9yIHRoIDwgMiB0aGVuCgkJaGlkZUJveChib3gpCgkJcmV0dXJuCgllbmQKCglpZiBib3guaGFzUmVjdCB0aGVuCgkJbG9jYWwgY2N4LCBjY3kgPSBib3gueCArIGJveC53ICogMC41LCBib3gueSArIGJveC5oICogMC41CgkJbG9jYWwgbmN4LCBuY3kgPSBtaW5YICsgdHcgKiAwLjUsIG1pblkgKyB0aCAqIDAuNQoJCWlmIG1hdGguYWJzKG5jeCAtIGNjeCkgPiBtYXRoLm1heChib3gudyAqIDIsIDIwMCkKCQkJb3IgbWF0aC5hYnMobmN5IC0gY2N5KSA+IG1hdGgubWF4KGJveC5oICogMiwgMjAwKSB0aGVuCgkJCWJveC54LCBib3gueSwgYm94LncsIGJveC5oID0gbWluWCwgbWluWSwgdHcsIHRoCgkJZWxzZQoJCQlsb2NhbCBhID0gMSAtIG1hdGguZXhwKC1zbW9vdGhTcGVlZCAqIGR0KQoJCQlib3gueCA9IGJveC54ICsgKG1pblggLSBib3gueCkgKiBhCgkJCWJveC55ID0gYm94LnkgKyAobWluWSAtIGJveC55KSAqIGEKCQkJYm94LncgPSBib3gudyArICh0dyAtIGJveC53KSAqIGEKCQkJYm94LmggPSBib3guaCArICh0aCAtIGJveC5oKSAqIGEKCQllbmQKCWVsc2UKCQlib3guaGFzUmVjdCA9IHRydWUKCQlib3gueCwgYm94LnksIGJveC53LCBib3guaCA9IG1pblgsIG1pblksIHR3LCB0aAoJZW5kCgoJbG9jYWwgbm93ID0gb3MuY2xvY2soKQoJbG9jYWwga2luZCwgY29sCgoJaWYgaHVtLkhlYWx0aCA8PSAwIHRoZW4KCQlraW5kLCBjb2wgPSAic2t1bGwiLCBncmV5CgllbHNlaWYgYm94LnJlc3Bhd25VbnRpbCBhbmQgbm93IDwgYm94LnJlc3Bhd25VbnRpbCB0aGVuCgkJa2luZCwgY29sID0gInNoaWVsZCIsIGdyZXkKCWVsc2VpZiBib3guaGFzR3VuIHRoZW4KCQlraW5kLCBjb2wgPSAiZ3VuIiwgYmx1ZQoJZWxzZWlmIGJveC5oYXNLbmlmZSB0aGVuCgkJa2luZCwgY29sID0gImtuaWZlIiwgcmVkCgllbHNlCgkJa2luZCwgY29sID0gImdyaW4iLCBncmVlbgoJZW5kCgoJaWYgYm94LmNvbG9yQ3VyIH49IGNvbCB0aGVuCgkJbG9jYWwgYSA9IDEgLSBtYXRoLmV4cCgtY29sb3JTcGVlZCAqIGR0KQoJCWxvY2FsIG5jID0gYm94LmNvbG9yQ3VyOkxlcnAoY29sLCBhKQoJCWlmIG1hdGguYWJzKG5jLlIgLSBjb2wuUikgKyBtYXRoLmFicyhuYy5HIC0gY29sLkcpICsgbWF0aC5hYnMobmMuQiAtIGNvbC5CKSA8IDAuMDIgdGhlbgoJCQluYyA9IGNvbAoJCWVuZAoJCWJveC5jb2xvckN1ciA9IG5jCgkJYm94LlNldENvbG9yKG5jKQoJZW5kCgoJYm94LlNldChib3gueCwgYm94LnksIGJveC53LCBib3guaCkKCglpZiBub3QgYm94LnNob3duIHRoZW4KCQlib3guc2hvd24gPSB0cnVlCgkJYm94LmZhZGUgPSAwCgkJYm94LlNob3coKQoJZW5kCgoJaWYgYm94LmZhZGUgPCAxIHRoZW4KCQlib3guZmFkZSA9IG1hdGgubWluKGJveC5mYWRlICsgZHQgKiBmYWRlU3BlZWQsIDEpCgkJYm94LkFwcGx5RmFkZShib3guZmFkZSkKCWVuZAoKCWJveC5VcGRhdGVJY29uKGtpbmQsIGR0KQplbmQKCmxvY2FsIGZ1bmN0aW9uIGFkZFBsYXllcihwbHIpCglpZiBwbHIgPT0gcGxheWVyIG9yIEVTUC5ib3hlc1twbHJdIHRoZW4KCQlyZXR1cm4KCWVuZAoJbG9jYWwgYm94ID0gbmV3Qm94KHBscikKCWJveC5jaGFyQ29ubiA9IHBsci5DaGFyYWN0ZXJBZGRlZDpDb25uZWN0KGZ1bmN0aW9uKCkKCQlib3guaGFzR3VuID0gZmFsc2UKCQlib3guaGFzS25pZmUgPSBmYWxzZQoJCWJveC5uZXh0U2NhbiA9IDAKCQlib3gucmVzcGF3blVudGlsID0gb3MuY2xvY2soKSArIHJlc3Bhd25TaGllbGRUaW1lCgllbmQpCglFU1AuYm94ZXNbcGxyXSA9IGJveAplbmQKCmxvY2FsIGZ1bmN0aW9uIHJlbW92ZVBsYXllcihwbHIpCglsb2NhbCBib3ggPSBFU1AuYm94ZXNbcGxyXQoJaWYgYm94IHRoZW4KCQlFU1AuYm94ZXNbcGxyXSA9IG5pbAoJCWlmIGJveC5jaGFyQ29ubiB0aGVuCgkJCWJveC5jaGFyQ29ubjpEaXNjb25uZWN0KCkKCQllbmQKCQlpZiBib3guZGVzY0FkZGVkIHRoZW4KCQkJYm94LmRlc2NBZGRlZDpEaXNjb25uZWN0KCkKCQllbmQKCQlpZiBib3guZGVzY1JlbW92ZWQgdGhlbgoJCQlib3guZGVzY1JlbW92ZWQ6RGlzY29ubmVjdCgpCgkJZW5kCgkJYm94LkRlc3Ryb3koKQoJZW5kCmVuZAoKaWYgZW52LlhUV19FU1BfU0NBTl9USFJFQUQgdGhlbgoJcGNhbGwoZnVuY3Rpb24oKSBlbnYuWFRXX0VTUF9TQ0FOX1RIUkVBRCA9IG5pbCBlbmQpCmVuZAoKZW52LlhUV19FU1BfU0NBTl9USFJFQUQgPSB0YXNrLnNwYXduKGZ1bmN0aW9uKCkKCXdoaWxlIGVudi5YVFdfRVNQX1NDQU5fVEhSRUFEIGRvCgkJdGFzay53YWl0KDAuMjUpCgkJaWYgRVNQLmVuYWJsZWQgdGhlbgoJCQlsb2NhbCBub3cgPSBvcy5jbG9jaygpCgkJCWZvciBwbHIsIGJveCBpbiBwYWlycyhFU1AuYm94ZXMpIGRvCgkJCQlpZiBub3cgPj0gYm94Lm5leHRTY2FuIHRoZW4KCQkJCQlsb2NhbCBoYXNHdW4sIGhhc0tuaWZlID0gc2NhblBsYXllcihwbHIpCgkJCQkJYm94Lmhhc0d1biA9IGhhc0d1bgoJCQkJCWJveC5oYXNLbmlmZSA9IGhhc0tuaWZlCgkJCQkJYm94Lm5leHRTY2FuID0gbm93ICsgKChoYXNHdW4gb3IgaGFzS25pZmUpIGFuZCAyIG9yIDQpCgkJCQllbmQKCQkJZW5kCgkJZW5kCgllbmQKZW5kKQoKbG9jYWwgZnVuY3Rpb24gc2V0RVNQKG9uKQoJaWYgb24gPT0gRVNQLmVuYWJsZWQgdGhlbgoJCXJldHVybgoJZW5kCglFU1AuZW5hYmxlZCA9IG9uCgoJaWYgb24gdGhlbgoJCWZvciBfLCBwbHIgaW4gaXBhaXJzKFBsYXllcnM6R2V0UGxheWVycygpKSBkbwoJCQlhZGRQbGF5ZXIocGxyKQoJCWVuZAoJCUVTUC5hZGRlZENvbm4gPSBQbGF5ZXJzLlBsYXllckFkZGVkOkNvbm5lY3QoYWRkUGxheWVyKQoJCUVTUC5yZW1vdmluZ0Nvbm4gPSBQbGF5ZXJzLlBsYXllclJlbW92aW5nOkNvbm5lY3QocmVtb3ZlUGxheWVyKQoJCUVTUC5yZW5kZXJDb25uID0gUnVuU2VydmljZS5SZW5kZXJTdGVwcGVkOkNvbm5lY3QoZnVuY3Rpb24oZHQpCgkJCWR0ID0gZHQgb3IgMC4wMTYKCQkJY2FtZXJhID0gd29ya3NwYWNlLkN1cnJlbnRDYW1lcmEKCQkJZm9yIHBsciwgYm94IGluIHBhaXJzKEVTUC5ib3hlcykgZG8KCQkJCXVwZGF0ZUJveChwbHIsIGJveCwgZHQpCgkJCWVuZAoJCWVuZCkKCWVsc2UKCQlpZiBFU1AucmVuZGVyQ29ubiB0aGVuIEVTUC5yZW5kZXJDb25uOkRpc2Nvbm5lY3QoKSBFU1AucmVuZGVyQ29ubiA9IG5pbCBlbmQKCQlpZiBFU1AuYWRkZWRDb25uIHRoZW4gRVNQLmFkZGVkQ29ubjpEaXNjb25uZWN0KCkgRVNQLmFkZGVkQ29ubiA9IG5pbCBlbmQKCQlpZiBFU1AucmVtb3ZpbmdDb25uIHRoZW4gRVNQLnJlbW92aW5nQ29ubjpEaXNjb25uZWN0KCkgRVNQLnJlbW92aW5nQ29ubiA9IG5pbCBlbmQKCQlmb3IgcGxyIGluIHBhaXJzKEVTUC5ib3hlcykgZG8KCQkJcmVtb3ZlUGxheWVyKHBscikKCQllbmQKCWVuZAplbmQKCmVudltTVE9QX0tFWV0gPSBmdW5jdGlvbigpCglzZXRFU1AoZmFsc2UpCglpZiBlc3BHdWkgdGhlbgoJCWVzcEd1aTpEZXN0cm95KCkKCWVuZAoJaWYgZW52LlhUV19FU1BfU0NBTl9USFJFQUQgdGhlbgoJCWVudi5YVFdfRVNQX1NDQU5fVEhSRUFEID0gbmlsCgllbmQKZW5kCgpsb2NhbCBsYXN0ID0gMAoKbG9jYWwgZnVuY3Rpb24gZmxpcCgpCglpZiB0aWNrKCkgLSBsYXN0IDwgMC4xIHRoZW4gcmV0dXJuIGVuZAoJbGFzdCA9IHRpY2soKQoKCXNldEVTUChub3QgRVNQLmVuYWJsZWQpCgoJVHdlZW5TZXJ2aWNlOkNyZWF0ZShhbmltLCBUd2VlbkluZm8ubmV3KDAuMjUsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uT3V0KSwgewoJCVZhbHVlID0gRVNQLmVuYWJsZWQgYW5kIDEgb3IgMAoJfSk6UGxheSgpCmVuZAoKbG9jYWwgZnVuY3Rpb24gcHJlc3MoaW5wdXQpCglpZiBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Nb3VzZUJ1dHRvbjEKCQlvciBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Ub3VjaCB0aGVuCgkJZmxpcCgpCgllbmQKZW5kCgpiYWxscy5JbnB1dEJlZ2FuOkNvbm5lY3QocHJlc3MpCnJvdy5JbnB1dEJlZ2FuOkNvbm5lY3QocHJlc3MpCmVuZCwgZnVuY3Rpb24oZSkKICAgIGxvY2FsIHRiID0gIiIKICAgIHBjYWxsKGZ1bmN0aW9uKCkgdGIgPSBkZWJ1Zy50cmFjZWJhY2soIiIsIDIpIGVuZCkKICAgIHJldHVybiB0b3N0cmluZyhlKSAuLiAiXG4iIC4uIHRiCmVuZCkKaWYgbm90IF9feHR3X29rIHRoZW4KICAgIGxvY2FsIGVyclN0ciA9IHRvc3RyaW5nKF9feHR3X2VycikKICAgIGlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgICAgICBwY2FsbChmdW5jdGlvbigpIF9feHR3X3NlbGY6U2V0QXR0cmlidXRlKCJ4dHdfZXJyb3IiLCBlcnJTdHIpIGVuZCkKICAgIGVuZAogICAgcGNhbGwoZnVuY3Rpb24oKSB3YXJuKCJbeHR3XSBGQUlMOiAiIC4uIF9feHR3X25hbWUgLi4gIiAoIiAuLiBfX3h0d19jbHMgLi4gIik6ICIgLi4gZXJyU3RyKSBlbmQpCmVuZA==")
        local prelude = "local script = ...\n"
        local fn, cerr = loadstring(prelude .. src, "@xtw-m:" .. tostring(inst.Name))
        if not fn then
            manualFail = manualFail + 1
            runErrors[#runErrors + 1] = "Function (load): " .. tostring(cerr)
        else
            local thread = coroutine.create(fn)
            local okRun, runErr = coroutine.resume(thread, inst)
            if okRun then ranManual = ranManual + 1
            else
                manualFail = manualFail + 1
                runErrors[#runErrors + 1] = "Function (resume): " .. tostring(runErr)
            end
        end
    end
end
do
    local inst = n[37]
    local hasRan = false
    pcall(function() hasRan = inst:GetAttribute("xtw_ran") and true or false end)
    if not hasRan then
        local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkZ1bmN0aW9uIiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgUGxheWVycyA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpCmxvY2FsIFJ1blNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlJ1blNlcnZpY2UiKQpsb2NhbCBUd2VlblNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlR3ZWVuU2VydmljZSIpCmxvY2FsIERlYnJpcyA9IGdhbWU6R2V0U2VydmljZSgiRGVicmlzIikKbG9jYWwgVGV4dFNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlRleHRTZXJ2aWNlIikKbG9jYWwgVXNlcklucHV0U2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVXNlcklucHV0U2VydmljZSIpCgpsb2NhbCBST1dfTkFNRSA9IG5pbAoKbG9jYWwgZnVuY3Rpb24gZ2V0RW52KCkKCWxvY2FsIG9rLCBlID0gcGNhbGwoZnVuY3Rpb24oKSByZXR1cm4gZ2V0Z2VudiBhbmQgZ2V0Z2VudigpIGVuZCkKCWlmIG9rIGFuZCB0eXBlKGUpID09ICJ0YWJsZSIgdGhlbiByZXR1cm4gZSBlbmQKCXJldHVybiBfRwplbmQKbG9jYWwgZW52ID0gZ2V0RW52KCkKCmxvY2FsIHJvdyA9IG5pbAoKaWYgZW52IGFuZCBlbnYuWFRXX0ZMWV9UQVJHRVQgdGhlbgoJbG9jYWwgdCA9IGVudi5YVFdfRkxZX1RBUkdFVAoJaWYgdHlwZW9mKHQpID09ICJJbnN0YW5jZSIgYW5kIHQ6SXNBKCJHdWlPYmplY3QiKSB0aGVuCgkJcm93ID0gdAoJZW5kCmVuZAoKaWYgbm90IHJvdyBhbmQgUk9XX05BTUUgdGhlbgoJbG9jYWwgcGcgPSBQbGF5ZXJzLkxvY2FsUGxheWVyOkZpbmRGaXJzdENoaWxkT2ZDbGFzcygiUGxheWVyR3VpIikKCWlmIHBnIHRoZW4KCQlmb3IgXywgZCBpbiBpcGFpcnMocGc6R2V0RGVzY2VuZGFudHMoKSkgZG8KCQkJaWYgZDpJc0EoIkd1aU9iamVjdCIpIGFuZCBkLk5hbWUgPT0gUk9XX05BTUUgYW5kIGQ6RmluZEZpcnN0Q2hpbGQoIkJhbGwiLCB0cnVlKSB0aGVuCgkJCQlyb3cgPSBkCgkJCQlicmVhawoJCQllbmQKCQllbmQKCWVuZAplbmQKCmlmIG5vdCByb3cgdGhlbgoJcGNhbGwoZnVuY3Rpb24oKQoJCWxvY2FsIHAgPSBzY3JpcHQgYW5kIHNjcmlwdC5QYXJlbnQKCQlpZiBwIGFuZCBwOklzQSgiR3VpT2JqZWN0IikgdGhlbgoJCQlyb3cgPSBwCgkJZW5kCgllbmQpCmVuZAoKaWYgbm90IHJvdyB0aGVuCgl3YXJuKCJbRmx5XSBObyB0YXJnZXQgcm93IGZyYW1lLiIpCglyZXR1cm4KZW5kCgpsb2NhbCBiYWxscyA9IHJvdzpGaW5kRmlyc3RDaGlsZCgiQmFsbCIsIHRydWUpCmlmIG5vdCBiYWxscyB0aGVuCgliYWxscyA9IHJvdzpXYWl0Rm9yQ2hpbGQoIkJhbGwiLCA1KQplbmQKaWYgbm90IGJhbGxzIHRoZW4KCXdhcm4oIltGbHldIE5vIEJhbGwgY2hpbGQgaW4gcm93LiIpCglyZXR1cm4KZW5kCgpsb2NhbCBkZXNjcmlwdGlvbiA9IHJvdzpXYWl0Rm9yQ2hpbGQoIkRlc2NyaXB0aW9uIiwgNSkKaWYgbm90IGRlc2NyaXB0aW9uIHRoZW4KCXdhcm4oIltGbHldIE5vIERlc2NyaXB0aW9uIGNoaWxkIGluIHJvdy4iKQoJcmV0dXJuCmVuZAoKbG9jYWwgcGxheWVyID0gUGxheWVycy5Mb2NhbFBsYXllcgoKcm93LkFjdGl2ZSA9IHRydWUKYmFsbHMuQWN0aXZlID0gdHJ1ZQpiYWxscy5BdXRvQnV0dG9uQ29sb3IgPSBmYWxzZQoKbG9jYWwgbGVmdG92ZXIgPSByb3c6RmluZEZpcnN0Q2hpbGQoIkRlc2NQYW5lbCIsIHRydWUpCmlmIGxlZnRvdmVyIHRoZW4KCWxlZnRvdmVyOkRlc3Ryb3koKQplbmQKCmxvY2FsIGRhcmt5ZWxsb3cgPSBDb2xvcjMuZnJvbVJHQig0MCwgNDAsIDQwKQpsb2NhbCB5ZWxsb3cgPSBDb2xvcjMuZnJvbVJHQigwLCAxMTAsIDApCgpsb2NhbCBncmFkaWVudCA9IHJvdzpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlVJR3JhZGllbnQiKSBvciBJbnN0YW5jZS5uZXcoIlVJR3JhZGllbnQiKQpncmFkaWVudC5Db2xvciA9IENvbG9yU2VxdWVuY2UubmV3KHsKCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMCwgeWVsbG93KSwKCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMC40OTksIHllbGxvdyksCglDb2xvclNlcXVlbmNlS2V5cG9pbnQubmV3KDAuNSwgZGFya3llbGxvdyksCglDb2xvclNlcXVlbmNlS2V5cG9pbnQubmV3KDEsIGRhcmt5ZWxsb3cpLAp9KQpncmFkaWVudC5PZmZzZXQgPSBWZWN0b3IyLm5ldygtMC41LCAwKQpncmFkaWVudC5QYXJlbnQgPSByb3cKCmxvY2FsIG9mZlBvcyA9IGJhbGxzLlBvc2l0aW9uCmxvY2FsIG9uUG9zID0gVURpbTIubmV3KAoJMSAtIG9mZlBvcy5YLlNjYWxlIC0gYmFsbHMuU2l6ZS5YLlNjYWxlLAoJb2ZmUG9zLlguT2Zmc2V0IC0gYmFsbHMuU2l6ZS5YLk9mZnNldCwKCW9mZlBvcy5ZLlNjYWxlLAoJb2ZmUG9zLlkuT2Zmc2V0CikKCmxvY2FsIG9mZkMgPSAwCmxvY2FsIG9uQyA9IDAKCmxvY2FsIGZ1bmN0aW9uIG1lYXN1cmUoKQoJbG9jYWwgdyA9IHJvdy5BYnNvbHV0ZVNpemUuWAoJaWYgdyA8PSAwIHRoZW4gcmV0dXJuIGVuZAoJbG9jYWwgaGFsZiA9ICgwLjUgLSBiYWxscy5BbmNob3JQb2ludC5YKSAqIChiYWxscy5TaXplLlguU2NhbGUgKyBiYWxscy5TaXplLlguT2Zmc2V0IC8gdykKCW9mZkMgPSBvZmZQb3MuWC5TY2FsZSArIG9mZlBvcy5YLk9mZnNldCAvIHcgKyBoYWxmCglvbkMgPSBvblBvcy5YLlNjYWxlICsgb25Qb3MuWC5PZmZzZXQgLyB3ICsgaGFsZgplbmQKCmxvY2FsIGFuaW0gPSBJbnN0YW5jZS5uZXcoIk51bWJlclZhbHVlIikKYW5pbS5WYWx1ZSA9IDAKCmxvY2FsIGZ1bmN0aW9uIGFwcGx5KHUpCglsb2NhbCBzeCA9IG9mZlBvcy5YLlNjYWxlICsgKG9uUG9zLlguU2NhbGUgLSBvZmZQb3MuWC5TY2FsZSkgKiB1Cglsb2NhbCBveCA9IG9mZlBvcy5YLk9mZnNldCArIChvblBvcy5YLk9mZnNldCAtIG9mZlBvcy5YLk9mZnNldCkgKiB1CgliYWxscy5Qb3NpdGlvbiA9IFVEaW0yLm5ldyhzeCwgb3gsIG9mZlBvcy5ZLlNjYWxlLCBvZmZQb3MuWS5PZmZzZXQpCglncmFkaWVudC5PZmZzZXQgPSBWZWN0b3IyLm5ldygob2ZmQyArIChvbkMgLSBvZmZDKSAqIHUpIC0gMC41LCAwKQplbmQKCmFuaW0uQ2hhbmdlZDpDb25uZWN0KGFwcGx5KQptZWFzdXJlKCkKYXBwbHkoMCkKCnJvdzpHZXRQcm9wZXJ0eUNoYW5nZWRTaWduYWwoIkFic29sdXRlU2l6ZSIpOkNvbm5lY3QoZnVuY3Rpb24oKQoJbWVhc3VyZSgpCglhcHBseShhbmltLlZhbHVlKQplbmQpCgpsb2NhbCBkZXNjVGV4dCA9ICJUaGlzIGlzIHlvdXIgU21vb3RoIEZseSB0b2dnbGUuIFdBU0QgdG8gZ2xpZGUsIFNwYWNlIHRvIGdvIHVwLiIKCmlmIGRlc2NyaXB0aW9uLlRleHRTY2FsZWQgdGhlbgoJbG9jYWwgcmVuZGVyZWQgPSBkZXNjcmlwdGlvbi5UZXh0Qm91bmRzLlkKCWRlc2NyaXB0aW9uLlRleHRTY2FsZWQgPSBmYWxzZQoJZGVzY3JpcHRpb24uVGV4dFNpemUgPSBtYXRoLm1heCgxLCBtYXRoLmZsb29yKHJlbmRlcmVkID4gMCBhbmQgcmVuZGVyZWQgb3Igcm93LkFic29sdXRlU2l6ZS5ZICogMC43KSkKZW5kCgpmb3IgXywgYyBpbiBpcGFpcnMoZGVzY3JpcHRpb246R2V0Q2hpbGRyZW4oKSkgZG8KCWlmIGM6SXNBKCJVSVN0cm9rZSIpIG9yIGMuTmFtZSA9PSAiVG9wTGluZSIgb3IgYy5OYW1lID09ICJCb3R0b21MaW5lIiBvciBjLk5hbWUgPT0gIlJpZ2h0TGluZSIKCQlvciBjLk5hbWUgPT0gIlNlYW1QYXRjaCIgb3IgYy5OYW1lID09ICJUb3BCcmlkZ2UiIG9yIGMuTmFtZSA9PSAiQm90dG9tQnJpZGdlIgoJCW9yIGMuTmFtZSA9PSAiQ2FwQ2xpcCIgb3IgYy5OYW1lID09ICJDYXAiIG9yIGMuTmFtZSA9PSAiRGVzY0Nvcm5lciIKCQlvciBjLk5hbWUgPT0gIkxlZnRHdWFyZCIgdGhlbgoJCWM6RGVzdHJveSgpCgllbmQKZW5kCgpsb2NhbCBob3N0ID0gcm93LlBhcmVudApsb2NhbCBzdHJva2VDb2xvciA9IG5pbApsb2NhbCBzdHJva2VUcmFuc3BhcmVuY3kgPSAwCmxvY2FsIHN0cm9rZUV4YWN0ID0gMQpsb2NhbCBzdHJva2VNb2RlID0gRW51bS5BcHBseVN0cm9rZU1vZGUuQm9yZGVyCmxvY2FsIGNvcm5lclJhZGl1cyA9IDAKCmlmIGhvc3QgYW5kIGhvc3Q6SXNBKCJHdWlPYmplY3QiKSB0aGVuCglkZXNjcmlwdGlvbi5CYWNrZ3JvdW5kQ29sb3IzID0gaG9zdC5CYWNrZ3JvdW5kQ29sb3IzCglkZXNjcmlwdGlvbi5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gaG9zdC5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5Cglsb2NhbCBocyA9IGhvc3Q6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJVSVN0cm9rZSIpCglpZiBocyB0aGVuCgkJc3Ryb2tlQ29sb3IgPSBocy5Db2xvcgoJCXN0cm9rZVRyYW5zcGFyZW5jeSA9IGhzLlRyYW5zcGFyZW5jeQoJCXN0cm9rZUV4YWN0ID0gaHMuVGhpY2tuZXNzCgkJc3Ryb2tlTW9kZSA9IGhzLkFwcGx5U3Ryb2tlTW9kZQoJCWlmIHN0cm9rZUV4YWN0IDwgMSB0aGVuCgkJCXN0cm9rZUV4YWN0ID0gMQoJCWVuZAoJZW5kCglsb2NhbCBoYyA9IGhvc3Q6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJVSUNvcm5lciIpCglpZiBoYyB0aGVuCgkJbG9jYWwgcmggPSByb3cuQWJzb2x1dGVTaXplLlkKCQlpZiByaCA8IDAgdGhlbiByaCA9IDAgZW5kCgkJY29ybmVyUmFkaXVzID0gbWF0aC5mbG9vcihoYy5Db3JuZXJSYWRpdXMuT2Zmc2V0ICsgaGMuQ29ybmVyUmFkaXVzLlNjYWxlICogcmggKyAwLjUpCgkJaWYgY29ybmVyUmFkaXVzIDwgMCB0aGVuIGNvcm5lclJhZGl1cyA9IDAgZW5kCgkJbG9jYWwgbWF4UiA9IG1hdGguZmxvb3IocmggLyAyKQoJCWlmIG1heFIgPiA2IHRoZW4KCQkJbWF4UiA9IDYKCQllbmQKCQlpZiBjb3JuZXJSYWRpdXMgPiBtYXhSIHRoZW4KCQkJY29ybmVyUmFkaXVzID0gbWF4UgoJCWVuZAoJZW5kCmVsc2UKCWRlc2NyaXB0aW9uLkJhY2tncm91bmRDb2xvcjMgPSBDb2xvcjMuZnJvbVJHQigzNSwgMzUsIDM1KQoJZGVzY3JpcHRpb24uQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDAuMQplbmQKCmxvY2FsIHBhZCA9IGRlc2NyaXB0aW9uOkZpbmRGaXJzdENoaWxkT2ZDbGFzcygiVUlQYWRkaW5nIikKaWYgbm90IHBhZCB0aGVuCglwYWQgPSBJbnN0YW5jZS5uZXcoIlVJUGFkZGluZyIpCglwYWQuUGFyZW50ID0gZGVzY3JpcHRpb24KZW5kCnBhZC5QYWRkaW5nTGVmdCA9IFVEaW0ubmV3KDAsIDgpCnBhZC5QYWRkaW5nUmlnaHQgPSBVRGltLm5ldygwLCAyKQoKbG9jYWwgcGFkTGVmdCA9IDgKbG9jYWwgcGFkUmlnaHQgPSAyCmRvCglsb2NhbCBwID0gZGVzY3JpcHRpb246RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJVSVBhZGRpbmciKQoJaWYgcCB0aGVuCgkJcGFkTGVmdCA9IHAuUGFkZGluZ0xlZnQuT2Zmc2V0CgkJcGFkUmlnaHQgPSBwLlBhZGRpbmdSaWdodC5PZmZzZXQKCWVuZAplbmQKCmRlc2NyaXB0aW9uLlRleHRXcmFwcGVkID0gZmFsc2UKZGVzY3JpcHRpb24uVGV4dFhBbGlnbm1lbnQgPSBFbnVtLlRleHRYQWxpZ25tZW50LkxlZnQKZGVzY3JpcHRpb24uQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygwLCAwKQpkZXNjcmlwdGlvbi5BdXRvbWF0aWNTaXplID0gRW51bS5BdXRvbWF0aWNTaXplLk5vbmUKZGVzY3JpcHRpb24uUG9zaXRpb24gPSBVRGltMi5uZXcoMSwgMCwgMCwgMCkKZGVzY3JpcHRpb24uU2l6ZSA9IFVEaW0yLm5ldygwLCAwLCAxLCAwKQpkZXNjcmlwdGlvbi5aSW5kZXggPSA1CmRlc2NyaXB0aW9uLlRleHQgPSAiIgpkZXNjcmlwdGlvbi5WaXNpYmxlID0gZmFsc2UKZGVzY3JpcHRpb24uQ2xpcHNEZXNjZW5kYW50cyA9IGZhbHNlCgppZiBjb3JuZXJSYWRpdXMgPiAwIHRoZW4KCWxvY2FsIGRlc2NDb3JuZXIgPSBJbnN0YW5jZS5uZXcoIlVJQ29ybmVyIikKCWRlc2NDb3JuZXIuTmFtZSA9ICJEZXNjQ29ybmVyIgoJZGVzY0Nvcm5lci5Db3JuZXJSYWRpdXMgPSBVRGltLm5ldygwLCBjb3JuZXJSYWRpdXMpCglkZXNjQ29ybmVyLlBhcmVudCA9IGRlc2NyaXB0aW9uCmVuZAoKaWYgc3Ryb2tlQ29sb3IgdGhlbgoJbG9jYWwgZ3VhcmRYID0gLShtYXRoLmNlaWwoc3Ryb2tlRXhhY3QpICsgMSkKCWxvY2FsIGNhcExlZnQgPSAtKGNvcm5lclJhZGl1cyArIHN0cm9rZUV4YWN0ICsgMikKCWxvY2FsIG1ZID0gc3Ryb2tlRXhhY3QgKyAxCgoJbG9jYWwgbGVmdEd1YXJkID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCglsZWZ0R3VhcmQuTmFtZSA9ICJMZWZ0R3VhcmQiCglsZWZ0R3VhcmQuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKCWxlZnRHdWFyZC5Cb3JkZXJTaXplUGl4ZWwgPSAwCglsZWZ0R3VhcmQuQ2xpcHNEZXNjZW5kYW50cyA9IHRydWUKCWxlZnRHdWFyZC5aSW5kZXggPSA2CglsZWZ0R3VhcmQuUG9zaXRpb24gPSBVRGltMi5uZXcoMCwgZ3VhcmRYLCAwLCAtbVkpCglsZWZ0R3VhcmQuU2l6ZSA9IFVEaW0yLm5ldygxLCBzdHJva2VFeGFjdCArIDEgLSBndWFyZFgsIDEsIDIgKiBtWSkKCWxlZnRHdWFyZC5QYXJlbnQgPSBkZXNjcmlwdGlvbgoKCWxvY2FsIGNhcCA9IEluc3RhbmNlLm5ldygiRnJhbWUiKQoJY2FwLk5hbWUgPSAiQ2FwIgoJY2FwLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAxCgljYXAuQm9yZGVyU2l6ZVBpeGVsID0gMAoJY2FwLlpJbmRleCA9IDYKCWNhcC5Qb3NpdGlvbiA9IFVEaW0yLm5ldygwLCBjYXBMZWZ0IC0gZ3VhcmRYLCAwLCBtWSkKCWNhcC5TaXplID0gVURpbTIubmV3KDEsIGNvcm5lclJhZGl1cyArIGd1YXJkWCArIDEsIDEsIC0yICogbVkpCgljYXAuUGFyZW50ID0gbGVmdEd1YXJkCgoJbG9jYWwgY2FwQ29ybmVyID0gSW5zdGFuY2UubmV3KCJVSUNvcm5lciIpCgljYXBDb3JuZXIuQ29ybmVyUmFkaXVzID0gVURpbS5uZXcoMCwgY29ybmVyUmFkaXVzKQoJY2FwQ29ybmVyLlBhcmVudCA9IGNhcAoKCWxvY2FsIGNhcFN0cm9rZSA9IEluc3RhbmNlLm5ldygiVUlTdHJva2UiKQoJY2FwU3Ryb2tlLkNvbG9yID0gc3Ryb2tlQ29sb3IKCWNhcFN0cm9rZS5UaGlja25lc3MgPSBzdHJva2VFeGFjdAoJY2FwU3Ryb2tlLlRyYW5zcGFyZW5jeSA9IHN0cm9rZVRyYW5zcGFyZW5jeQoJY2FwU3Ryb2tlLkFwcGx5U3Ryb2tlTW9kZSA9IHN0cm9rZU1vZGUKCWNhcFN0cm9rZS5MaW5lSm9pbk1vZGUgPSBFbnVtLkxpbmVKb2luTW9kZS5Sb3VuZAoJY2FwU3Ryb2tlLlBhcmVudCA9IGNhcAplbmQKCmxvY2FsIGZ1bmN0aW9uIHNldERlc2NUZXh0KHRleHQpCglkZXNjcmlwdGlvbi5UZXh0ID0gdGV4dAoJbG9jYWwgdyA9IFRleHRTZXJ2aWNlOkdldFRleHRTaXplKHRleHQsIGRlc2NyaXB0aW9uLlRleHRTaXplLCBkZXNjcmlwdGlvbi5Gb250LCBWZWN0b3IyLm5ldygxMDAwMCwgMTAwMDApKS5YCgl3ID0gdyArIHBhZExlZnQgKyBwYWRSaWdodCArIDQKCWRlc2NyaXB0aW9uLlNpemUgPSBVRGltMi5uZXcoMCwgdywgMSwgMCkKZW5kCgpsb2NhbCBkZXNjR2VuID0gMApsb2NhbCBkZXNjTW9kZSA9ICJpZGxlIgpsb2NhbCBkZXNjVHdlZW4gPSBuaWwKbG9jYWwgZGVzY1JldHJhY3RpbmcgPSBmYWxzZQoKbG9jYWwgZnVuY3Rpb24gc3RvcERlc2NUd2VlbigpCglpZiBkZXNjVHdlZW4gdGhlbgoJCWRlc2NUd2VlbjpDYW5jZWwoKQoJCWRlc2NUd2VlbiA9IG5pbAoJZW5kCglkZXNjUmV0cmFjdGluZyA9IGZhbHNlCglkZXNjcmlwdGlvbi5DbGlwc0Rlc2NlbmRhbnRzID0gZmFsc2UKZW5kCgpSdW5TZXJ2aWNlLlJlbmRlclN0ZXBwZWQ6Q29ubmVjdChmdW5jdGlvbigpCglpZiBkZXNjcmlwdGlvbi5WaXNpYmxlIGFuZCBkZXNjcmlwdGlvbi5UZXh0IH49ICIiIGFuZCBub3QgZGVzY1JldHJhY3RpbmcgdGhlbgoJCWxvY2FsIHcgPSBkZXNjcmlwdGlvbi5UZXh0Qm91bmRzLlggKyBwYWRMZWZ0ICsgcGFkUmlnaHQgKyAyCgkJaWYgbWF0aC5hYnMoZGVzY3JpcHRpb24uU2l6ZS5YLk9mZnNldCAtIHcpID4gMSB0aGVuCgkJCWRlc2NyaXB0aW9uLlNpemUgPSBVRGltMi5uZXcoMCwgdywgMSwgMCkKCQllbmQKCWVuZAplbmQpCgpsb2NhbCBzb3VuZElkcyA9IHsKCVsyXSA9IDExMzEwODgzMDI0MDM1MywKCVszXSA9IDcxOTAyNDgxNzU5NjYwLAoJWzRdID0gNzI4MjY1NjUwMTg3NjUsCglbNV0gPSAxMDI4NTU1MzU1NDM5MzAsCn0KCmxvY2FsIHR5cGVTb3VuZHMgPSB7fQpmb3IgaSA9IDIsIDQgZG8KCWxvY2FsIHMgPSByb3c6RmluZEZpcnN0Q2hpbGQodG9zdHJpbmcoaSksIHRydWUpCglpZiBzIGFuZCBzOklzQSgiU291bmQiKSB0aGVuCgkJdHlwZVNvdW5kc1sjdHlwZVNvdW5kcyArIDFdID0gcwoJZWxzZQoJCXMgPSBJbnN0YW5jZS5uZXcoIlNvdW5kIikKCQlzLk5hbWUgPSB0b3N0cmluZyhpKQoJCXMuU291bmRJZCA9ICJyYnhhc3NldGlkOi8vIiAuLiBzb3VuZElkc1tpXQoJCXMuVm9sdW1lID0gMQoJCXMuUGFyZW50ID0gZGVzY3JpcHRpb24KCQl0eXBlU291bmRzWyN0eXBlU291bmRzICsgMV0gPSBzCgllbmQKZW5kCgpsb2NhbCBkZWxldGVTb3VuZCA9IHJvdzpGaW5kRmlyc3RDaGlsZCgiNSIsIHRydWUpCmlmIG5vdCAoZGVsZXRlU291bmQgYW5kIGRlbGV0ZVNvdW5kOklzQSgiU291bmQiKSkgdGhlbgoJZGVsZXRlU291bmQgPSBJbnN0YW5jZS5uZXcoIlNvdW5kIikKCWRlbGV0ZVNvdW5kLk5hbWUgPSAiNSIKCWRlbGV0ZVNvdW5kLlNvdW5kSWQgPSAicmJ4YXNzZXRpZDovLyIgLi4gc291bmRJZHNbNV0KCWRlbGV0ZVNvdW5kLlZvbHVtZSA9IDEKCWRlbGV0ZVNvdW5kLlBhcmVudCA9IGRlc2NyaXB0aW9uCmVuZAoKbG9jYWwgZnVuY3Rpb24gcGxheUhpdChzb3VuZCkKCWlmIG5vdCBzb3VuZCB0aGVuIHJldHVybiBlbmQKCWxvY2FsIHMgPSBzb3VuZDpDbG9uZSgpCglzLlBhcmVudCA9IGRlc2NyaXB0aW9uCglzOlBsYXkoKQoJRGVicmlzOkFkZEl0ZW0ocywgNSkKZW5kCgpsb2NhbCBmdW5jdGlvbiBzdGFydFR5cGluZygpCglzdG9wRGVzY1R3ZWVuKCkKCWRlc2NHZW4gKz0gMQoJZGVzY01vZGUgPSAidHlwaW5nIgoJbG9jYWwgZ2VuID0gZGVzY0dlbgoJdGFzay5zcGF3bihmdW5jdGlvbigpCgkJZGVzY3JpcHRpb24uVmlzaWJsZSA9IHRydWUKCQlsb2NhbCBzaG93biA9ICNkZXNjcmlwdGlvbi5UZXh0CgkJd2hpbGUgc2hvd24gPCAjZGVzY1RleHQgYW5kIGdlbiA9PSBkZXNjR2VuIGRvCgkJCXNob3duICs9IDEKCQkJc2V0RGVzY1RleHQoc3RyaW5nLnN1YihkZXNjVGV4dCwgMSwgc2hvd24pKQoJCQlpZiBzaG93biAlIDIgPT0gMCBhbmQgI3R5cGVTb3VuZHMgPiAwIHRoZW4KCQkJCXBsYXlIaXQodHlwZVNvdW5kc1ttYXRoLnJhbmRvbSgxLCAjdHlwZVNvdW5kcyldKQoJCQllbmQKCQkJdGFzay53YWl0KDAuMDQpCgkJZW5kCgkJaWYgZ2VuID09IGRlc2NHZW4gdGhlbgoJCQlkZXNjTW9kZSA9ICJpZGxlIgoJCWVuZAoJZW5kKQplbmQKCmxvY2FsIGZ1bmN0aW9uIHN0YXJ0RGVsZXRpbmcoKQoJc3RvcERlc2NUd2VlbigpCglkZXNjR2VuICs9IDEKCWRlc2NNb2RlID0gImRlbGV0aW5nIgoJbG9jYWwgZ2VuID0gZGVzY0dlbgoJdGFzay5zcGF3bihmdW5jdGlvbigpCgkJbG9jYWwgc2hvd24gPSAjZGVzY3JpcHRpb24uVGV4dAoJCWxvY2FsIG5leHRIaXQgPSBtYXRoLnJhbmRvbSgyLCAzKQoJCWxvY2FsIHJldHJhY3RpbmcgPSBmYWxzZQoJCXdoaWxlIHNob3duID4gMCBhbmQgZ2VuID09IGRlc2NHZW4gZG8KCQkJc2hvd24gLT0gMQoJCQluZXh0SGl0IC09IDEKCQkJaWYgcmV0cmFjdGluZyB0aGVuCgkJCQlkZXNjcmlwdGlvbi5UZXh0ID0gc3RyaW5nLnN1YihkZXNjVGV4dCwgMSwgc2hvd24pCgkJCWVsc2UKCQkJCXNldERlc2NUZXh0KHN0cmluZy5zdWIoZGVzY1RleHQsIDEsIHNob3duKSkKCQkJZW5kCgkJCWlmIG5vdCByZXRyYWN0aW5nIGFuZCBuZXh0SGl0IDw9IDAgdGhlbgoJCQkJcGxheUhpdChkZWxldGVTb3VuZCkKCQkJCW5leHRIaXQgPSBtYXRoLnJhbmRvbSgyLCAzKQoJCQllbmQKCQkJaWYgbm90IHJldHJhY3RpbmcgYW5kIHNob3duIDw9IDMgdGhlbgoJCQkJcmV0cmFjdGluZyA9IHRydWUKCQkJCWRlc2NSZXRyYWN0aW5nID0gdHJ1ZQoJCQkJZGVzY3JpcHRpb24uQ2xpcHNEZXNjZW5kYW50cyA9IHRydWUKCQkJCWxvY2FsIHR3ID0gVHdlZW5TZXJ2aWNlOkNyZWF0ZSgKCQkJCQlkZXNjcmlwdGlvbiwKCQkJCQlUd2VlbkluZm8ubmV3KDAuMTYsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uSW4pLAoJCQkJCXsKCQkJCQkJU2l6ZSA9IFVEaW0yLm5ldygwLCAwLCAxLCAwKSwKCQkJCQkJVGV4dFRyYW5zcGFyZW5jeSA9IDEsCgkJCQkJfQoJCQkJKQoJCQkJZGVzY1R3ZWVuID0gdHcKCQkJCXR3OlBsYXkoKQoJCQllbmQKCQkJdGFzay53YWl0KDAuMDMpCgkJZW5kCgkJaWYgZ2VuIH49IGRlc2NHZW4gdGhlbiByZXR1cm4gZW5kCgkJaWYgZGVzY1R3ZWVuIHRoZW4KCQkJZGVzY1R3ZWVuLkNvbXBsZXRlZDpXYWl0KCkKCQllbmQKCQlpZiBnZW4gPT0gZGVzY0dlbiB0aGVuCgkJCWRlc2NNb2RlID0gImlkbGUiCgkJCWRlc2NyaXB0aW9uLlZpc2libGUgPSBmYWxzZQoJCQlkZXNjcmlwdGlvbi5UZXh0ID0gIiIKCQkJZGVzY3JpcHRpb24uVGV4dFRyYW5zcGFyZW5jeSA9IDAKCQllbmQKCQlkZXNjVHdlZW4gPSBuaWwKCQlkZXNjUmV0cmFjdGluZyA9IGZhbHNlCgkJZGVzY3JpcHRpb24uQ2xpcHNEZXNjZW5kYW50cyA9IGZhbHNlCgllbmQpCmVuZAoKbG9jYWwgaG92ZXJlZCA9IHt9CmxvY2FsIGhvdmVyU2Vzc2lvbiA9IDAKbG9jYWwgc2Vzc2lvbkNvdW50ID0gMApsb2NhbCBlbmRHZW4gPSAwCgpsb2NhbCBmdW5jdGlvbiBob3ZlckNoYW5nZWQoKQoJbG9jYWwgb3ZlciA9IG5leHQoaG92ZXJlZCkgfj0gbmlsCgoJaWYgb3ZlciB0aGVuCgkJZW5kR2VuICs9IDEKCQlpZiBob3ZlclNlc3Npb24gPT0gMCB0aGVuCgkJCXNlc3Npb25Db3VudCArPSAxCgkJCWhvdmVyU2Vzc2lvbiA9IHNlc3Npb25Db3VudAoJCQlsb2NhbCBzaWQgPSBob3ZlclNlc3Npb24KCQkJaWYgZGVzY01vZGUgPT0gImRlbGV0aW5nIiB0aGVuCgkJCQlzdGFydFR5cGluZygpCgkJCWVsc2UKCQkJCXRhc2suZGVsYXkoMC44LCBmdW5jdGlvbigpCgkJCQkJaWYgaG92ZXJTZXNzaW9uID09IHNpZCB0aGVuCgkJCQkJCXN0YXJ0VHlwaW5nKCkKCQkJCQllbmQKCQkJCWVuZCkKCQkJZW5kCgkJZW5kCgllbHNlCgkJaWYgaG92ZXJTZXNzaW9uIH49IDAgdGhlbgoJCQllbmRHZW4gKz0gMQoJCQlsb2NhbCBnID0gZW5kR2VuCgkJCXRhc2suZGVsYXkoMC4wNSwgZnVuY3Rpb24oKQoJCQkJaWYgZyA9PSBlbmRHZW4gYW5kIG5leHQoaG92ZXJlZCkgPT0gbmlsIHRoZW4KCQkJCQlob3ZlclNlc3Npb24gPSAwCgkJCQkJc3RhcnREZWxldGluZygpCgkJCQllbmQKCQkJZW5kKQoJCWVuZAoJZW5kCmVuZAoKbG9jYWwgZnVuY3Rpb24gYmluZEhvdmVyKGd1aSkKCWd1aS5Nb3VzZUVudGVyOkNvbm5lY3QoZnVuY3Rpb24oKQoJCWhvdmVyZWRbZ3VpXSA9IHRydWUKCQlob3ZlckNoYW5nZWQoKQoJZW5kKQoJZ3VpLk1vdXNlTGVhdmU6Q29ubmVjdChmdW5jdGlvbigpCgkJaG92ZXJlZFtndWldID0gbmlsCgkJaG92ZXJDaGFuZ2VkKCkKCWVuZCkKZW5kCgpiaW5kSG92ZXIocm93KQpiaW5kSG92ZXIoYmFsbHMpCmZvciBfLCBjIGluIGlwYWlycyhyb3c6R2V0RGVzY2VuZGFudHMoKSkgZG8KCWlmIGM6SXNBKCJHdWlPYmplY3QiKSBhbmQgYyB+PSBiYWxscyB0aGVuCgkJYmluZEhvdmVyKGMpCgllbmQKZW5kCgpsb2NhbCBTVE9QX0tFWSA9ICJYVFdfRkxZX1NUT1AiCgppZiBlbnZbU1RPUF9LRVldIHRoZW4KCXBjYWxsKGVudltTVE9QX0tFWV0pCmVuZAoKbG9jYWwgRkxZID0gewoJZW5hYmxlZCA9IGZhbHNlLAoJdmVsb2NpdHkgPSBWZWN0b3IzLnplcm8sCglrZXlzID0ge30sCgliYXNlU3BlZWQgPSA2MCwKCWFjY2VsVGF1ID0gMC4wNSwKCWJyYWtlVGF1ID0gMC4xMCwKCXBpdGNoUmVzcG9uc2l2ZW5lc3MgPSA0MCwKCWhlYXJ0YmVhdCA9IG5pbCwKCWlucHV0QmVnYW4gPSBuaWwsCglpbnB1dEVuZGVkID0gbmlsLAoJY2hhckNvbm4gPSBuaWwsCglsdiA9IG5pbCwKCWFvID0gbmlsLAoJYXR0ID0gbmlsLAoJcm9vdCA9IG5pbCwKCWh1bWFub2lkID0gbmlsLAoJYW5pbWF0ZSA9IG5pbCwKCWxhc3RDaGFyID0gbmlsLAoJb3JpZ1dhbGsgPSAxNiwKCW9yaWdKdW1wID0gNTAsCglvcmlnSnVtcEhlaWdodCA9IDcuMiwKCW9yaWdBdXRvUm90YXRlID0gdHJ1ZSwKfQoKbG9jYWwgVVBWRUMgPSBWZWN0b3IzLm5ldygwLCAxLCAwKQoKbG9jYWwgZnVuY3Rpb24gZnJlZXplQW5pbWF0aW9ucyhjaGFyLCBodW0pCglpZiBodW0gdGhlbgoJCWZvciBfLCB0cmFjayBpbiBpcGFpcnMoaHVtOkdldFBsYXlpbmdBbmltYXRpb25UcmFja3MoKSkgZG8KCQkJcGNhbGwoZnVuY3Rpb24oKSB0cmFjazpTdG9wKDApIGVuZCkKCQllbmQKCWVuZAoJaWYgY2hhciB0aGVuCgkJbG9jYWwgYW5pbWF0ZSA9IGNoYXI6RmluZEZpcnN0Q2hpbGQoIkFuaW1hdGUiKQoJCWlmIGFuaW1hdGUgYW5kIGFuaW1hdGU6SXNBKCJCYXNlU2NyaXB0IikgYW5kIG5vdCBhbmltYXRlLkRpc2FibGVkIHRoZW4KCQkJYW5pbWF0ZS5EaXNhYmxlZCA9IHRydWUKCQllbmQKCWVuZAplbmQKCmxvY2FsIGZ1bmN0aW9uIGNsZWFyUmlnKCkKCWlmIEZMWS5sdiB0aGVuIEZMWS5sdjpEZXN0cm95KCkgRkxZLmx2ID0gbmlsIGVuZAoJaWYgRkxZLmFvIHRoZW4gRkxZLmFvOkRlc3Ryb3koKSBGTFkuYW8gPSBuaWwgZW5kCglpZiBGTFkuYXR0IHRoZW4gRkxZLmF0dDpEZXN0cm95KCkgRkxZLmF0dCA9IG5pbCBlbmQKCglsb2NhbCBodW0gPSBGTFkuaHVtYW5vaWQKCWlmIGh1bSBhbmQgaHVtLlBhcmVudCB0aGVuCgkJcGNhbGwoZnVuY3Rpb24oKQoJCQlodW0uV2Fsa1NwZWVkID0gRkxZLm9yaWdXYWxrCgkJCWh1bS5BdXRvUm90YXRlID0gRkxZLm9yaWdBdXRvUm90YXRlCgkJCWh1bTpTZXRTdGF0ZUVuYWJsZWQoRW51bS5IdW1hbm9pZFN0YXRlVHlwZS5GcmVlZmFsbCwgdHJ1ZSkKCQkJaHVtOkNoYW5nZVN0YXRlKEVudW0uSHVtYW5vaWRTdGF0ZVR5cGUuUnVubmluZykKCQllbmQpCgkJcGNhbGwoZnVuY3Rpb24oKSBodW0uSnVtcFBvd2VyID0gRkxZLm9yaWdKdW1wIGVuZCkKCQlwY2FsbChmdW5jdGlvbigpIGh1bS5KdW1wSGVpZ2h0ID0gRkxZLm9yaWdKdW1wSGVpZ2h0IGVuZCkKCWVuZAoKCWlmIEZMWS5hbmltYXRlIGFuZCBGTFkuYW5pbWF0ZS5QYXJlbnQgdGhlbgoJCXBjYWxsKGZ1bmN0aW9uKCkgRkxZLmFuaW1hdGUuRGlzYWJsZWQgPSBmYWxzZSBlbmQpCgllbmQKCUZMWS5hbmltYXRlID0gbmlsCgoJRkxZLmh1bWFub2lkID0gbmlsCglGTFkucm9vdCA9IG5pbAoJRkxZLnZlbG9jaXR5ID0gVmVjdG9yMy56ZXJvCmVuZAoKbG9jYWwgZnVuY3Rpb24gc2V0dXBSaWcoY2hhcikKCWNsZWFyUmlnKCkKCWlmIG5vdCBjaGFyIG9yIG5vdCBjaGFyLlBhcmVudCB0aGVuIHJldHVybiBlbmQKCglsb2NhbCByb290ID0gY2hhcjpGaW5kRmlyc3RDaGlsZCgiSHVtYW5vaWRSb290UGFydCIpIG9yIGNoYXI6V2FpdEZvckNoaWxkKCJIdW1hbm9pZFJvb3RQYXJ0IiwgNSkKCWlmIG5vdCByb290IHRoZW4gcmV0dXJuIGVuZAoJbG9jYWwgaHVtID0gY2hhcjpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIkh1bWFub2lkIikKCWlmIG5vdCBodW0gdGhlbiByZXR1cm4gZW5kCgoJRkxZLnJvb3QgPSByb290CglGTFkuaHVtYW5vaWQgPSBodW0KCUZMWS5vcmlnV2FsayA9IGh1bS5XYWxrU3BlZWQKCUZMWS5vcmlnSnVtcCA9IGh1bS5KdW1wUG93ZXIKCUZMWS5vcmlnSnVtcEhlaWdodCA9IGh1bS5KdW1wSGVpZ2h0CglGTFkub3JpZ0F1dG9Sb3RhdGUgPSBodW0uQXV0b1JvdGF0ZQoJRkxZLmFuaW1hdGUgPSBjaGFyOkZpbmRGaXJzdENoaWxkKCJBbmltYXRlIikKCglmcmVlemVBbmltYXRpb25zKGNoYXIsIGh1bSkKCglsb2NhbCBhdHQgPSBJbnN0YW5jZS5uZXcoIkF0dGFjaG1lbnQiKQoJYXR0Lk5hbWUgPSAiWFRXRmx5QXR0IgoJYXR0LlBhcmVudCA9IHJvb3QKCUZMWS5hdHQgPSBhdHQKCglsb2NhbCBsdiA9IEluc3RhbmNlLm5ldygiTGluZWFyVmVsb2NpdHkiKQoJbHYuTmFtZSA9ICJYVFdGbHlMViIKCWx2LkF0dGFjaG1lbnQwID0gYXR0Cglsdi5SZWxhdGl2ZVRvID0gRW51bS5BY3R1YXRvclJlbGF0aXZlVG8uV29ybGQKCWx2Lk1heEZvcmNlID0gMWU3Cglsdi5WZWN0b3JWZWxvY2l0eSA9IFZlY3RvcjMuemVybwoJbHYuUGFyZW50ID0gcm9vdAoJRkxZLmx2ID0gbHYKCglsb2NhbCBhbyA9IEluc3RhbmNlLm5ldygiQWxpZ25PcmllbnRhdGlvbiIpCglhby5OYW1lID0gIlhUV0ZseUFPIgoJYW8uTW9kZSA9IEVudW0uT3JpZW50YXRpb25BbGlnbm1lbnRNb2RlLk9uZUF0dGFjaG1lbnQKCWFvLkF0dGFjaG1lbnQwID0gYXR0Cglhby5NYXhUb3JxdWUgPSAxZTcKCWFvLk1heEFuZ3VsYXJWZWxvY2l0eSA9IG1hdGguaHVnZQoJYW8uUmVzcG9uc2l2ZW5lc3MgPSBGTFkucGl0Y2hSZXNwb25zaXZlbmVzcwoJYW8uUGFyZW50ID0gcm9vdAoJRkxZLmFvID0gYW8KCglwY2FsbChmdW5jdGlvbigpCgkJaHVtLldhbGtTcGVlZCA9IDAKCQlodW0uQXV0b1JvdGF0ZSA9IGZhbHNlCgkJaHVtOlNldFN0YXRlRW5hYmxlZChFbnVtLkh1bWFub2lkU3RhdGVUeXBlLkZyZWVmYWxsLCBmYWxzZSkKCQlodW06Q2hhbmdlU3RhdGUoRW51bS5IdW1hbm9pZFN0YXRlVHlwZS5GbHlpbmcpCgllbmQpCglwY2FsbChmdW5jdGlvbigpIGh1bS5KdW1wUG93ZXIgPSAwIGVuZCkKCXBjYWxsKGZ1bmN0aW9uKCkgaHVtLkp1bXBIZWlnaHQgPSAwIGVuZCkKCglGTFkudmVsb2NpdHkgPSBWZWN0b3IzLnplcm8KZW5kCgpsb2NhbCBmdW5jdGlvbiByZWFkSW5wdXQoKQoJbG9jYWwgY2FtID0gd29ya3NwYWNlLkN1cnJlbnRDYW1lcmEKCWxvY2FsIGNmID0gY2FtIGFuZCBjYW0uQ0ZyYW1lIG9yIENGcmFtZS5uZXcoKQoJbG9jYWwgZGlyID0gVmVjdG9yMy56ZXJvCgoJaWYgRkxZLmtleXNbRW51bS5LZXlDb2RlLlddIHRoZW4gZGlyID0gZGlyICsgY2YuTG9va1ZlY3RvciBlbmQKCWlmIEZMWS5rZXlzW0VudW0uS2V5Q29kZS5TXSB0aGVuIGRpciA9IGRpciAtIGNmLkxvb2tWZWN0b3IgZW5kCglpZiBGTFkua2V5c1tFbnVtLktleUNvZGUuRF0gdGhlbiBkaXIgPSBkaXIgKyBjZi5SaWdodFZlY3RvciBlbmQKCWlmIEZMWS5rZXlzW0VudW0uS2V5Q29kZS5BXSB0aGVuIGRpciA9IGRpciAtIGNmLlJpZ2h0VmVjdG9yIGVuZAoJaWYgRkxZLmtleXNbRW51bS5LZXlDb2RlLlNwYWNlXSB0aGVuIGRpciA9IGRpciArIFVQVkVDIGVuZAoKCWlmIGRpci5NYWduaXR1ZGUgPiAxIHRoZW4KCQlkaXIgPSBkaXIuVW5pdAoJZW5kCgoJcmV0dXJuIGRpciwgY2YKZW5kCgpsb2NhbCBmdW5jdGlvbiBvbkhlYXJ0YmVhdChkdCkKCWxvY2FsIHJvb3QgPSBGTFkucm9vdAoJaWYgbm90IHJvb3Qgb3Igbm90IHJvb3QuUGFyZW50IHRoZW4KCQlpZiBwbGF5ZXIuQ2hhcmFjdGVyIGFuZCBwbGF5ZXIuQ2hhcmFjdGVyIH49IEZMWS5sYXN0Q2hhciB0aGVuCgkJCUZMWS5sYXN0Q2hhciA9IHBsYXllci5DaGFyYWN0ZXIKCQkJc2V0dXBSaWcocGxheWVyLkNoYXJhY3RlcikKCQllbmQKCQlyZXR1cm4KCWVuZAoKCWxvY2FsIGx2ID0gRkxZLmx2Cglsb2NhbCBhbyA9IEZMWS5hbwoJaWYgbm90IGx2IG9yIG5vdCBhbyB0aGVuIHJldHVybiBlbmQKCglkdCA9IG1hdGgubWluKGR0LCAwLjEpCgoJbG9jYWwgY2hhciA9IHJvb3QuUGFyZW50CglpZiBjaGFyIHRoZW4KCQlsb2NhbCBhbmltYXRlID0gY2hhcjpGaW5kRmlyc3RDaGlsZCgiQW5pbWF0ZSIpCgkJaWYgYW5pbWF0ZSBhbmQgYW5pbWF0ZTpJc0EoIkJhc2VTY3JpcHQiKSBhbmQgbm90IGFuaW1hdGUuRGlzYWJsZWQgdGhlbgoJCQlhbmltYXRlLkRpc2FibGVkID0gdHJ1ZQoJCWVuZAoJZW5kCglpZiBGTFkuaHVtYW5vaWQgdGhlbgoJCWxvY2FsIHRyYWNrcyA9IEZMWS5odW1hbm9pZDpHZXRQbGF5aW5nQW5pbWF0aW9uVHJhY2tzKCkKCQlpZiAjdHJhY2tzID4gMCB0aGVuCgkJCWZvciBfLCB0IGluIGlwYWlycyh0cmFja3MpIGRvCgkJCQlwY2FsbChmdW5jdGlvbigpIHQ6U3RvcCgwKSBlbmQpCgkJCWVuZAoJCWVuZAoJZW5kCgoJbG9jYWwgZGlyLCBjZiA9IHJlYWRJbnB1dCgpCglsb2NhbCBoYXNJbnB1dCA9IGRpci5NYWduaXR1ZGUgPiAwLjAwMQoJbG9jYWwgdGFyZ2V0ID0gZGlyICogRkxZLmJhc2VTcGVlZAoKCWxvY2FsIHRhdSA9IGhhc0lucHV0IGFuZCBGTFkuYWNjZWxUYXUgb3IgRkxZLmJyYWtlVGF1Cglsb2NhbCBhbHBoYSA9IDEgLSBtYXRoLmV4cCgtZHQgLyB0YXUpCglGTFkudmVsb2NpdHkgPSBGTFkudmVsb2NpdHk6TGVycCh0YXJnZXQsIGFscGhhKQoKCWlmIG5vdCBoYXNJbnB1dCBhbmQgRkxZLnZlbG9jaXR5Lk1hZ25pdHVkZSA8IDAuMDggdGhlbgoJCUZMWS52ZWxvY2l0eSA9IFZlY3RvcjMuemVybwoJZW5kCgoJbHYuVmVjdG9yVmVsb2NpdHkgPSBGTFkudmVsb2NpdHkKCglhby5DRnJhbWUgPSBDRnJhbWUuZnJvbU1hdHJpeChWZWN0b3IzLnplcm8sIGNmLlJpZ2h0VmVjdG9yLCBjZi5VcFZlY3RvcikKZW5kCgpsb2NhbCBmdW5jdGlvbiBzZXRGbHkob24pCglpZiBvbiA9PSBGTFkuZW5hYmxlZCB0aGVuIHJldHVybiBlbmQKCUZMWS5lbmFibGVkID0gb24KCglpZiBvbiB0aGVuCgkJRkxZLmtleXMgPSB7fQoJCUZMWS52ZWxvY2l0eSA9IFZlY3RvcjMuemVybwoJCUZMWS5sYXN0Q2hhciA9IHBsYXllci5DaGFyYWN0ZXIKCQlzZXR1cFJpZyhwbGF5ZXIuQ2hhcmFjdGVyKQoKCQlGTFkuY2hhckNvbm4gPSBwbGF5ZXIuQ2hhcmFjdGVyQWRkZWQ6Q29ubmVjdChmdW5jdGlvbihjKQoJCQlGTFkubGFzdENoYXIgPSBjCgkJCXRhc2sud2FpdCgwLjIpCgkJCWlmIEZMWS5lbmFibGVkIHRoZW4KCQkJCXNldHVwUmlnKGMpCgkJCWVuZAoJCWVuZCkKCgkJRkxZLmlucHV0QmVnYW4gPSBVc2VySW5wdXRTZXJ2aWNlLklucHV0QmVnYW46Q29ubmVjdChmdW5jdGlvbihpbnB1dCwgZ3ApCgkJCWlmIGdwIHRoZW4gcmV0dXJuIGVuZAoJCQlpZiBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5LZXlib2FyZCB0aGVuCgkJCQlGTFkua2V5c1tpbnB1dC5LZXlDb2RlXSA9IHRydWUKCQkJZW5kCgkJZW5kKQoJCUZMWS5pbnB1dEVuZGVkID0gVXNlcklucHV0U2VydmljZS5JbnB1dEVuZGVkOkNvbm5lY3QoZnVuY3Rpb24oaW5wdXQpCgkJCWlmIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLktleWJvYXJkIHRoZW4KCQkJCUZMWS5rZXlzW2lucHV0LktleUNvZGVdID0gZmFsc2UKCQkJZW5kCgkJZW5kKQoKCQlGTFkuaGVhcnRiZWF0ID0gUnVuU2VydmljZS5IZWFydGJlYXQ6Q29ubmVjdChvbkhlYXJ0YmVhdCkKCWVsc2UKCQlpZiBGTFkuaGVhcnRiZWF0IHRoZW4gRkxZLmhlYXJ0YmVhdDpEaXNjb25uZWN0KCkgRkxZLmhlYXJ0YmVhdCA9IG5pbCBlbmQKCQlpZiBGTFkuaW5wdXRCZWdhbiB0aGVuIEZMWS5pbnB1dEJlZ2FuOkRpc2Nvbm5lY3QoKSBGTFkuaW5wdXRCZWdhbiA9IG5pbCBlbmQKCQlpZiBGTFkuaW5wdXRFbmRlZCB0aGVuIEZMWS5pbnB1dEVuZGVkOkRpc2Nvbm5lY3QoKSBGTFkuaW5wdXRFbmRlZCA9IG5pbCBlbmQKCQlpZiBGTFkuY2hhckNvbm4gdGhlbiBGTFkuY2hhckNvbm46RGlzY29ubmVjdCgpIEZMWS5jaGFyQ29ubiA9IG5pbCBlbmQKCgkJRkxZLmtleXMgPSB7fQoJCUZMWS52ZWxvY2l0eSA9IFZlY3RvcjMuemVybwoJCWNsZWFyUmlnKCkKCWVuZAplbmQKCmVudltTVE9QX0tFWV0gPSBmdW5jdGlvbigpCglzZXRGbHkoZmFsc2UpCmVuZAoKbG9jYWwgbGFzdCA9IDAKCmxvY2FsIGZ1bmN0aW9uIGZsaXAoKQoJaWYgdGljaygpIC0gbGFzdCA8IDAuMSB0aGVuIHJldHVybiBlbmQKCWxhc3QgPSB0aWNrKCkKCglzZXRGbHkobm90IEZMWS5lbmFibGVkKQoKCVR3ZWVuU2VydmljZTpDcmVhdGUoYW5pbSwgVHdlZW5JbmZvLm5ldygwLjI1LCBFbnVtLkVhc2luZ1N0eWxlLlF1YWQsIEVudW0uRWFzaW5nRGlyZWN0aW9uLk91dCksIHsKCQlWYWx1ZSA9IEZMWS5lbmFibGVkIGFuZCAxIG9yIDAKCX0pOlBsYXkoKQplbmQKCmxvY2FsIGZ1bmN0aW9uIHByZXNzKGlucHV0KQoJaWYgaW5wdXQuVXNlcklucHV0VHlwZSA9PSBFbnVtLlVzZXJJbnB1dFR5cGUuTW91c2VCdXR0b24xCgkJb3IgaW5wdXQuVXNlcklucHV0VHlwZSA9PSBFbnVtLlVzZXJJbnB1dFR5cGUuVG91Y2ggdGhlbgoJCWZsaXAoKQoJZW5kCmVuZAoKYmFsbHMuSW5wdXRCZWdhbjpDb25uZWN0KHByZXNzKQpyb3cuSW5wdXRCZWdhbjpDb25uZWN0KHByZXNzKQplbmQsIGZ1bmN0aW9uKGUpCiAgICBsb2NhbCB0YiA9ICIiCiAgICBwY2FsbChmdW5jdGlvbigpIHRiID0gZGVidWcudHJhY2ViYWNrKCIiLCAyKSBlbmQpCiAgICByZXR1cm4gdG9zdHJpbmcoZSkgLi4gIlxuIiAuLiB0YgplbmQpCmlmIG5vdCBfX3h0d19vayB0aGVuCiAgICBsb2NhbCBlcnJTdHIgPSB0b3N0cmluZyhfX3h0d19lcnIpCiAgICBpZiBfX3h0d19zZWxmIGFuZCBfX3h0d19zZWxmLlNldEF0dHJpYnV0ZSB0aGVuCiAgICAgICAgcGNhbGwoZnVuY3Rpb24oKSBfX3h0d19zZWxmOlNldEF0dHJpYnV0ZSgieHR3X2Vycm9yIiwgZXJyU3RyKSBlbmQpCiAgICBlbmQKICAgIHBjYWxsKGZ1bmN0aW9uKCkgd2FybigiW3h0d10gRkFJTDogIiAuLiBfX3h0d19uYW1lIC4uICIgKCIgLi4gX194dHdfY2xzIC4uICIpOiAiIC4uIGVyclN0cikgZW5kKQplbmQ=")
        local prelude = "local script = ...\n"
        local fn, cerr = loadstring(prelude .. src, "@xtw-m:" .. tostring(inst.Name))
        if not fn then
            manualFail = manualFail + 1
            runErrors[#runErrors + 1] = "Function (load): " .. tostring(cerr)
        else
            local thread = coroutine.create(fn)
            local okRun, runErr = coroutine.resume(thread, inst)
            if okRun then ranManual = ranManual + 1
            else
                manualFail = manualFail + 1
                runErrors[#runErrors + 1] = "Function (resume): " .. tostring(runErr)
            end
        end
    end
end
do
    local inst = n[44]
    local hasRan = false
    pcall(function() hasRan = inst:GetAttribute("xtw_ran") and true or false end)
    if not hasRan then
        local src = __xtw_b64decode("LS0gW3h0d10gd3JhcHBlciB2MjMKbG9jYWwgX194dHdfbmFtZSwgX194dHdfY2xzID0gIkZ1bmN0aW9uIiwgIkxvY2FsU2NyaXB0Igpsb2NhbCBfX3h0d19zZWxmID0gbmlsCnBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZiA9IHNjcmlwdCBlbmQpCmlmIF9feHR3X3NlbGYgYW5kIF9feHR3X3NlbGYuU2V0QXR0cmlidXRlIHRoZW4KICAgIHBjYWxsKGZ1bmN0aW9uKCkgX194dHdfc2VsZjpTZXRBdHRyaWJ1dGUoInh0d19yYW4iLCB0cnVlKSBlbmQpCmVuZApsb2NhbCBfX3h0d19vaywgX194dHdfZXJyID0geHBjYWxsKGZ1bmN0aW9uKCkKbG9jYWwgUGxheWVycyA9IGdhbWU6R2V0U2VydmljZSgiUGxheWVycyIpCmxvY2FsIFJ1blNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlJ1blNlcnZpY2UiKQpsb2NhbCBUd2VlblNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlR3ZWVuU2VydmljZSIpCmxvY2FsIERlYnJpcyA9IGdhbWU6R2V0U2VydmljZSgiRGVicmlzIikKbG9jYWwgVGV4dFNlcnZpY2UgPSBnYW1lOkdldFNlcnZpY2UoIlRleHRTZXJ2aWNlIikKbG9jYWwgVXNlcklucHV0U2VydmljZSA9IGdhbWU6R2V0U2VydmljZSgiVXNlcklucHV0U2VydmljZSIpCmxvY2FsIFBoeXNpY3NTZXJ2aWNlID0gZ2FtZTpHZXRTZXJ2aWNlKCJQaHlzaWNzU2VydmljZSIpCgpsb2NhbCBwbGF5ZXIgPSBQbGF5ZXJzLkxvY2FsUGxheWVyCgpsb2NhbCBHID0gKGdldGdlbnYgYW5kIGdldGdlbnYoKSkgb3IgX0cKbG9jYWwgU1RPUF9LRVkgPSAiWFRXX0NVUlNPUl9US19TVE9QIgppZiBHW1NUT1BfS0VZXSB0aGVuCglwY2FsbChHW1NUT1BfS0VZXSkKZW5kCgpsb2NhbCBST1dfTkFNRSA9IG5pbAoKbG9jYWwgaGFzR1VJID0gZmFsc2UKbG9jYWwgcm93LCBiYWxscywgZGVzY3JpcHRpb24KCmxvY2FsIHRhcmdldCA9IG5pbAppZiBHIGFuZCBHLlhUV19US19UQVJHRVQgdGhlbgoJbG9jYWwgdCA9IEcuWFRXX1RLX1RBUkdFVAoJaWYgdHlwZW9mKHQpID09ICJJbnN0YW5jZSIgYW5kIHQ6SXNBKCJHdWlPYmplY3QiKSB0aGVuCgkJdGFyZ2V0ID0gdAoJZW5kCmVuZAoKaWYgbm90IHRhcmdldCBhbmQgUk9XX05BTUUgdGhlbgoJbG9jYWwgcGcgPSBwbGF5ZXI6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJQbGF5ZXJHdWkiKQoJaWYgcGcgdGhlbgoJCWZvciBfLCBkIGluIGlwYWlycyhwZzpHZXREZXNjZW5kYW50cygpKSBkbwoJCQlpZiBkOklzQSgiR3VpT2JqZWN0IikgYW5kIGQuTmFtZSA9PSBST1dfTkFNRSBhbmQgZDpGaW5kRmlyc3RDaGlsZCgiQmFsbCIsIHRydWUpIHRoZW4KCQkJCXRhcmdldCA9IGQKCQkJCWJyZWFrCgkJCWVuZAoJCWVuZAoJZW5kCmVuZAoKaWYgbm90IHRhcmdldCB0aGVuCglwY2FsbChmdW5jdGlvbigpCgkJbG9jYWwgcCA9IHNjcmlwdCBhbmQgc2NyaXB0LlBhcmVudAoJCWlmIHAgYW5kIHA6SXNBKCJHdWlPYmplY3QiKSB0aGVuCgkJCXRhcmdldCA9IHAKCQllbmQKCWVuZCkKZW5kCgppZiB0YXJnZXQgdGhlbgoJcGNhbGwoZnVuY3Rpb24oKQoJCXJvdyA9IHRhcmdldAoJCWJhbGxzID0gcm93OkZpbmRGaXJzdENoaWxkKCJCYWxsIiwgdHJ1ZSkgb3Igcm93OldhaXRGb3JDaGlsZCgiQmFsbCIsIDMpCgkJZGVzY3JpcHRpb24gPSByb3c6RmluZEZpcnN0Q2hpbGQoIkRlc2NyaXB0aW9uIikKCQlpZiBiYWxscyBhbmQgZGVzY3JpcHRpb24gdGhlbgoJCQloYXNHVUkgPSB0cnVlCgkJZW5kCgllbmQpCmVuZAoKaWYgaGFzR1VJIHRoZW4KCXJvdy5BY3RpdmUgPSB0cnVlCgliYWxscy5BY3RpdmUgPSB0cnVlCgliYWxscy5BdXRvQnV0dG9uQ29sb3IgPSBmYWxzZQoKCWxvY2FsIGxlZnRvdmVyID0gcm93OkZpbmRGaXJzdENoaWxkKCJEZXNjUGFuZWwiLCB0cnVlKQoJaWYgbGVmdG92ZXIgdGhlbgoJCWxlZnRvdmVyOkRlc3Ryb3koKQoJZW5kCgoJbG9jYWwgZGFya3llbGxvdyA9IENvbG9yMy5mcm9tUkdCKDQwLCA0MCwgNDApCglsb2NhbCB5ZWxsb3cgPSBDb2xvcjMuZnJvbVJHQigwLCAxMTAsIDApCgoJbG9jYWwgZ3JhZGllbnQgPSByb3c6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJVSUdyYWRpZW50Iikgb3IgSW5zdGFuY2UubmV3KCJVSUdyYWRpZW50IikKCWdyYWRpZW50LkNvbG9yID0gQ29sb3JTZXF1ZW5jZS5uZXcoewoJCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMCwgeWVsbG93KSwKCQlDb2xvclNlcXVlbmNlS2V5cG9pbnQubmV3KDAuNDk5LCB5ZWxsb3cpLAoJCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMC41LCBkYXJreWVsbG93KSwKCQlDb2xvclNlcXVlbmNlS2V5cG9pbnQubmV3KDEsIGRhcmt5ZWxsb3cpLAoJfSkKCWdyYWRpZW50Lk9mZnNldCA9IFZlY3RvcjIubmV3KC0wLjUsIDApCglncmFkaWVudC5QYXJlbnQgPSByb3cKCglsb2NhbCBvZmZQb3MgPSBiYWxscy5Qb3NpdGlvbgoJbG9jYWwgb25Qb3MgPSBVRGltMi5uZXcoCgkJMSAtIG9mZlBvcy5YLlNjYWxlIC0gYmFsbHMuU2l6ZS5YLlNjYWxlLAoJCW9mZlBvcy5YLk9mZnNldCAtIGJhbGxzLlNpemUuWC5PZmZzZXQsCgkJb2ZmUG9zLlkuU2NhbGUsCgkJb2ZmUG9zLlkuT2Zmc2V0CgkpCgoJbG9jYWwgb2ZmQyA9IDAKCWxvY2FsIG9uQyA9IDAKCglsb2NhbCBmdW5jdGlvbiBtZWFzdXJlKCkKCQlsb2NhbCB3ID0gcm93LkFic29sdXRlU2l6ZS5YCgkJaWYgdyA8PSAwIHRoZW4gcmV0dXJuIGVuZAoJCWxvY2FsIGhhbGYgPSAoMC41IC0gYmFsbHMuQW5jaG9yUG9pbnQuWCkgKiAoYmFsbHMuU2l6ZS5YLlNjYWxlICsgYmFsbHMuU2l6ZS5YLk9mZnNldCAvIHcpCgkJb2ZmQyA9IG9mZlBvcy5YLlNjYWxlICsgb2ZmUG9zLlguT2Zmc2V0IC8gdyArIGhhbGYKCQlvbkMgPSBvblBvcy5YLlNjYWxlICsgb25Qb3MuWC5PZmZzZXQgLyB3ICsgaGFsZgoJZW5kCgoJbG9jYWwgYW5pbSA9IEluc3RhbmNlLm5ldygiTnVtYmVyVmFsdWUiKQoJYW5pbS5WYWx1ZSA9IDAKCglsb2NhbCBmdW5jdGlvbiBhcHBseSh1KQoJCWxvY2FsIHN4ID0gb2ZmUG9zLlguU2NhbGUgKyAob25Qb3MuWC5TY2FsZSAtIG9mZlBvcy5YLlNjYWxlKSAqIHUKCQlsb2NhbCBveCA9IG9mZlBvcy5YLk9mZnNldCArIChvblBvcy5YLk9mZnNldCAtIG9mZlBvcy5YLk9mZnNldCkgKiB1CgkJYmFsbHMuUG9zaXRpb24gPSBVRGltMi5uZXcoc3gsIG94LCBvZmZQb3MuWS5TY2FsZSwgb2ZmUG9zLlkuT2Zmc2V0KQoJCWdyYWRpZW50Lk9mZnNldCA9IFZlY3RvcjIubmV3KChvZmZDICsgKG9uQyAtIG9mZkMpICogdSkgLSAwLjUsIDApCgllbmQKCglhbmltLkNoYW5nZWQ6Q29ubmVjdChhcHBseSkKCW1lYXN1cmUoKQoJYXBwbHkoMCkKCglyb3c6R2V0UHJvcGVydHlDaGFuZ2VkU2lnbmFsKCJBYnNvbHV0ZVNpemUiKTpDb25uZWN0KGZ1bmN0aW9uKCkKCQltZWFzdXJlKCkKCQlhcHBseShhbmltLlZhbHVlKQoJZW5kKQoKCWxvY2FsIGRlc2NUZXh0ID0gIkRyYWc6IGxlZnQgY2xpY2suIFJvdGF0ZTogUi9ULiIKCglpZiBkZXNjcmlwdGlvbi5UZXh0U2NhbGVkIHRoZW4KCQlsb2NhbCByZW5kZXJlZCA9IGRlc2NyaXB0aW9uLlRleHRCb3VuZHMuWQoJCWRlc2NyaXB0aW9uLlRleHRTY2FsZWQgPSBmYWxzZQoJCWRlc2NyaXB0aW9uLlRleHRTaXplID0gbWF0aC5tYXgoMSwgbWF0aC5mbG9vcihyZW5kZXJlZCA+IDAgYW5kIHJlbmRlcmVkIG9yIHJvdy5BYnNvbHV0ZVNpemUuWSAqIDAuNykpCgllbmQKCglmb3IgXywgYyBpbiBpcGFpcnMoZGVzY3JpcHRpb246R2V0Q2hpbGRyZW4oKSkgZG8KCQlpZiBjOklzQSgiVUlTdHJva2UiKSBvciBjLk5hbWUgPT0gIlRvcExpbmUiIG9yIGMuTmFtZSA9PSAiQm90dG9tTGluZSIgb3IgYy5OYW1lID09ICJSaWdodExpbmUiCgkJCW9yIGMuTmFtZSA9PSAiU2VhbVBhdGNoIiBvciBjLk5hbWUgPT0gIlRvcEJyaWRnZSIgb3IgYy5OYW1lID09ICJCb3R0b21CcmlkZ2UiCgkJCW9yIGMuTmFtZSA9PSAiQ2FwQ2xpcCIgb3IgYy5OYW1lID09ICJDYXAiIG9yIGMuTmFtZSA9PSAiRGVzY0Nvcm5lciIKCQkJb3IgYy5OYW1lID09ICJMZWZ0R3VhcmQiIHRoZW4KCQkJYzpEZXN0cm95KCkKCQllbmQKCWVuZAoKCWxvY2FsIGhvc3QgPSByb3cuUGFyZW50Cglsb2NhbCBzdHJva2VDb2xvciA9IG5pbAoJbG9jYWwgc3Ryb2tlVHJhbnNwYXJlbmN5ID0gMAoJbG9jYWwgc3Ryb2tlRXhhY3QgPSAxCglsb2NhbCBzdHJva2VNb2RlID0gRW51bS5BcHBseVN0cm9rZU1vZGUuQm9yZGVyCglsb2NhbCBjb3JuZXJSYWRpdXMgPSAwCgoJaWYgaG9zdCBhbmQgaG9zdDpJc0EoIkd1aU9iamVjdCIpIHRoZW4KCQlkZXNjcmlwdGlvbi5CYWNrZ3JvdW5kQ29sb3IzID0gaG9zdC5CYWNrZ3JvdW5kQ29sb3IzCgkJZGVzY3JpcHRpb24uQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IGhvc3QuQmFja2dyb3VuZFRyYW5zcGFyZW5jeQoJCWxvY2FsIGhzID0gaG9zdDpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlVJU3Ryb2tlIikKCQlpZiBocyB0aGVuCgkJCXN0cm9rZUNvbG9yID0gaHMuQ29sb3IKCQkJc3Ryb2tlVHJhbnNwYXJlbmN5ID0gaHMuVHJhbnNwYXJlbmN5CgkJCXN0cm9rZUV4YWN0ID0gaHMuVGhpY2tuZXNzCgkJCXN0cm9rZU1vZGUgPSBocy5BcHBseVN0cm9rZU1vZGUKCQkJaWYgc3Ryb2tlRXhhY3QgPCAxIHRoZW4gc3Ryb2tlRXhhY3QgPSAxIGVuZAoJCWVuZAoJCWxvY2FsIGhjID0gaG9zdDpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIlVJQ29ybmVyIikKCQlpZiBoYyB0aGVuCgkJCWxvY2FsIHJoID0gcm93LkFic29sdXRlU2l6ZS5ZCgkJCWlmIHJoIDwgMCB0aGVuIHJoID0gMCBlbmQKCQkJY29ybmVyUmFkaXVzID0gbWF0aC5mbG9vcihoYy5Db3JuZXJSYWRpdXMuT2Zmc2V0ICsgaGMuQ29ybmVyUmFkaXVzLlNjYWxlICogcmggKyAwLjUpCgkJCWlmIGNvcm5lclJhZGl1cyA8IDAgdGhlbiBjb3JuZXJSYWRpdXMgPSAwIGVuZAoJCQlsb2NhbCBtYXhSID0gbWF0aC5mbG9vcihyaCAvIDIpCgkJCWlmIG1heFIgPiA2IHRoZW4gbWF4UiA9IDYgZW5kCgkJCWlmIGNvcm5lclJhZGl1cyA+IG1heFIgdGhlbiBjb3JuZXJSYWRpdXMgPSBtYXhSIGVuZAoJCWVuZAoJZWxzZQoJCWRlc2NyaXB0aW9uLkJhY2tncm91bmRDb2xvcjMgPSBDb2xvcjMuZnJvbVJHQigzNSwgMzUsIDM1KQoJCWRlc2NyaXB0aW9uLkJhY2tncm91bmRUcmFuc3BhcmVuY3kgPSAwLjEKCWVuZAoKCWxvY2FsIHBhZCA9IGRlc2NyaXB0aW9uOkZpbmRGaXJzdENoaWxkT2ZDbGFzcygiVUlQYWRkaW5nIikKCWlmIG5vdCBwYWQgdGhlbgoJCXBhZCA9IEluc3RhbmNlLm5ldygiVUlQYWRkaW5nIikKCQlwYWQuUGFyZW50ID0gZGVzY3JpcHRpb24KCWVuZAoJcGFkLlBhZGRpbmdMZWZ0ID0gVURpbS5uZXcoMCwgOCkKCXBhZC5QYWRkaW5nUmlnaHQgPSBVRGltLm5ldygwLCAyKQoKCWxvY2FsIHBhZExlZnQgPSA4Cglsb2NhbCBwYWRSaWdodCA9IDIKCWRvCgkJbG9jYWwgcCA9IGRlc2NyaXB0aW9uOkZpbmRGaXJzdENoaWxkT2ZDbGFzcygiVUlQYWRkaW5nIikKCQlpZiBwIHRoZW4KCQkJcGFkTGVmdCA9IHAuUGFkZGluZ0xlZnQuT2Zmc2V0CgkJCXBhZFJpZ2h0ID0gcC5QYWRkaW5nUmlnaHQuT2Zmc2V0CgkJZW5kCgllbmQKCglkZXNjcmlwdGlvbi5UZXh0V3JhcHBlZCA9IGZhbHNlCglkZXNjcmlwdGlvbi5UZXh0WEFsaWdubWVudCA9IEVudW0uVGV4dFhBbGlnbm1lbnQuTGVmdAoJZGVzY3JpcHRpb24uQW5jaG9yUG9pbnQgPSBWZWN0b3IyLm5ldygwLCAwKQoJZGVzY3JpcHRpb24uQXV0b21hdGljU2l6ZSA9IEVudW0uQXV0b21hdGljU2l6ZS5Ob25lCglkZXNjcmlwdGlvbi5Qb3NpdGlvbiA9IFVEaW0yLm5ldygxLCAwLCAwLCAwKQoJZGVzY3JpcHRpb24uU2l6ZSA9IFVEaW0yLm5ldygwLCAwLCAxLCAwKQoJZGVzY3JpcHRpb24uWkluZGV4ID0gNQoJZGVzY3JpcHRpb24uVGV4dCA9ICIiCglkZXNjcmlwdGlvbi5WaXNpYmxlID0gZmFsc2UKCWRlc2NyaXB0aW9uLkNsaXBzRGVzY2VuZGFudHMgPSBmYWxzZQoKCWlmIGNvcm5lclJhZGl1cyA+IDAgdGhlbgoJCWxvY2FsIGRlc2NDb3JuZXIgPSBJbnN0YW5jZS5uZXcoIlVJQ29ybmVyIikKCQlkZXNjQ29ybmVyLk5hbWUgPSAiRGVzY0Nvcm5lciIKCQlkZXNjQ29ybmVyLkNvcm5lclJhZGl1cyA9IFVEaW0ubmV3KDAsIGNvcm5lclJhZGl1cykKCQlkZXNjQ29ybmVyLlBhcmVudCA9IGRlc2NyaXB0aW9uCgllbmQKCglpZiBzdHJva2VDb2xvciB0aGVuCgkJbG9jYWwgZ3VhcmRYID0gLShtYXRoLmNlaWwoc3Ryb2tlRXhhY3QpICsgMSkKCQlsb2NhbCBjYXBMZWZ0ID0gLShjb3JuZXJSYWRpdXMgKyBzdHJva2VFeGFjdCArIDIpCgkJbG9jYWwgbVkgPSBzdHJva2VFeGFjdCArIDEKCgkJbG9jYWwgbGVmdEd1YXJkID0gSW5zdGFuY2UubmV3KCJGcmFtZSIpCgkJbGVmdEd1YXJkLk5hbWUgPSAiTGVmdEd1YXJkIgoJCWxlZnRHdWFyZC5CYWNrZ3JvdW5kVHJhbnNwYXJlbmN5ID0gMQoJCWxlZnRHdWFyZC5Cb3JkZXJTaXplUGl4ZWwgPSAwCgkJbGVmdEd1YXJkLkNsaXBzRGVzY2VuZGFudHMgPSB0cnVlCgkJbGVmdEd1YXJkLlpJbmRleCA9IDYKCQlsZWZ0R3VhcmQuUG9zaXRpb24gPSBVRGltMi5uZXcoMCwgZ3VhcmRYLCAwLCAtbVkpCgkJbGVmdEd1YXJkLlNpemUgPSBVRGltMi5uZXcoMSwgc3Ryb2tlRXhhY3QgKyAxIC0gZ3VhcmRYLCAxLCAyICogbVkpCgkJbGVmdEd1YXJkLlBhcmVudCA9IGRlc2NyaXB0aW9uCgoJCWxvY2FsIGNhcCA9IEluc3RhbmNlLm5ldygiRnJhbWUiKQoJCWNhcC5OYW1lID0gIkNhcCIKCQljYXAuQmFja2dyb3VuZFRyYW5zcGFyZW5jeSA9IDEKCQljYXAuQm9yZGVyU2l6ZVBpeGVsID0gMAoJCWNhcC5aSW5kZXggPSA2CgkJY2FwLlBvc2l0aW9uID0gVURpbTIubmV3KDAsIGNhcExlZnQgLSBndWFyZFgsIDAsIG1ZKQoJCWNhcC5TaXplID0gVURpbTIubmV3KDEsIGNvcm5lclJhZGl1cyArIGd1YXJkWCArIDEsIDEsIC0yICogbVkpCgkJY2FwLlBhcmVudCA9IGxlZnRHdWFyZAoKCQlsb2NhbCBjYXBDb3JuZXIgPSBJbnN0YW5jZS5uZXcoIlVJQ29ybmVyIikKCQljYXBDb3JuZXIuQ29ybmVyUmFkaXVzID0gVURpbS5uZXcoMCwgY29ybmVyUmFkaXVzKQoJCWNhcENvcm5lci5QYXJlbnQgPSBjYXAKCgkJbG9jYWwgY2FwU3Ryb2tlID0gSW5zdGFuY2UubmV3KCJVSVN0cm9rZSIpCgkJY2FwU3Ryb2tlLkNvbG9yID0gc3Ryb2tlQ29sb3IKCQljYXBTdHJva2UuVGhpY2tuZXNzID0gc3Ryb2tlRXhhY3QKCQljYXBTdHJva2UuVHJhbnNwYXJlbmN5ID0gc3Ryb2tlVHJhbnNwYXJlbmN5CgkJY2FwU3Ryb2tlLkFwcGx5U3Ryb2tlTW9kZSA9IHN0cm9rZU1vZGUKCQljYXBTdHJva2UuTGluZUpvaW5Nb2RlID0gRW51bS5MaW5lSm9pbk1vZGUuUm91bmQKCQljYXBTdHJva2UuUGFyZW50ID0gY2FwCgllbmQKCglsb2NhbCBmdW5jdGlvbiBzZXREZXNjVGV4dCh0ZXh0KQoJCWRlc2NyaXB0aW9uLlRleHQgPSB0ZXh0CgkJbG9jYWwgdyA9IFRleHRTZXJ2aWNlOkdldFRleHRTaXplKHRleHQsIGRlc2NyaXB0aW9uLlRleHRTaXplLCBkZXNjcmlwdGlvbi5Gb250LCBWZWN0b3IyLm5ldygxMDAwMCwgMTAwMDApKS5YCgkJdyA9IHcgKyBwYWRMZWZ0ICsgcGFkUmlnaHQgKyA0CgkJZGVzY3JpcHRpb24uU2l6ZSA9IFVEaW0yLm5ldygwLCB3LCAxLCAwKQoJZW5kCgoJbG9jYWwgZGVzY0dlbiA9IDAKCWxvY2FsIGRlc2NNb2RlID0gImlkbGUiCglsb2NhbCBkZXNjVHdlZW4gPSBuaWwKCWxvY2FsIGRlc2NSZXRyYWN0aW5nID0gZmFsc2UKCglsb2NhbCBmdW5jdGlvbiBzdG9wRGVzY1R3ZWVuKCkKCQlpZiBkZXNjVHdlZW4gdGhlbgoJCQlkZXNjVHdlZW46Q2FuY2VsKCkKCQkJZGVzY1R3ZWVuID0gbmlsCgkJZW5kCgkJZGVzY1JldHJhY3RpbmcgPSBmYWxzZQoJCWRlc2NyaXB0aW9uLkNsaXBzRGVzY2VuZGFudHMgPSBmYWxzZQoJZW5kCgoJUnVuU2VydmljZS5SZW5kZXJTdGVwcGVkOkNvbm5lY3QoZnVuY3Rpb24oKQoJCWlmIGRlc2NyaXB0aW9uLlZpc2libGUgYW5kIGRlc2NyaXB0aW9uLlRleHQgfj0gIiIgYW5kIG5vdCBkZXNjUmV0cmFjdGluZyB0aGVuCgkJCWxvY2FsIHcgPSBkZXNjcmlwdGlvbi5UZXh0Qm91bmRzLlggKyBwYWRMZWZ0ICsgcGFkUmlnaHQgKyAyCgkJCWlmIG1hdGguYWJzKGRlc2NyaXB0aW9uLlNpemUuWC5PZmZzZXQgLSB3KSA+IDEgdGhlbgoJCQkJZGVzY3JpcHRpb24uU2l6ZSA9IFVEaW0yLm5ldygwLCB3LCAxLCAwKQoJCQllbmQKCQllbmQKCWVuZCkKCglsb2NhbCBzb3VuZElkcyA9IHsKCQlbMl0gPSAxMTMxMDg4MzAyNDAzNTMsCgkJWzNdID0gNzE5MDI0ODE3NTk2NjAsCgkJWzRdID0gNzI4MjY1NjUwMTg3NjUsCgkJWzVdID0gMTAyODU1NTM1NTQzOTMwLAoJfQoKCWxvY2FsIHR5cGVTb3VuZHMgPSB7fQoJZm9yIGkgPSAyLCA0IGRvCgkJbG9jYWwgcyA9IHJvdzpGaW5kRmlyc3RDaGlsZCh0b3N0cmluZyhpKSwgdHJ1ZSkKCQlpZiBzIGFuZCBzOklzQSgiU291bmQiKSB0aGVuCgkJCXR5cGVTb3VuZHNbI3R5cGVTb3VuZHMgKyAxXSA9IHMKCQllbHNlCgkJCXMgPSBJbnN0YW5jZS5uZXcoIlNvdW5kIikKCQkJcy5OYW1lID0gdG9zdHJpbmcoaSkKCQkJcy5Tb3VuZElkID0gInJieGFzc2V0aWQ6Ly8iIC4uIHNvdW5kSWRzW2ldCgkJCXMuVm9sdW1lID0gMQoJCQlzLlBhcmVudCA9IGRlc2NyaXB0aW9uCgkJCXR5cGVTb3VuZHNbI3R5cGVTb3VuZHMgKyAxXSA9IHMKCQllbmQKCWVuZAoKCWxvY2FsIGRlbGV0ZVNvdW5kID0gcm93OkZpbmRGaXJzdENoaWxkKCI1IiwgdHJ1ZSkKCWlmIG5vdCAoZGVsZXRlU291bmQgYW5kIGRlbGV0ZVNvdW5kOklzQSgiU291bmQiKSkgdGhlbgoJCWRlbGV0ZVNvdW5kID0gSW5zdGFuY2UubmV3KCJTb3VuZCIpCgkJZGVsZXRlU291bmQuTmFtZSA9ICI1IgoJCWRlbGV0ZVNvdW5kLlNvdW5kSWQgPSAicmJ4YXNzZXRpZDovLyIgLi4gc291bmRJZHNbNV0KCQlkZWxldGVTb3VuZC5Wb2x1bWUgPSAxCgkJZGVsZXRlU291bmQuUGFyZW50ID0gZGVzY3JpcHRpb24KCWVuZAoKCWxvY2FsIGZ1bmN0aW9uIHBsYXlIaXQoc291bmQpCgkJaWYgbm90IHNvdW5kIHRoZW4gcmV0dXJuIGVuZAoJCWxvY2FsIHMgPSBzb3VuZDpDbG9uZSgpCgkJcy5QYXJlbnQgPSBkZXNjcmlwdGlvbgoJCXM6UGxheSgpCgkJRGVicmlzOkFkZEl0ZW0ocywgNSkKCWVuZAoKCWxvY2FsIGZ1bmN0aW9uIHN0YXJ0VHlwaW5nKCkKCQlzdG9wRGVzY1R3ZWVuKCkKCQlkZXNjR2VuICs9IDEKCQlkZXNjTW9kZSA9ICJ0eXBpbmciCgkJbG9jYWwgZ2VuID0gZGVzY0dlbgoJCXRhc2suc3Bhd24oZnVuY3Rpb24oKQoJCQlkZXNjcmlwdGlvbi5WaXNpYmxlID0gdHJ1ZQoJCQlsb2NhbCBzaG93biA9ICNkZXNjcmlwdGlvbi5UZXh0CgkJCXdoaWxlIHNob3duIDwgI2Rlc2NUZXh0IGFuZCBnZW4gPT0gZGVzY0dlbiBkbwoJCQkJc2hvd24gKz0gMQoJCQkJc2V0RGVzY1RleHQoc3RyaW5nLnN1YihkZXNjVGV4dCwgMSwgc2hvd24pKQoJCQkJaWYgc2hvd24gJSAyID09IDAgYW5kICN0eXBlU291bmRzID4gMCB0aGVuCgkJCQkJcGxheUhpdCh0eXBlU291bmRzW21hdGgucmFuZG9tKDEsICN0eXBlU291bmRzKV0pCgkJCQllbmQKCQkJCXRhc2sud2FpdCgwLjA0KQoJCQllbmQKCQkJaWYgZ2VuID09IGRlc2NHZW4gdGhlbgoJCQkJZGVzY01vZGUgPSAiaWRsZSIKCQkJZW5kCgkJZW5kKQoJZW5kCgoJbG9jYWwgZnVuY3Rpb24gc3RhcnREZWxldGluZygpCgkJc3RvcERlc2NUd2VlbigpCgkJZGVzY0dlbiArPSAxCgkJZGVzY01vZGUgPSAiZGVsZXRpbmciCgkJbG9jYWwgZ2VuID0gZGVzY0dlbgoJCXRhc2suc3Bhd24oZnVuY3Rpb24oKQoJCQlsb2NhbCBzaG93biA9ICNkZXNjcmlwdGlvbi5UZXh0CgkJCWxvY2FsIG5leHRIaXQgPSBtYXRoLnJhbmRvbSgyLCAzKQoJCQlsb2NhbCByZXRyYWN0aW5nID0gZmFsc2UKCQkJd2hpbGUgc2hvd24gPiAwIGFuZCBnZW4gPT0gZGVzY0dlbiBkbwoJCQkJc2hvd24gLT0gMQoJCQkJbmV4dEhpdCAtPSAxCgkJCQlpZiByZXRyYWN0aW5nIHRoZW4KCQkJCQlkZXNjcmlwdGlvbi5UZXh0ID0gc3RyaW5nLnN1YihkZXNjVGV4dCwgMSwgc2hvd24pCgkJCQllbHNlCgkJCQkJc2V0RGVzY1RleHQoc3RyaW5nLnN1YihkZXNjVGV4dCwgMSwgc2hvd24pKQoJCQkJZW5kCgkJCQlpZiBub3QgcmV0cmFjdGluZyBhbmQgbmV4dEhpdCA8PSAwIHRoZW4KCQkJCQlwbGF5SGl0KGRlbGV0ZVNvdW5kKQoJCQkJCW5leHRIaXQgPSBtYXRoLnJhbmRvbSgyLCAzKQoJCQkJZW5kCgkJCQlpZiBub3QgcmV0cmFjdGluZyBhbmQgc2hvd24gPD0gMyB0aGVuCgkJCQkJcmV0cmFjdGluZyA9IHRydWUKCQkJCQlkZXNjUmV0cmFjdGluZyA9IHRydWUKCQkJCQlkZXNjcmlwdGlvbi5DbGlwc0Rlc2NlbmRhbnRzID0gdHJ1ZQoJCQkJCWxvY2FsIHR3ID0gVHdlZW5TZXJ2aWNlOkNyZWF0ZSgKCQkJCQkJZGVzY3JpcHRpb24sCgkJCQkJCVR3ZWVuSW5mby5uZXcoMC4xNiwgRW51bS5FYXNpbmdTdHlsZS5RdWFkLCBFbnVtLkVhc2luZ0RpcmVjdGlvbi5JbiksCgkJCQkJCXsKCQkJCQkJCVNpemUgPSBVRGltMi5uZXcoMCwgMCwgMSwgMCksCgkJCQkJCQlUZXh0VHJhbnNwYXJlbmN5ID0gMSwKCQkJCQkJfQoJCQkJCSkKCQkJCQlkZXNjVHdlZW4gPSB0dwoJCQkJCXR3OlBsYXkoKQoJCQkJZW5kCgkJCQl0YXNrLndhaXQoMC4wMykKCQkJZW5kCgkJCWlmIGdlbiB+PSBkZXNjR2VuIHRoZW4gcmV0dXJuIGVuZAoJCQlpZiBkZXNjVHdlZW4gdGhlbgoJCQkJZGVzY1R3ZWVuLkNvbXBsZXRlZDpXYWl0KCkKCQkJZW5kCgkJCWlmIGdlbiA9PSBkZXNjR2VuIHRoZW4KCQkJCWRlc2NNb2RlID0gImlkbGUiCgkJCQlkZXNjcmlwdGlvbi5WaXNpYmxlID0gZmFsc2UKCQkJCWRlc2NyaXB0aW9uLlRleHQgPSAiIgoJCQkJZGVzY3JpcHRpb24uVGV4dFRyYW5zcGFyZW5jeSA9IDAKCQkJZW5kCgkJCWRlc2NUd2VlbiA9IG5pbAoJCQlkZXNjUmV0cmFjdGluZyA9IGZhbHNlCgkJCWRlc2NyaXB0aW9uLkNsaXBzRGVzY2VuZGFudHMgPSBmYWxzZQoJCWVuZCkKCWVuZAoKCWxvY2FsIGhvdmVyZWQgPSB7fQoJbG9jYWwgaG92ZXJTZXNzaW9uID0gMAoJbG9jYWwgc2Vzc2lvbkNvdW50ID0gMAoJbG9jYWwgZW5kR2VuID0gMAoKCWxvY2FsIGZ1bmN0aW9uIGhvdmVyQ2hhbmdlZCgpCgkJbG9jYWwgb3ZlciA9IG5leHQoaG92ZXJlZCkgfj0gbmlsCgoJCWlmIG92ZXIgdGhlbgoJCQllbmRHZW4gKz0gMQoJCQlpZiBob3ZlclNlc3Npb24gPT0gMCB0aGVuCgkJCQlzZXNzaW9uQ291bnQgKz0gMQoJCQkJaG92ZXJTZXNzaW9uID0gc2Vzc2lvbkNvdW50CgkJCQlsb2NhbCBzaWQgPSBob3ZlclNlc3Npb24KCQkJCWlmIGRlc2NNb2RlID09ICJkZWxldGluZyIgdGhlbgoJCQkJCXN0YXJ0VHlwaW5nKCkKCQkJCWVsc2UKCQkJCQl0YXNrLmRlbGF5KDAuOCwgZnVuY3Rpb24oKQoJCQkJCQlpZiBob3ZlclNlc3Npb24gPT0gc2lkIHRoZW4KCQkJCQkJCXN0YXJ0VHlwaW5nKCkKCQkJCQkJZW5kCgkJCQkJZW5kKQoJCQkJZW5kCgkJCWVuZAoJCWVsc2UKCQkJaWYgaG92ZXJTZXNzaW9uIH49IDAgdGhlbgoJCQkJZW5kR2VuICs9IDEKCQkJCWxvY2FsIGcgPSBlbmRHZW4KCQkJCXRhc2suZGVsYXkoMC4wNSwgZnVuY3Rpb24oKQoJCQkJCWlmIGcgPT0gZW5kR2VuIGFuZCBuZXh0KGhvdmVyZWQpID09IG5pbCB0aGVuCgkJCQkJCWhvdmVyU2Vzc2lvbiA9IDAKCQkJCQkJc3RhcnREZWxldGluZygpCgkJCQkJZW5kCgkJCQllbmQpCgkJCWVuZAoJCWVuZAoJZW5kCgoJbG9jYWwgZnVuY3Rpb24gYmluZEhvdmVyKGd1aSkKCQlndWkuTW91c2VFbnRlcjpDb25uZWN0KGZ1bmN0aW9uKCkKCQkJaG92ZXJlZFtndWldID0gdHJ1ZQoJCQlob3ZlckNoYW5nZWQoKQoJCWVuZCkKCQlndWkuTW91c2VMZWF2ZTpDb25uZWN0KGZ1bmN0aW9uKCkKCQkJaG92ZXJlZFtndWldID0gbmlsCgkJCWhvdmVyQ2hhbmdlZCgpCgkJZW5kKQoJZW5kCgoJYmluZEhvdmVyKHJvdykKCWJpbmRIb3ZlcihiYWxscykKCWZvciBfLCBjIGluIGlwYWlycyhyb3c6R2V0RGVzY2VuZGFudHMoKSkgZG8KCQlpZiBjOklzQSgiR3VpT2JqZWN0IikgYW5kIGMgfj0gYmFsbHMgdGhlbgoJCQliaW5kSG92ZXIoYykKCQllbmQKCWVuZAoKCUcuWFRXX1RLX0FOSU0gPSBhbmltCglHLlhUV19US19GTElQX0VYVCA9IGZ1bmN0aW9uKG9uKQoJCVR3ZWVuU2VydmljZTpDcmVhdGUoYW5pbSwgVHdlZW5JbmZvLm5ldygwLjI1LCBFbnVtLkVhc2luZ1N0eWxlLlF1YWQsIEVudW0uRWFzaW5nRGlyZWN0aW9uLk91dCksIHsKCQkJVmFsdWUgPSBvbiBhbmQgMSBvciAwCgkJfSk6UGxheSgpCgllbmQKZW5kCgpsb2NhbCBhbmltID0gRy5YVFdfVEtfQU5JTSBvciBJbnN0YW5jZS5uZXcoIk51bWJlclZhbHVlIikKCmxvY2FsIGZ1bmN0aW9uIHJlZ2lzdGVyQ29sbGlzaW9uR3JvdXAobmFtZSkKCXBjYWxsKGZ1bmN0aW9uKCkKCQlQaHlzaWNzU2VydmljZTpSZWdpc3RlckNvbGxpc2lvbkdyb3VwKG5hbWUpCgllbmQpCmVuZAoKcmVnaXN0ZXJDb2xsaXNpb25Hcm91cCgiWFRXUHVzaGVyIikKcmVnaXN0ZXJDb2xsaXNpb25Hcm91cCgiWFRXUGxheWVyTm9Db2xsaWRlIikKCnBjYWxsKGZ1bmN0aW9uKCkKCVBoeXNpY3NTZXJ2aWNlOkNvbGxpc2lvbkdyb3VwU2V0Q29sbGlkYWJsZSgiWFRXUHVzaGVyIiwgIlhUV1B1c2hlciIsIGZhbHNlKQoJUGh5c2ljc1NlcnZpY2U6Q29sbGlzaW9uR3JvdXBTZXRDb2xsaWRhYmxlKCJYVFdQdXNoZXIiLCAiWFRXUGxheWVyTm9Db2xsaWRlIiwgZmFsc2UpCglQaHlzaWNzU2VydmljZTpDb2xsaXNpb25Hcm91cFNldENvbGxpZGFibGUoIlhUV1BsYXllck5vQ29sbGlkZSIsICJYVFdQbGF5ZXJOb0NvbGxpZGUiLCB0cnVlKQoJUGh5c2ljc1NlcnZpY2U6Q29sbGlzaW9uR3JvdXBTZXRDb2xsaWRhYmxlKCJYVFdQbGF5ZXJOb0NvbGxpZGUiLCAiRGVmYXVsdCIsIHRydWUpCmVuZCkKCmxvY2FsIFRLID0gewoJZW5hYmxlZCA9IGZhbHNlLAoJaGVsZCA9IG5pbCwKCWhvdmVyVGFyZ2V0ID0gbmlsLAoJZGlzdGFuY2UgPSAyMCwKCW1pbkRpc3RhbmNlID0gMywKCW1heERpc3RhbmNlID0gNTAwLAoJdmVsb2NpdHlHYWluID0gMzAsCgltYXhTcGVlZCA9IDMwMCwKCXNjcm9sbFN0ZXAgPSAyLAoJc2F2ZWRNaW4gPSBuaWwsCglzYXZlZE1heCA9IG5pbCwKCXJlbmRlckNvbm4gPSBuaWwsCglpbnB1dEJlZ2FuID0gbmlsLAoJaW5wdXRFbmRlZCA9IG5pbCwKCWlucHV0Q2hhbmdlZCA9IG5pbCwKCWNoYXJDb25uID0gbmlsLAoJcm90UmlnaHQgPSBmYWxzZSwKCXJvdFVwID0gZmFsc2UsCglyb3RhdGVTcGVlZCA9IDkwLAoJdXNpbmdQdXNoZXIgPSBmYWxzZSwKfQoKbG9jYWwgREFTSCA9IHsKCWxhc3REYXNoID0gMCwKCWNvb2xkb3duID0gMC4xNSwKCWFjdGl2ZSA9IGZhbHNlLAp9Cgpsb2NhbCBjYW1lcmEgPSB3b3Jrc3BhY2UuQ3VycmVudENhbWVyYQoKbG9jYWwgb2xkSGwgPSB3b3Jrc3BhY2U6RmluZEZpcnN0Q2hpbGQoIlhUV1RLSGlnaGxpZ2h0IikKaWYgb2xkSGwgdGhlbiBvbGRIbDpEZXN0cm95KCkgZW5kCgpsb2NhbCBoaWdobGlnaHQgPSBJbnN0YW5jZS5uZXcoIkhpZ2hsaWdodCIpCmhpZ2hsaWdodC5OYW1lID0gIlhUV1RLSGlnaGxpZ2h0IgpoaWdobGlnaHQuRmlsbENvbG9yID0gQ29sb3IzLmZyb21SR0IoODAsIDIwMCwgMjU1KQpoaWdobGlnaHQuT3V0bGluZUNvbG9yID0gQ29sb3IzLmZyb21SR0IoMTQwLCAyMzUsIDI1NSkKaGlnaGxpZ2h0LkZpbGxUcmFuc3BhcmVuY3kgPSAwLjY1CmhpZ2hsaWdodC5PdXRsaW5lVHJhbnNwYXJlbmN5ID0gMApoaWdobGlnaHQuRGVwdGhNb2RlID0gRW51bS5IaWdobGlnaHREZXB0aE1vZGUuQWx3YXlzT25Ub3AKaGlnaGxpZ2h0LkVuYWJsZWQgPSBmYWxzZQpoaWdobGlnaHQuUGFyZW50ID0gd29ya3NwYWNlCgpsb2NhbCBob3ZlckZpbGwgPSBDb2xvcjMuZnJvbVJHQig4MCwgMjAwLCAyNTUpCmxvY2FsIGhvdmVyT3V0bGluZSA9IENvbG9yMy5mcm9tUkdCKDE0MCwgMjM1LCAyNTUpCmxvY2FsIGdyYWJGaWxsID0gQ29sb3IzLmZyb21SR0IoMjU1LCAyMDAsIDgwKQpsb2NhbCBncmFiT3V0bGluZSA9IENvbG9yMy5mcm9tUkdCKDI1NSwgMjMwLCAxMzApCmxvY2FsIG5wY0ZpbGwgPSBDb2xvcjMuZnJvbVJHQigyMDAsIDEzMCwgMjU1KQpsb2NhbCBucGNPdXRsaW5lID0gQ29sb3IzLmZyb21SR0IoMjIwLCAxODAsIDI1NSkKCmxvY2FsIEZYID0gewoJYWN0aXZlID0gZmFsc2UsCglwYXJ0ID0gbmlsLAoJaXRlbXMgPSBuaWwsCn0KCmxvY2FsIGZ1bmN0aW9uIGJ1aWxkV2lkdGhTZXEoYmFzZVdpZHRoLCBwdWxzZSkKCWxvY2FsIGIgPSBiYXNlV2lkdGggKiBwdWxzZQoJcmV0dXJuIE51bWJlclNlcXVlbmNlLm5ldyh7CgkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMCwgMC4wNSAqIGIpLAoJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDAuMSwgMC41NSAqIGIpLAoJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDAuMjUsIDAuOTUgKiBiKSwKCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjU1LCAwLjc1ICogYiksCgkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMC44LCAwLjM1ICogYiksCgkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMC45NSwgMC4wOCAqIGIpLAoJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDEsIDApLAoJfSkKZW5kCgpsb2NhbCBmdW5jdGlvbiBidWlsZENvbG9yU2VxKGNBLCBjQiwgY0MpCglyZXR1cm4gQ29sb3JTZXF1ZW5jZS5uZXcoewoJCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMCwgY0EpLAoJCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMC4zNSwgY0IpLAoJCUNvbG9yU2VxdWVuY2VLZXlwb2ludC5uZXcoMC43LCBjQyksCgkJQ29sb3JTZXF1ZW5jZUtleXBvaW50Lm5ldygxLCBjQSksCgl9KQplbmQKCmxvY2FsIGZ1bmN0aW9uIG1ha2VUcmFpbChhdHQwLCBhdHQxLCBjb2xvclNlcSwgbGlmZXRpbWUsIGJhc2VXaWR0aCwgaGVhZEFscGhhLCBtaWRBbHBoYSwgdGFpbEFscGhhKQoJbG9jYWwgdHIgPSBJbnN0YW5jZS5uZXcoIlRyYWlsIikKCXRyLkF0dGFjaG1lbnQwID0gYXR0MAoJdHIuQXR0YWNobWVudDEgPSBhdHQxCgl0ci5Db2xvciA9IGNvbG9yU2VxCgl0ci5UcmFuc3BhcmVuY3kgPSBOdW1iZXJTZXF1ZW5jZS5uZXcoewoJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDAsIGhlYWRBbHBoYSksCgkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMC4yNSwgbWlkQWxwaGEpLAoJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDAuNjUsIHRhaWxBbHBoYSksCgkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMSwgMSksCgl9KQoJdHIuTGlmZXRpbWUgPSBsaWZldGltZQoJdHIuTWluTGVuZ3RoID0gMAoJdHIuTGlnaHRFbWlzc2lvbiA9IDAuOQoJdHIuTGlnaHRJbmZsdWVuY2UgPSAwLjE1Cgl0ci5GYWNlQ2FtZXJhID0gdHJ1ZQoJdHIuV2lkdGhTY2FsZSA9IGJ1aWxkV2lkdGhTZXEoYmFzZVdpZHRoLCAxKQoJdHIuUGFyZW50ID0gYXR0MC5QYXJlbnQKCXJldHVybiB0cgplbmQKCmxvY2FsIGZ1bmN0aW9uIGNyZWF0ZUZYKHBhcnQpCglkZXN0cm95RlgoKQoKCWxvY2FsIHNpemUgPSBwYXJ0LlNpemUKCWxvY2FsIGhhbGZZID0gc2l6ZS5ZICogMC41Cglsb2NhbCBoYWxmWCA9IHNpemUuWCAqIDAuNQoJbG9jYWwgaGFsZlogPSBzaXplLlogKiAwLjUKCglsb2NhbCBmdW5jdGlvbiBuZXdBdHQobmFtZSwgcG9zKQoJCWxvY2FsIGEgPSBJbnN0YW5jZS5uZXcoIkF0dGFjaG1lbnQiKQoJCWEuTmFtZSA9IG5hbWUKCQlhLlBvc2l0aW9uID0gcG9zCgkJYS5QYXJlbnQgPSBwYXJ0CgkJcmV0dXJuIGEKCWVuZAoKCWxvY2FsIGF0dFRvcEEgPSBuZXdBdHQoIlhUV1RLX0F0dFRvcEEiLCBWZWN0b3IzLm5ldygtaGFsZlggKiAwLjYsIGhhbGZZLCAwKSkKCWxvY2FsIGF0dFRvcEIgPSBuZXdBdHQoIlhUV1RLX0F0dFRvcEIiLCBWZWN0b3IzLm5ldyhoYWxmWCAqIDAuNiwgaGFsZlksIDApKQoJbG9jYWwgYXR0Qm90QSA9IG5ld0F0dCgiWFRXVEtfQXR0Qm90QSIsIFZlY3RvcjMubmV3KC1oYWxmWCAqIDAuNiwgLWhhbGZZLCAwKSkKCWxvY2FsIGF0dEJvdEIgPSBuZXdBdHQoIlhUV1RLX0F0dEJvdEIiLCBWZWN0b3IzLm5ldyhoYWxmWCAqIDAuNiwgLWhhbGZZLCAwKSkKCglsb2NhbCBhdHRMZWZ0QSA9IG5ld0F0dCgiWFRXVEtfQXR0TGVmdEEiLCBWZWN0b3IzLm5ldygtaGFsZlgsIGhhbGZZICogMC41LCAwKSkKCWxvY2FsIGF0dExlZnRCID0gbmV3QXR0KCJYVFdUS19BdHRMZWZ0QiIsIFZlY3RvcjMubmV3KC1oYWxmWCwgLWhhbGZZICogMC41LCAwKSkKCWxvY2FsIGF0dFJpZ2h0QSA9IG5ld0F0dCgiWFRXVEtfQXR0UmlnaHRBIiwgVmVjdG9yMy5uZXcoaGFsZlgsIGhhbGZZICogMC41LCAwKSkKCWxvY2FsIGF0dFJpZ2h0QiA9IG5ld0F0dCgiWFRXVEtfQXR0UmlnaHRCIiwgVmVjdG9yMy5uZXcoaGFsZlgsIC1oYWxmWSAqIDAuNSwgMCkpCgoJbG9jYWwgYXR0RnJvbnRBID0gbmV3QXR0KCJYVFdUS19BdHRGcm9udEEiLCBWZWN0b3IzLm5ldygwLCBoYWxmWSAqIDAuNSwgLWhhbGZaKSkKCWxvY2FsIGF0dEZyb250QiA9IG5ld0F0dCgiWFRXVEtfQXR0RnJvbnRCIiwgVmVjdG9yMy5uZXcoMCwgLWhhbGZZICogMC41LCAtaGFsZlopKQoJbG9jYWwgYXR0QmFja0EgPSBuZXdBdHQoIlhUV1RLX0F0dEJhY2tBIiwgVmVjdG9yMy5uZXcoMCwgaGFsZlkgKiAwLjUsIGhhbGZaKSkKCWxvY2FsIGF0dEJhY2tCID0gbmV3QXR0KCJYVFdUS19BdHRCYWNrQiIsIFZlY3RvcjMubmV3KDAsIC1oYWxmWSAqIDAuNSwgaGFsZlopKQoKCWxvY2FsIGF0dERpYWdBMSA9IG5ld0F0dCgiWFRXVEtfQXR0RGlhZ0ExIiwgVmVjdG9yMy5uZXcoLWhhbGZYICogMC43LCBoYWxmWSAqIDAuNywgLWhhbGZaICogMC43KSkKCWxvY2FsIGF0dERpYWdBMiA9IG5ld0F0dCgiWFRXVEtfQXR0RGlhZ0EyIiwgVmVjdG9yMy5uZXcoaGFsZlggKiAwLjcsIC1oYWxmWSAqIDAuNywgaGFsZlogKiAwLjcpKQoJbG9jYWwgYXR0RGlhZ0IxID0gbmV3QXR0KCJYVFdUS19BdHREaWFnQjEiLCBWZWN0b3IzLm5ldyhoYWxmWCAqIDAuNywgaGFsZlkgKiAwLjcsIC1oYWxmWiAqIDAuNykpCglsb2NhbCBhdHREaWFnQjIgPSBuZXdBdHQoIlhUV1RLX0F0dERpYWdCMiIsIFZlY3RvcjMubmV3KC1oYWxmWCAqIDAuNywgLWhhbGZZICogMC43LCBoYWxmWiAqIDAuNykpCgoJbG9jYWwgd2hpdGVDb3JlID0gQ29sb3IzLmZyb21SR0IoMjU1LCAyNTUsIDI1NSkKCWxvY2FsIGxpZ2h0R3JleSA9IENvbG9yMy5mcm9tUkdCKDIxMCwgMjEwLCAyMTApCglsb2NhbCBtaWRHcmV5ICAgPSBDb2xvcjMuZnJvbVJHQigxMjAsIDEyMCwgMTIwKQoJbG9jYWwgY2hhckdyZXkgID0gQ29sb3IzLmZyb21SR0IoNDUsIDQ1LCA0NSkKCglsb2NhbCBlZGdlU2VxICA9IGJ1aWxkQ29sb3JTZXEod2hpdGVDb3JlLCBsaWdodEdyZXksIGNoYXJHcmV5KQoJbG9jYWwgZGlhZ1NlcSAgPSBidWlsZENvbG9yU2VxKGxpZ2h0R3JleSwgbWlkR3JleSwgY2hhckdyZXkpCglsb2NhbCBjcm9zc1NlcSA9IGJ1aWxkQ29sb3JTZXEod2hpdGVDb3JlLCBtaWRHcmV5LCBjaGFyR3JleSkKCglsb2NhbCB0cmFpbHMgPSB7CgkJbWFrZVRyYWlsKGF0dFRvcEEsIGF0dFRvcEIsIGVkZ2VTZXEsIDAuODUsIDAuNTUsIDAuNTUsIDAuNzUsIDAuOTUpLAoJCW1ha2VUcmFpbChhdHRCb3RBLCBhdHRCb3RCLCBlZGdlU2VxLCAwLjg1LCAwLjU1LCAwLjU1LCAwLjc1LCAwLjk1KSwKCQltYWtlVHJhaWwoYXR0TGVmdEEsIGF0dExlZnRCLCBlZGdlU2VxLCAwLjgwLCAwLjUwLCAwLjYwLCAwLjc4LCAwLjk2KSwKCQltYWtlVHJhaWwoYXR0UmlnaHRBLCBhdHRSaWdodEIsIGVkZ2VTZXEsIDAuODAsIDAuNTAsIDAuNjAsIDAuNzgsIDAuOTYpLAoJCW1ha2VUcmFpbChhdHRGcm9udEEsIGF0dEZyb250QiwgY3Jvc3NTZXEsIDAuNzUsIDAuNDUsIDAuNjIsIDAuODAsIDAuOTYpLAoJCW1ha2VUcmFpbChhdHRCYWNrQSwgYXR0QmFja0IsIGNyb3NzU2VxLCAwLjc1LCAwLjQ1LCAwLjYyLCAwLjgwLCAwLjk2KSwKCQltYWtlVHJhaWwoYXR0RGlhZ0ExLCBhdHREaWFnQTIsIGRpYWdTZXEsIDEuMDAsIDAuNzAsIDAuNTUsIDAuNzIsIDAuOTQpLAoJCW1ha2VUcmFpbChhdHREaWFnQjEsIGF0dERpYWdCMiwgZGlhZ1NlcSwgMS4wMCwgMC43MCwgMC41NSwgMC43MiwgMC45NCksCgl9CgoJbG9jYWwgbGlnaHQgPSBJbnN0YW5jZS5uZXcoIlBvaW50TGlnaHQiKQoJbGlnaHQuTmFtZSA9ICJYVFdUS19HbG93IgoJbGlnaHQuQ29sb3IgPSBDb2xvcjMuZnJvbVJHQigyNDAsIDI0MCwgMjQwKQoJbGlnaHQuQnJpZ2h0bmVzcyA9IDEuNAoJbGlnaHQuUmFuZ2UgPSBtYXRoLm1heChzaXplLk1hZ25pdHVkZSAqIDEuMywgNikKCWxpZ2h0LlNoYWRvd3MgPSBmYWxzZQoJbGlnaHQuUGFyZW50ID0gcGFydAoKCUZYLmFjdGl2ZSA9IHRydWUKCUZYLnBhcnQgPSBwYXJ0CglGWC5pdGVtcyA9IHsKCQlhdHRhY2htZW50cyA9IHsKCQkJYXR0VG9wQSwgYXR0VG9wQiwgYXR0Qm90QSwgYXR0Qm90QiwKCQkJYXR0TGVmdEEsIGF0dExlZnRCLCBhdHRSaWdodEEsIGF0dFJpZ2h0QiwKCQkJYXR0RnJvbnRBLCBhdHRGcm9udEIsIGF0dEJhY2tBLCBhdHRCYWNrQiwKCQkJYXR0RGlhZ0ExLCBhdHREaWFnQTIsIGF0dERpYWdCMSwgYXR0RGlhZ0IyLAoJCX0sCgkJdHJhaWxzID0gdHJhaWxzLAoJCWJhc2VXaWR0aHMgPSB7IDAuNTUsIDAuNTUsIDAuNTAsIDAuNTAsIDAuNDUsIDAuNDUsIDAuNzAsIDAuNzAgfSwKCQlsaWdodCA9IGxpZ2h0LAoJCXN0YXJ0VGltZSA9IHRpY2soKSwKCX0KZW5kCgpmdW5jdGlvbiBkZXN0cm95RlgoKQoJaWYgbm90IEZYLmFjdGl2ZSB0aGVuIHJldHVybiBlbmQKCWlmIEZYLml0ZW1zIHRoZW4KCQlpZiBGWC5pdGVtcy50cmFpbHMgdGhlbgoJCQlmb3IgXywgdCBpbiBpcGFpcnMoRlguaXRlbXMudHJhaWxzKSBkbwoJCQkJaWYgdCB0aGVuIHQ6RGVzdHJveSgpIGVuZAoJCQllbmQKCQllbmQKCQlpZiBGWC5pdGVtcy5hdHRhY2htZW50cyB0aGVuCgkJCWZvciBfLCBhIGluIGlwYWlycyhGWC5pdGVtcy5hdHRhY2htZW50cykgZG8KCQkJCWlmIGEgdGhlbiBhOkRlc3Ryb3koKSBlbmQKCQkJZW5kCgkJZW5kCgkJaWYgRlguaXRlbXMubGlnaHQgdGhlbgoJCQlGWC5pdGVtcy5saWdodDpEZXN0cm95KCkKCQkJRlguaXRlbXMubGlnaHQgPSBuaWwKCQllbmQKCQlGWC5pdGVtcyA9IG5pbAoJZW5kCglGWC5hY3RpdmUgPSBmYWxzZQoJRlgucGFydCA9IG5pbAplbmQKCmxvY2FsIGZ1bmN0aW9uIGZhZGVPdXRGWCgpCglpZiBub3QgRlguYWN0aXZlIG9yIG5vdCBGWC5pdGVtcyB0aGVuIHJldHVybiBlbmQKCglsb2NhbCBwYXJ0ID0gRlgucGFydAoJbG9jYWwgaXRlbXMgPSBGWC5pdGVtcwoKCWlmIG5vdCBwYXJ0IG9yIG5vdCBwYXJ0LlBhcmVudCB0aGVuCgkJZGVzdHJveUZYKCkKCQlyZXR1cm4KCWVuZAoKCWlmIGl0ZW1zLmxpZ2h0IHRoZW4KCQlpdGVtcy5saWdodDpEZXN0cm95KCkKCQlpdGVtcy5saWdodCA9IG5pbAoJZW5kCgoJbG9jYWwgYW5jaG9yID0gSW5zdGFuY2UubmV3KCJQYXJ0IikKCWFuY2hvci5OYW1lID0gIlhUV1RLX0ZhZGVBbmNob3IiCglhbmNob3IuQW5jaG9yZWQgPSB0cnVlCglhbmNob3IuQ2FuQ29sbGlkZSA9IGZhbHNlCglhbmNob3IuQ2FuUXVlcnkgPSBmYWxzZQoJYW5jaG9yLkNhblRvdWNoID0gZmFsc2UKCWFuY2hvci5UcmFuc3BhcmVuY3kgPSAxCglhbmNob3IuU2l6ZSA9IFZlY3RvcjMubmV3KDAuMDUsIDAuMDUsIDAuMDUpCglhbmNob3IuQ0ZyYW1lID0gcGFydC5DRnJhbWUKCWFuY2hvci5QYXJlbnQgPSB3b3Jrc3BhY2UKCglsb2NhbCBwYXJ0Q0YgPSBwYXJ0LkNGcmFtZQoJbG9jYWwgYW5jaG9yQ0YgPSBhbmNob3IuQ0ZyYW1lCgoJbG9jYWwgbWF4TGlmZSA9IDAKCglmb3IgXywgYXR0IGluIGlwYWlycyhpdGVtcy5hdHRhY2htZW50cykgZG8KCQlpZiBhdHQgYW5kIGF0dC5QYXJlbnQgPT0gcGFydCB0aGVuCgkJCWxvY2FsIHdvcmxkUG9zID0gcGFydENGOlBvaW50VG9Xb3JsZFNwYWNlKGF0dC5Qb3NpdGlvbikKCQkJYXR0LlBhcmVudCA9IGFuY2hvcgoJCQlhdHQuUG9zaXRpb24gPSBhbmNob3JDRjpQb2ludFRvT2JqZWN0U3BhY2Uod29ybGRQb3MpCgkJZW5kCgllbmQKCglmb3IgXywgdHIgaW4gaXBhaXJzKGl0ZW1zLnRyYWlscykgZG8KCQlpZiB0ciB0aGVuCgkJCWlmIHRyLkxpZmV0aW1lID4gbWF4TGlmZSB0aGVuIG1heExpZmUgPSB0ci5MaWZldGltZSBlbmQKCQkJdHIuUGFyZW50ID0gYW5jaG9yCgkJZW5kCgllbmQKCglEZWJyaXM6QWRkSXRlbShhbmNob3IsIG1heExpZmUgKyAwLjE1KQoKCUZYLmFjdGl2ZSA9IGZhbHNlCglGWC5wYXJ0ID0gbmlsCglGWC5pdGVtcyA9IG5pbAplbmQKCmxvY2FsIHJheVBhcmFtcyA9IFJheWNhc3RQYXJhbXMubmV3KCkKcmF5UGFyYW1zLkZpbHRlclR5cGUgPSBFbnVtLlJheWNhc3RGaWx0ZXJUeXBlLkV4Y2x1ZGUKcmF5UGFyYW1zLklnbm9yZVdhdGVyID0gdHJ1ZQpyYXlQYXJhbXMuRmlsdGVyRGVzY2VuZGFudHNJbnN0YW5jZXMgPSB7fQoKbG9jYWwgZnVuY3Rpb24gdXBkYXRlRmlsdGVyKCkKCWxvY2FsIGxpc3QgPSB7fQoJaWYgcGxheWVyLkNoYXJhY3RlciB0aGVuCgkJbGlzdFsjbGlzdCArIDFdID0gcGxheWVyLkNoYXJhY3RlcgoJZW5kCglyYXlQYXJhbXMuRmlsdGVyRGVzY2VuZGFudHNJbnN0YW5jZXMgPSBsaXN0CmVuZAoKbG9jYWwgZnVuY3Rpb24gZ2V0Q2hhcmFjdGVyT2YocGFydCkKCWlmIG5vdCBwYXJ0IG9yIG5vdCBwYXJ0OklzQSgiQmFzZVBhcnQiKSB0aGVuIHJldHVybiBuaWwgZW5kCgoJbG9jYWwgbW9kZWwgPSBwYXJ0OkZpbmRGaXJzdEFuY2VzdG9yT2ZDbGFzcygiTW9kZWwiKQoJd2hpbGUgbW9kZWwgZG8KCQlpZiBtb2RlbDpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIkh1bWFub2lkIikgdGhlbgoJCQlyZXR1cm4gbW9kZWwKCQllbmQKCQlpZiBtb2RlbCA9PSB3b3Jrc3BhY2UgdGhlbiBicmVhayBlbmQKCQltb2RlbCA9IG1vZGVsOkZpbmRGaXJzdEFuY2VzdG9yT2ZDbGFzcygiTW9kZWwiKQoJZW5kCgoJbG9jYWwgdG9vbCA9IHBhcnQ6RmluZEZpcnN0QW5jZXN0b3JPZkNsYXNzKCJUb29sIikKCWlmIHRvb2wgdGhlbgoJCWxvY2FsIGhvbGRlciA9IHRvb2wuUGFyZW50CgkJaWYgaG9sZGVyIGFuZCBob2xkZXI6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJIdW1hbm9pZCIpIHRoZW4KCQkJcmV0dXJuIGhvbGRlcgoJCWVuZAoJZW5kCgoJcmV0dXJuIG5pbAplbmQKCmxvY2FsIGZ1bmN0aW9uIGlzTlBDTW9kZWwobW9kZWwpCglpZiBub3QgbW9kZWwgb3Igbm90IG1vZGVsOklzQSgiTW9kZWwiKSB0aGVuIHJldHVybiBmYWxzZSBlbmQKCWlmIG5vdCBtb2RlbDpGaW5kRmlyc3RDaGlsZE9mQ2xhc3MoIkh1bWFub2lkIikgdGhlbiByZXR1cm4gZmFsc2UgZW5kCglpZiBQbGF5ZXJzOkdldFBsYXllckZyb21DaGFyYWN0ZXIobW9kZWwpIHRoZW4gcmV0dXJuIGZhbHNlIGVuZAoJcmV0dXJuIHRydWUKZW5kCgpsb2NhbCBmdW5jdGlvbiBpc1ZhbGlkVGFyZ2V0KHBhcnQpCglpZiBub3QgcGFydCBvciBub3QgcGFydDpJc0EoIkJhc2VQYXJ0IikgdGhlbiByZXR1cm4gZmFsc2UgZW5kCglpZiBwbGF5ZXIuQ2hhcmFjdGVyIGFuZCBwYXJ0OklzRGVzY2VuZGFudE9mKHBsYXllci5DaGFyYWN0ZXIpIHRoZW4gcmV0dXJuIGZhbHNlIGVuZAoKCWxvY2FsIGNoYXIgPSBnZXRDaGFyYWN0ZXJPZihwYXJ0KQoJaWYgY2hhciB0aGVuCgkJaWYgUGxheWVyczpHZXRQbGF5ZXJGcm9tQ2hhcmFjdGVyKGNoYXIpIHRoZW4KCQkJcmV0dXJuIGZhbHNlCgkJZW5kCgkJcmV0dXJuIGlzTlBDTW9kZWwoY2hhcikKCWVuZAoKCWlmIHBhcnQuQW5jaG9yZWQgdGhlbiByZXR1cm4gZmFsc2UgZW5kCglsb2NhbCByb290ID0gcGFydAoJcGNhbGwoZnVuY3Rpb24oKSByb290ID0gcGFydC5Bc3NlbWJseVJvb3RQYXJ0IG9yIHBhcnQgZW5kKQoJaWYgcm9vdC5BbmNob3JlZCB0aGVuIHJldHVybiBmYWxzZSBlbmQKCXJldHVybiB0cnVlCmVuZAoKbG9jYWwgZnVuY3Rpb24gZ2V0TW91c2VSYXkoKQoJbG9jYWwgY2FtID0gd29ya3NwYWNlLkN1cnJlbnRDYW1lcmEKCWlmIG5vdCBjYW0gdGhlbiByZXR1cm4gbmlsIGVuZAoJbG9jYWwgbG9jID0gVXNlcklucHV0U2VydmljZTpHZXRNb3VzZUxvY2F0aW9uKCkKCXJldHVybiBjYW06Vmlld3BvcnRQb2ludFRvUmF5KGxvYy5YLCBsb2MuWSkKZW5kCgpsb2NhbCBmdW5jdGlvbiBnZXRUYXJnZXQoKQoJbG9jYWwgcmF5ID0gZ2V0TW91c2VSYXkoKQoJaWYgbm90IHJheSB0aGVuIHJldHVybiBuaWwgZW5kCgl1cGRhdGVGaWx0ZXIoKQoJbG9jYWwgcmVzdWx0ID0gd29ya3NwYWNlOlJheWNhc3QocmF5Lk9yaWdpbiwgcmF5LkRpcmVjdGlvbiAqIDEwMDAsIHJheVBhcmFtcykKCWlmIHJlc3VsdCBhbmQgaXNWYWxpZFRhcmdldChyZXN1bHQuSW5zdGFuY2UpIHRoZW4KCQlyZXR1cm4gcmVzdWx0Lkluc3RhbmNlCgllbmQKCXJldHVybiBuaWwKZW5kCgpsb2NhbCBmdW5jdGlvbiBnZXRSb290KCkKCWxvY2FsIGNoYXIgPSBwbGF5ZXIuQ2hhcmFjdGVyCglpZiBub3QgY2hhciB0aGVuIHJldHVybiBuaWwgZW5kCglyZXR1cm4gY2hhcjpGaW5kRmlyc3RDaGlsZCgiSHVtYW5vaWRSb290UGFydCIpCmVuZAoKbG9jYWwgZnVuY3Rpb24gZ2V0QXNzZW1ibHlSb290KHBhcnQpCglpZiBub3QgcGFydCBvciBub3QgcGFydDpJc0EoIkJhc2VQYXJ0IikgdGhlbiByZXR1cm4gbmlsIGVuZAoJbG9jYWwgcm9vdCA9IHBhcnQKCXBjYWxsKGZ1bmN0aW9uKCkKCQlyb290ID0gcGFydC5Bc3NlbWJseVJvb3RQYXJ0IG9yIHBhcnQKCWVuZCkKCXJldHVybiByb290CmVuZAoKbG9jYWwgZnVuY3Rpb24gaXNPd25lZEJ5TWUocGFydCkKCWxvY2FsIHJvb3QgPSBnZXRBc3NlbWJseVJvb3QocGFydCkKCWlmIG5vdCByb290IHRoZW4gcmV0dXJuIGZhbHNlIGVuZAoJbG9jYWwgb3duZXIKCXBjYWxsKGZ1bmN0aW9uKCkKCQlvd25lciA9IHJvb3Q6R2V0TmV0d29ya093bmVyKCkKCWVuZCkKCXJldHVybiBvd25lciA9PSBwbGF5ZXIKZW5kCgpsb2NhbCBmdW5jdGlvbiB0cnlEaXJlY3RDbGFpbShwYXJ0KQoJbG9jYWwgcm9vdCA9IGdldEFzc2VtYmx5Um9vdChwYXJ0KQoJaWYgbm90IHJvb3Qgb3Igcm9vdC5BbmNob3JlZCB0aGVuIHJldHVybiBmYWxzZSBlbmQKCglwY2FsbChmdW5jdGlvbigpCgkJcm9vdDpTZXROZXR3b3JrT3duZXIocGxheWVyKQoJZW5kKQoJaWYgaXNPd25lZEJ5TWUocGFydCkgdGhlbiByZXR1cm4gdHJ1ZSBlbmQKCglpZiByb290IH49IHBhcnQgdGhlbgoJCXBjYWxsKGZ1bmN0aW9uKCkKCQkJcGFydDpTZXROZXR3b3JrT3duZXIocGxheWVyKQoJCWVuZCkKCQlpZiBpc093bmVkQnlNZShwYXJ0KSB0aGVuIHJldHVybiB0cnVlIGVuZAoJZW5kCgoJcmV0dXJuIGZhbHNlCmVuZAoKbG9jYWwgZnVuY3Rpb24gdHJ5T3duZXJzaGlwRGFzaChwYXJ0KQoJaWYgREFTSC5hY3RpdmUgdGhlbiByZXR1cm4gZmFsc2UgZW5kCglsb2NhbCBub3cgPSB0aWNrKCkKCWlmIG5vdyAtIERBU0gubGFzdERhc2ggPCBEQVNILmNvb2xkb3duIHRoZW4KCQlyZXR1cm4gZmFsc2UKCWVuZAoJREFTSC5sYXN0RGFzaCA9IG5vdwoKCWxvY2FsIHJvb3QgPSBnZXRSb290KCkKCWlmIG5vdCByb290IHRoZW4gcmV0dXJuIGZhbHNlIGVuZAoKCWxvY2FsIHJvb3RQYXJ0ID0gZ2V0QXNzZW1ibHlSb290KHBhcnQpIG9yIHBhcnQKCWxvY2FsIHRhcmdldFBvcyA9IHJvb3RQYXJ0LlBvc2l0aW9uCglsb2NhbCBzYXZlZENGID0gcm9vdC5DRnJhbWUKCWxvY2FsIG9mZnNldCA9IHNhdmVkQ0YuUG9zaXRpb24gLSB0YXJnZXRQb3MKCWxvY2FsIGRpc3QgPSBvZmZzZXQuTWFnbml0dWRlCgoJaWYgZGlzdCA8IDIgdGhlbgoJCXJldHVybiB0cnlEaXJlY3RDbGFpbShwYXJ0KQoJZW5kCgoJbG9jYWwgc3RhbmRQb3MgPSB0YXJnZXRQb3MgKyBvZmZzZXQuVW5pdCAqIDIuNQoJbG9jYWwgc3RhbmRDRiA9IENGcmFtZS5uZXcoc3RhbmRQb3MsIHRhcmdldFBvcykKCglEQVNILmFjdGl2ZSA9IHRydWUKCglwY2FsbChmdW5jdGlvbigpCgkJcGxheWVyLkNoYXJhY3RlcjpQaXZvdFRvKHN0YW5kQ0YpCgllbmQpCgoJUnVuU2VydmljZS5IZWFydGJlYXQ6V2FpdCgpCgoJbG9jYWwgY2xhaW1lZCA9IHRyeURpcmVjdENsYWltKHBhcnQpCglpZiBub3QgY2xhaW1lZCB0aGVuCgkJUnVuU2VydmljZS5IZWFydGJlYXQ6V2FpdCgpCgkJY2xhaW1lZCA9IHRyeURpcmVjdENsYWltKHBhcnQpCgllbmQKCglwY2FsbChmdW5jdGlvbigpCgkJbG9jYWwgciA9IGdldFJvb3QoKQoJCWlmIHIgdGhlbiByLkNGcmFtZSA9IHNhdmVkQ0YgZW5kCgllbmQpCgoJUnVuU2VydmljZS5IZWFydGJlYXQ6V2FpdCgpCglEQVNILmFjdGl2ZSA9IGZhbHNlCgoJcmV0dXJuIGNsYWltZWQKZW5kCgpsb2NhbCBmdW5jdGlvbiB0cnlUYWtlT3duZXJzaGlwKHBhcnQpCglpZiBpc093bmVkQnlNZShwYXJ0KSB0aGVuCgkJcmV0dXJuIHRydWUsICJhbHJlYWR5IgoJZW5kCglpZiB0cnlEaXJlY3RDbGFpbShwYXJ0KSB0aGVuCgkJcmV0dXJuIHRydWUsICJkaXJlY3QiCgllbmQKCWlmIHRyeU93bmVyc2hpcERhc2gocGFydCkgdGhlbgoJCXJldHVybiB0cnVlLCAiZGFzaCIKCWVuZAoJcmV0dXJuIGZhbHNlLCAiZmFpbGVkIgplbmQKCmxvY2FsIFBVU0hFUiA9IHsKCWFjdGl2ZSA9IGZhbHNlLAoJcGFydCA9IG5pbCwKCWpvaW50ID0gbmlsLAoJc2F2ZWRKb2ludFBhcnQwID0gbmlsLAoJc2F2ZWRUcmFuc3BhcmVuY3kgPSBuaWwsCglzYXZlZENhbkNvbGxpZGUgPSBuaWwsCglzYXZlZE1hc3NsZXNzID0gbmlsLAoJc2F2ZWRDb2xsaXNpb25Hcm91cCA9IG5pbCwKCXNhdmVkQ3VzdG9tUGh5c2ljcyA9IG5pbCwKCXNhdmVkU2l6ZSA9IG5pbCwKCXNhdmVkQ0ZyYW1lID0gbmlsLAoJc2F2ZWRDaGFyR3JvdXBzID0gbmlsLAoJdXBncmFkZVRhc2sgPSBmYWxzZSwKfQoKbG9jYWwgZnVuY3Rpb24gZmluZFB1c2hlclBhcnQoY2hhcikKCWxvY2FsIGFjY2Vzc29yeSA9IGNoYXI6RmluZEZpcnN0Q2hpbGRPZkNsYXNzKCJBY2Nlc3NvcnkiKQoJaWYgbm90IGFjY2Vzc29yeSB0aGVuCgkJZm9yIF8sIGQgaW4gaXBhaXJzKGNoYXI6R2V0RGVzY2VuZGFudHMoKSkgZG8KCQkJaWYgZDpJc0EoIkFjY2Vzc29yeSIpIHRoZW4KCQkJCWFjY2Vzc29yeSA9IGQKCQkJCWJyZWFrCgkJCWVuZAoJCWVuZAoJZW5kCglpZiBhY2Nlc3NvcnkgdGhlbgoJCWxvY2FsIGhhbmRsZSA9IGFjY2Vzc29yeTpGaW5kRmlyc3RDaGlsZCgiSGFuZGxlIikKCQlpZiBoYW5kbGUgYW5kIGhhbmRsZTpJc0EoIkJhc2VQYXJ0IikgdGhlbgoJCQlyZXR1cm4gaGFuZGxlCgkJZW5kCgllbmQKCWxvY2FsIG5hbWVzID0geyAiUmlnaHRIYW5kIiwgIkxlZnRIYW5kIiwgIlJpZ2h0IEFybSIsICJMZWZ0IEFybSIgfQoJZm9yIF8sIG4gaW4gaXBhaXJzKG5hbWVzKSBkbwoJCWxvY2FsIHAgPSBjaGFyOkZpbmRGaXJzdENoaWxkKG4pCgkJaWYgcCBhbmQgcDpJc0EoIkJhc2VQYXJ0IikgdGhlbgoJCQlyZXR1cm4gcAoJCWVuZAoJZW5kCglyZXR1cm4gbmlsCmVuZAoKbG9jYWwgZnVuY3Rpb24gZmluZEpvaW50Rm9yKGNoYXIsIHBhcnQpCglmb3IgXywgZCBpbiBpcGFpcnMoY2hhcjpHZXREZXNjZW5kYW50cygpKSBkbwoJCWlmIGQ6SXNBKCJNb3RvcjZEIikgYW5kIGQuUGFydDEgPT0gcGFydCB0aGVuIHJldHVybiBkIGVuZAoJCWlmIGQ6SXNBKCJXZWxkIikgYW5kIGQuUGFydDEgPT0gcGFydCB0aGVuIHJldHVybiBkIGVuZAoJCWlmIGQ6SXNBKCJNb3RvcjZEIikgYW5kIGQuUGFydDAgPT0gcGFydCB0aGVuIHJldHVybiBkIGVuZAoJCWlmIGQ6SXNBKCJXZWxkIikgYW5kIGQuUGFydDAgPT0gcGFydCB0aGVuIHJldHVybiBkIGVuZAoJZW5kCglyZXR1cm4gbmlsCmVuZAoKbG9jYWwgZnVuY3Rpb24gcmVzdG9yZUNoYXJDb2xsaXNpb25Hcm91cHMoKQoJaWYgbm90IFBVU0hFUi5zYXZlZENoYXJHcm91cHMgdGhlbiByZXR1cm4gZW5kCglmb3IgcGFydCwgZ3JwIGluIHBhaXJzKFBVU0hFUi5zYXZlZENoYXJHcm91cHMpIGRvCgkJaWYgcGFydCBhbmQgcGFydC5QYXJlbnQgdGhlbgoJCQlwY2FsbChmdW5jdGlvbigpCgkJCQlwYXJ0LkNvbGxpc2lvbkdyb3VwID0gZ3JwCgkJCWVuZCkKCQllbmQKCWVuZAoJUFVTSEVSLnNhdmVkQ2hhckdyb3VwcyA9IG5pbAplbmQKCmxvY2FsIGZ1bmN0aW9uIGFwcGx5Q2hhckNvbGxpc2lvbkdyb3VwcygpCglyZXN0b3JlQ2hhckNvbGxpc2lvbkdyb3VwcygpCglsb2NhbCBjaGFyID0gcGxheWVyLkNoYXJhY3RlcgoJaWYgbm90IGNoYXIgdGhlbiByZXR1cm4gZW5kCglsb2NhbCBzYXZlZCA9IHt9Cglmb3IgXywgZCBpbiBpcGFpcnMoY2hhcjpHZXREZXNjZW5kYW50cygpKSBkbwoJCWlmIGQ6SXNBKCJCYXNlUGFydCIpIHRoZW4KCQkJc2F2ZWRbZF0gPSBkLkNvbGxpc2lvbkdyb3VwCgkJCXBjYWxsKGZ1bmN0aW9uKCkKCQkJCWQuQ29sbGlzaW9uR3JvdXAgPSAiWFRXUGxheWVyTm9Db2xsaWRlIgoJCQllbmQpCgkJZW5kCgllbmQKCVBVU0hFUi5zYXZlZENoYXJHcm91cHMgPSBzYXZlZAplbmQKCmxvY2FsIGZ1bmN0aW9uIGNsZWFyUHVzaGVyKCkKCWlmIG5vdCBQVVNIRVIuYWN0aXZlIHRoZW4gcmV0dXJuIGVuZAoKCWxvY2FsIHAgPSBQVVNIRVIucGFydAoJaWYgcCBhbmQgcC5QYXJlbnQgdGhlbgoJCXBjYWxsKGZ1bmN0aW9uKCkKCQkJcC5Bc3NlbWJseUxpbmVhclZlbG9jaXR5ID0gVmVjdG9yMy56ZXJvCgkJCXAuQXNzZW1ibHlBbmd1bGFyVmVsb2NpdHkgPSBWZWN0b3IzLnplcm8KCQkJcC5UcmFuc3BhcmVuY3kgPSBQVVNIRVIuc2F2ZWRUcmFuc3BhcmVuY3kgb3IgMAoJCQlwLkNhbkNvbGxpZGUgPSBQVVNIRVIuc2F2ZWRDYW5Db2xsaWRlIH49IGZhbHNlCgkJCXAuTWFzc2xlc3MgPSBQVVNIRVIuc2F2ZWRNYXNzbGVzcyA9PSB0cnVlCgkJCWlmIFBVU0hFUi5zYXZlZENvbGxpc2lvbkdyb3VwIHRoZW4KCQkJCXAuQ29sbGlzaW9uR3JvdXAgPSBQVVNIRVIuc2F2ZWRDb2xsaXNpb25Hcm91cAoJCQllbmQKCQkJaWYgUFVTSEVSLnNhdmVkQ3VzdG9tUGh5c2ljcyB0aGVuCgkJCQlwLkN1c3RvbVBoeXNpY2FsUHJvcGVydGllcyA9IFBVU0hFUi5zYXZlZEN1c3RvbVBoeXNpY3MKCQkJZW5kCgkJCWlmIFBVU0hFUi5zYXZlZFNpemUgdGhlbgoJCQkJcC5TaXplID0gUFVTSEVSLnNhdmVkU2l6ZQoJCQllbmQKCQllbmQpCgllbmQKCglpZiBQVVNIRVIuam9pbnQgYW5kIFBVU0hFUi5zYXZlZEpvaW50UGFydDAgfj0gbmlsIHRoZW4KCQlwY2FsbChmdW5jdGlvbigpCgkJCVBVU0hFUi5qb2ludC5QYXJ0MCA9IFBVU0hFUi5zYXZlZEpvaW50UGFydDAKCQllbmQpCgllbmQKCglyZXN0b3JlQ2hhckNvbGxpc2lvbkdyb3VwcygpCgoJUFVTSEVSLmFjdGl2ZSA9IGZhbHNlCglQVVNIRVIucGFydCA9IG5pbAoJUFVTSEVSLmpvaW50ID0gbmlsCglQVVNIRVIuc2F2ZWRKb2ludFBhcnQwID0gbmlsCglQVVNIRVIuc2F2ZWRUcmFuc3BhcmVuY3kgPSBuaWwKCVBVU0hFUi5zYXZlZENhbkNvbGxpZGUgPSBuaWwKCVBVU0hFUi5zYXZlZE1hc3NsZXNzID0gbmlsCglQVVNIRVIuc2F2ZWRDb2xsaXNpb25Hcm91cCA9IG5pbAoJUFVTSEVSLnNhdmVkQ3VzdG9tUGh5c2ljcyA9IG5pbAoJUFVTSEVSLnNhdmVkU2l6ZSA9IG5pbAoJUFVTSEVSLnNhdmVkQ0ZyYW1lID0gbmlsCglQVVNIRVIudXBncmFkZVRhc2sgPSBmYWxzZQplbmQKCmxvY2FsIGZ1bmN0aW9uIHNldHVwUHVzaGVyKHRhcmdldFBhcnQpCgljbGVhclB1c2hlcigpCgoJbG9jYWwgY2hhciA9IHBsYXllci5DaGFyYWN0ZXIKCWlmIG5vdCBjaGFyIHRoZW4gcmV0dXJuIGZhbHNlIGVuZAoKCWxvY2FsIHBhcnQgPSBmaW5kUHVzaGVyUGFydChjaGFyKQoJaWYgbm90IHBhcnQgdGhlbiByZXR1cm4gZmFsc2UgZW5kCgoJbG9jYWwgam9pbnQgPSBmaW5kSm9pbnRGb3IoY2hhciwgcGFydCkKCWlmIG5vdCBqb2ludCB0aGVuIHJldHVybiBmYWxzZSBlbmQKCglQVVNIRVIuYWN0aXZlID0gdHJ1ZQoJUFVTSEVSLnBhcnQgPSBwYXJ0CglQVVNIRVIuam9pbnQgPSBqb2ludAoJUFVTSEVSLnNhdmVkSm9pbnRQYXJ0MCA9IGpvaW50LlBhcnQwCglQVVNIRVIuc2F2ZWRUcmFuc3BhcmVuY3kgPSBwYXJ0LlRyYW5zcGFyZW5jeQoJUFVTSEVSLnNhdmVkQ2FuQ29sbGlkZSA9IHBhcnQuQ2FuQ29sbGlkZQoJUFVTSEVSLnNhdmVkTWFzc2xlc3MgPSBwYXJ0Lk1hc3NsZXNzCglQVVNIRVIuc2F2ZWRDb2xsaXNpb25Hcm91cCA9IHBhcnQuQ29sbGlzaW9uR3JvdXAKCVBVU0hFUi5zYXZlZEN1c3RvbVBoeXNpY3MgPSBwYXJ0LkN1c3RvbVBoeXNpY2FsUHJvcGVydGllcwoJUFVTSEVSLnNhdmVkU2l6ZSA9IHBhcnQuU2l6ZQoJUFVTSEVSLnNhdmVkQ0ZyYW1lID0gcGFydC5DRnJhbWUKCglwY2FsbChmdW5jdGlvbigpIGpvaW50LlBhcnQwID0gbmlsIGVuZCkKCglwYXJ0LlRyYW5zcGFyZW5jeSA9IDEKCXBhcnQuQ2FuQ29sbGlkZSA9IHRydWUKCXBhcnQuTWFzc2xlc3MgPSBmYWxzZQoJcGNhbGwoZnVuY3Rpb24oKQoJCXBhcnQuQ3VzdG9tUGh5c2ljYWxQcm9wZXJ0aWVzID0gUGh5c2ljYWxQcm9wZXJ0aWVzLm5ldygyNSwgMC4zLCAwLjA1LCAxLCAxKQoJZW5kKQoJcGNhbGwoZnVuY3Rpb24oKQoJCXBhcnQuU2l6ZSA9IFZlY3RvcjMubmV3KDUsIDUsIDUpCgllbmQpCglwY2FsbChmdW5jdGlvbigpCgkJcGFydC5Db2xsaXNpb25Hcm91cCA9ICJYVFdQdXNoZXIiCgllbmQpCglwY2FsbChmdW5jdGlvbigpCgkJcGFydC5Bc3NlbWJseUxpbmVhclZlbG9jaXR5ID0gVmVjdG9yMy56ZXJvCgkJcGFydC5Bc3NlbWJseUFuZ3VsYXJWZWxvY2l0eSA9IFZlY3RvcjMuemVybwoJZW5kKQoJcGNhbGwoZnVuY3Rpb24oKQoJCXBhcnQ6U2V0TmV0d29ya093bmVyKHBsYXllcikKCWVuZCkKCglhcHBseUNoYXJDb2xsaXNpb25Hcm91cHMoKQoKCXJldHVybiB0cnVlCmVuZAoKbG9jYWwgZnVuY3Rpb24gdXBkYXRlUHVzaGVyKHBvcykKCWlmIG5vdCBQVVNIRVIuYWN0aXZlIG9yIG5vdCBQVVNIRVIucGFydCB0aGVuIHJldHVybiBlbmQKCWxvY2FsIHBhcnQgPSBQVVNIRVIucGFydAoJaWYgbm90IHBhcnQgb3Igbm90IHBhcnQuUGFyZW50IHRoZW4gcmV0dXJuIGVuZAoKCWxvY2FsIG93bmVyCglwY2FsbChmdW5jdGlvbigpIG93bmVyID0gcGFydDpHZXROZXR3b3JrT3duZXIoKSBlbmQpCglpZiBvd25lciB+PSBwbGF5ZXIgdGhlbgoJCXBjYWxsKGZ1bmN0aW9uKCkgcGFydDpTZXROZXR3b3JrT3duZXIocGxheWVyKSBlbmQpCgllbmQKCglsb2NhbCBkZWx0YSA9IHBvcyAtIHBhcnQuUG9zaXRpb24KCWxvY2FsIGRpc3QgPSBkZWx0YS5NYWduaXR1ZGUKCglsb2NhbCBzcGVlZAoJaWYgZGlzdCA8IDAuMiB0aGVuCgkJc3BlZWQgPSAwCgllbHNlCgkJc3BlZWQgPSBtYXRoLm1pbihkaXN0ICogMTYsIDIwMCkKCWVuZAoKCWlmIGRpc3QgPiAwLjAxIGFuZCBzcGVlZCA+IDAgdGhlbgoJCXBhcnQuQXNzZW1ibHlMaW5lYXJWZWxvY2l0eSA9IGRlbHRhLlVuaXQgKiBzcGVlZAoJZWxzZQoJCXBhcnQuQXNzZW1ibHlMaW5lYXJWZWxvY2l0eSA9IFZlY3RvcjMuemVybwoJZW5kCglwYXJ0LkFzc2VtYmx5QW5ndWxhclZlbG9jaXR5ID0gVmVjdG9yMy56ZXJvCmVuZAoKbG9jYWwgZnVuY3Rpb24gdHJ5UHVzaGVyVXBncmFkZShwYXJ0KQoJaWYgbm90IFBVU0hFUi5hY3RpdmUgdGhlbiByZXR1cm4gZW5kCglpZiBub3QgVEsudXNpbmdQdXNoZXIgdGhlbiByZXR1cm4gZW5kCglpZiBUSy5oZWxkIH49IHBhcnQgdGhlbiByZXR1cm4gZW5kCglpZiBnZXRDaGFyYWN0ZXJPZihwYXJ0KSB0aGVuIHJldHVybiBlbmQKCWlmIFBVU0hFUi51cGdyYWRlVGFzayB0aGVuIHJldHVybiBlbmQKCglQVVNIRVIudXBncmFkZVRhc2sgPSB0cnVlCgl0YXNrLnNwYXduKGZ1bmN0aW9uKCkKCQlsb2NhbCBjbGFpbWVkID0gZmFsc2UKCQlpZiBub3QgREFTSC5hY3RpdmUgdGhlbgoJCQljbGFpbWVkID0gdHJ5RGlyZWN0Q2xhaW0ocGFydCkKCQkJaWYgbm90IGNsYWltZWQgdGhlbgoJCQkJY2xhaW1lZCA9IHRyeU93bmVyc2hpcERhc2gocGFydCkKCQkJZW5kCgkJZW5kCgkJUFVTSEVSLnVwZ3JhZGVUYXNrID0gZmFsc2UKCQlpZiBjbGFpbWVkIGFuZCBUSy5oZWxkID09IHBhcnQgYW5kIFRLLnVzaW5nUHVzaGVyIHRoZW4KCQkJVEsudXNpbmdQdXNoZXIgPSBmYWxzZQoJCQljbGVhclB1c2hlcigpCgkJZW5kCgllbmQpCmVuZAoKbG9jYWwgZnVuY3Rpb24gYXBwbHlWZWxvY2l0eURyYWcocGFydCwgdGFyZ2V0UG9zLCBkdCkKCWxvY2FsIGRlbHRhID0gdGFyZ2V0UG9zIC0gcGFydC5Qb3NpdGlvbgoJbG9jYWwgZGlzdCA9IGRlbHRhLk1hZ25pdHVkZQoKCWxvY2FsIGRlc2lyZWRWZWwgPSBWZWN0b3IzLnplcm8KCWlmIGRpc3QgPiAwLjA1IHRoZW4KCQlkZXNpcmVkVmVsID0gZGVsdGEgKiBUSy52ZWxvY2l0eUdhaW4KCQlsb2NhbCBtYXhWID0gVEsubWF4U3BlZWQKCQlpZiBkZXNpcmVkVmVsLk1hZ25pdHVkZSA+IG1heFYgdGhlbgoJCQlkZXNpcmVkVmVsID0gZGVzaXJlZFZlbC5Vbml0ICogbWF4VgoJCWVuZAoJZW5kCgoJbG9jYWwgYSA9IDEgLSBtYXRoLmV4cCgtZHQgKiAyNSkKCXBhcnQuQXNzZW1ibHlMaW5lYXJWZWxvY2l0eSA9IHBhcnQuQXNzZW1ibHlMaW5lYXJWZWxvY2l0eTpMZXJwKGRlc2lyZWRWZWwsIGEpCgoJbG9jYWwgYXYgPSBWZWN0b3IzLnplcm8KCWxvY2FsIHNwZWVkID0gbWF0aC5yYWQoVEsucm90YXRlU3BlZWQpCglpZiBUSy5yb3RSaWdodCB0aGVuCgkJYXYgPSBhdiArIFZlY3RvcjMubmV3KDAsIC1zcGVlZCwgMCkKCWVuZAoJaWYgVEsucm90VXAgdGhlbgoJCWF2ID0gYXYgKyBWZWN0b3IzLm5ldyhzcGVlZCwgMCwgMCkKCWVuZAoJaWYgVEsucm90UmlnaHQgb3IgVEsucm90VXAgdGhlbgoJCXBhcnQuQXNzZW1ibHlBbmd1bGFyVmVsb2NpdHkgPSBwYXJ0LkFzc2VtYmx5QW5ndWxhclZlbG9jaXR5OkxlcnAoYXYsIGEpCgllbHNlCgkJcGFydC5Bc3NlbWJseUFuZ3VsYXJWZWxvY2l0eSA9IHBhcnQuQXNzZW1ibHlBbmd1bGFyVmVsb2NpdHk6TGVycChWZWN0b3IzLnplcm8sIGEgKiAwLjUpCgllbmQKZW5kCgpsb2NhbCBmdW5jdGlvbiB1cGRhdGVGWFB1bHNlKHBhcnQpCglpZiBub3QgRlguYWN0aXZlIG9yIG5vdCBGWC5pdGVtcyB0aGVuIHJldHVybiBlbmQKCglsb2NhbCBzcGVlZCA9IHBhcnQuQXNzZW1ibHlMaW5lYXJWZWxvY2l0eS5NYWduaXR1ZGUKCWxvY2FsIHNwZWVkRmFjdG9yID0gbWF0aC5jbGFtcChzcGVlZCAvIDYwLCAwLCAxKQoJbG9jYWwgZWxhcHNlZCA9IHRpY2soKSAtIEZYLml0ZW1zLnN0YXJ0VGltZQoJbG9jYWwgd29iYmxlID0gMC45MiArIDAuMDggKiBtYXRoLnNpbihlbGFwc2VkICogMTApCglsb2NhbCBmbGlja2VyID0gMC45NyArIDAuMDMgKiBtYXRoLnNpbihlbGFwc2VkICogMzEgKyAxLjcpCglsb2NhbCBzY2FsZSA9ICgwLjU1ICsgMC42ICogc3BlZWRGYWN0b3IpICogd29iYmxlICogZmxpY2tlcgoKCWxvY2FsIHRyYWlscyA9IEZYLml0ZW1zLnRyYWlscwoJbG9jYWwgYmFzZXMgPSBGWC5pdGVtcy5iYXNlV2lkdGhzCglmb3IgaSA9IDEsICN0cmFpbHMgZG8KCQlsb2NhbCBiID0gYmFzZXNbaV0gKiBzY2FsZQoJCXRyYWlsc1tpXS5XaWR0aFNjYWxlID0gTnVtYmVyU2VxdWVuY2UubmV3KHsKCQkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMCwgMC4wNSAqIGIpLAoJCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjEsIDAuNTUgKiBiKSwKCQkJTnVtYmVyU2VxdWVuY2VLZXlwb2ludC5uZXcoMC4yNSwgMC45NSAqIGIpLAoJCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjU1LCAwLjc1ICogYiksCgkJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDAuOCwgMC4zNSAqIGIpLAoJCQlOdW1iZXJTZXF1ZW5jZUtleXBvaW50Lm5ldygwLjk1LCAwLjA4ICogYiksCgkJCU51bWJlclNlcXVlbmNlS2V5cG9pbnQubmV3KDEsIDApLAoJCX0pCgllbmQKZW5kCgpsb2NhbCBmdW5jdGlvbiBiZWdpbkhvbGQocGFydCkKCWlmIFRLLmhlbGQgdGhlbiByZXR1cm4gZW5kCgoJbG9jYWwgaXNOUEMgPSBnZXRDaGFyYWN0ZXJPZihwYXJ0KSB+PSBuaWwKCglUSy5oZWxkID0gcGFydAoJVEsudXNpbmdQdXNoZXIgPSBmYWxzZQoKCWxvY2FsIGNhbSA9IHdvcmtzcGFjZS5DdXJyZW50Q2FtZXJhCglpZiBjYW0gdGhlbgoJCWxvY2FsIGNkID0gKHBhcnQuUG9zaXRpb24gLSBjYW0uQ0ZyYW1lLlBvc2l0aW9uKS5NYWduaXR1ZGUKCQlUSy5kaXN0YW5jZSA9IG1hdGguY2xhbXAoY2QsIFRLLm1pbkRpc3RhbmNlLCBUSy5tYXhEaXN0YW5jZSkKCWVuZAoKCVRLLnNhdmVkTWluID0gcGxheWVyLkNhbWVyYU1pblpvb21EaXN0YW5jZQoJVEsuc2F2ZWRNYXggPSBwbGF5ZXIuQ2FtZXJhTWF4Wm9vbURpc3RhbmNlCglpZiBjYW0gdGhlbgoJCWxvY2FsIHpvb20gPSAoY2FtLkNGcmFtZS5Qb3NpdGlvbiAtIGNhbS5Gb2N1cy5Qb3NpdGlvbikuTWFnbml0dWRlCgkJem9vbSA9IG1hdGgubWF4KHpvb20sIDAuNSkKCQlwbGF5ZXIuQ2FtZXJhTWluWm9vbURpc3RhbmNlID0gem9vbQoJCXBsYXllci5DYW1lcmFNYXhab29tRGlzdGFuY2UgPSB6b29tCgllbmQKCglsb2NhbCBvd25lZCA9IGZhbHNlCglpZiBub3QgaXNOUEMgdGhlbgoJCW93bmVkID0gdHJ5VGFrZU93bmVyc2hpcChwYXJ0KQoJZW5kCgoJaWYgbm90IG93bmVkIHRoZW4KCQlpZiBzZXR1cFB1c2hlcihwYXJ0KSB0aGVuCgkJCVRLLnVzaW5nUHVzaGVyID0gdHJ1ZQoJCWVuZAoJZW5kCgoJY3JlYXRlRlgocGFydCkKCglpZiBpc05QQyB0aGVuCgkJaGlnaGxpZ2h0LkZpbGxDb2xvciA9IG5wY0ZpbGwKCQloaWdobGlnaHQuT3V0bGluZUNvbG9yID0gbnBjT3V0bGluZQoJZWxzZQoJCWhpZ2hsaWdodC5GaWxsQ29sb3IgPSBncmFiRmlsbAoJCWhpZ2hsaWdodC5PdXRsaW5lQ29sb3IgPSBncmFiT3V0bGluZQoJZW5kCgloaWdobGlnaHQuQWRvcm5lZSA9IHBhcnQKCWhpZ2hsaWdodC5FbmFibGVkID0gdHJ1ZQplbmQKCmxvY2FsIGZ1bmN0aW9uIGJlZ2luUmVsZWFzZVNldHRsZShoZWxkKQoJdGFzay5zcGF3bihmdW5jdGlvbigpCgkJbG9jYWwgc2V0dGxlZEZyYW1lcyA9IDAKCQlsb2NhbCBzdGFydFRpbWUgPSB0aWNrKCkKCQl3aGlsZSB0aWNrKCkgLSBzdGFydFRpbWUgPCAxMiBkbwoJCQlpZiBub3QgaGVsZCBvciBub3QgaGVsZC5QYXJlbnQgdGhlbiByZXR1cm4gZW5kCgkJCWlmIGhlbGQuQW5jaG9yZWQgdGhlbiBicmVhayBlbmQKCgkJCWxvY2FsIHYgPSBoZWxkLkFzc2VtYmx5TGluZWFyVmVsb2NpdHkuTWFnbml0dWRlCgkJCWxvY2FsIGF2ID0gaGVsZC5Bc3NlbWJseUFuZ3VsYXJWZWxvY2l0eS5NYWduaXR1ZGUKCQkJaWYgdiA8IDEuNSBhbmQgYXYgPCAxLjUgdGhlbgoJCQkJc2V0dGxlZEZyYW1lcyArPSAxCgkJCQlpZiBzZXR0bGVkRnJhbWVzID49IDE1IHRoZW4KCQkJCQlicmVhawoJCQkJZW5kCgkJCWVsc2UKCQkJCXNldHRsZWRGcmFtZXMgPSAwCgkJCWVuZAoJCQl0YXNrLndhaXQoMC4xKQoJCWVuZAoJCXBjYWxsKGZ1bmN0aW9uKCkKCQkJaWYgaGVsZCBhbmQgaGVsZC5QYXJlbnQgdGhlbgoJCQkJaGVsZDpTZXROZXR3b3JrT3duZXJzaGlwQXV0bygpCgkJCWVuZAoJCWVuZCkKCWVuZCkKZW5kCgpsb2NhbCBmdW5jdGlvbiByZWxlYXNlSG9sZCgpCglpZiBub3QgVEsuaGVsZCB0aGVuIHJldHVybiBlbmQKCWxvY2FsIGhlbGQgPSBUSy5oZWxkCglUSy5oZWxkID0gbmlsCglUSy5yb3RSaWdodCA9IGZhbHNlCglUSy5yb3RVcCA9IGZhbHNlCgoJbG9jYWwgd2FzUHVzaGVyID0gVEsudXNpbmdQdXNoZXIKCWxvY2FsIHdhc05QQyA9IGdldENoYXJhY3Rlck9mKGhlbGQpIH49IG5pbAoJVEsudXNpbmdQdXNoZXIgPSBmYWxzZQoKCWZhZGVPdXRGWCgpCgljbGVhclB1c2hlcigpCgoJaWYgbm90IHdhc1B1c2hlciBhbmQgbm90IHdhc05QQyB0aGVuCgkJYmVnaW5SZWxlYXNlU2V0dGxlKGhlbGQpCgllbmQKCglpZiBUSy5zYXZlZE1pbiB0aGVuCgkJcGxheWVyLkNhbWVyYU1pblpvb21EaXN0YW5jZSA9IFRLLnNhdmVkTWluCgkJcGxheWVyLkNhbWVyYU1heFpvb21EaXN0YW5jZSA9IFRLLnNhdmVkTWF4CgkJVEsuc2F2ZWRNaW4gPSBuaWwKCQlUSy5zYXZlZE1heCA9IG5pbAoJZW5kCgoJaGlnaGxpZ2h0LkZpbGxDb2xvciA9IGhvdmVyRmlsbAoJaGlnaGxpZ2h0Lk91dGxpbmVDb2xvciA9IGhvdmVyT3V0bGluZQplbmQKCmxvY2FsIGZ1bmN0aW9uIG9uUmVuZGVyKGR0KQoJaWYgbm90IFRLLmVuYWJsZWQgdGhlbiByZXR1cm4gZW5kCgljYW1lcmEgPSB3b3Jrc3BhY2UuQ3VycmVudENhbWVyYQoJaWYgbm90IGNhbWVyYSB0aGVuIHJldHVybiBlbmQKCglpZiBUSy5oZWxkIHRoZW4KCQlsb2NhbCBwYXJ0ID0gVEsuaGVsZAoJCWlmIG5vdCBwYXJ0IG9yIG5vdCBwYXJ0LlBhcmVudCB0aGVuCgkJCXJlbGVhc2VIb2xkKCkKCQkJaGlnaGxpZ2h0LkVuYWJsZWQgPSBmYWxzZQoJCQloaWdobGlnaHQuQWRvcm5lZSA9IG5pbAoJCQlyZXR1cm4KCQllbmQKCgkJbG9jYWwgaXNOUEMgPSBnZXRDaGFyYWN0ZXJPZihwYXJ0KSB+PSBuaWwKCgkJaWYgbm90IGlzTlBDIHRoZW4KCQkJaWYgcGFydC5BbmNob3JlZCB0aGVuCgkJCQlyZWxlYXNlSG9sZCgpCgkJCQloaWdobGlnaHQuRW5hYmxlZCA9IGZhbHNlCgkJCQloaWdobGlnaHQuQWRvcm5lZSA9IG5pbAoJCQkJcmV0dXJuCgkJCWVuZAoKCQkJaWYgbm90IFRLLnVzaW5nUHVzaGVyIHRoZW4KCQkJCWxvY2FsIG93bmVkID0gZmFsc2UKCQkJCXBjYWxsKGZ1bmN0aW9uKCkKCQkJCQlsb2NhbCByb290ID0gcGFydC5Bc3NlbWJseVJvb3RQYXJ0IG9yIHBhcnQKCQkJCQlvd25lZCA9IChyb290OkdldE5ldHdvcmtPd25lcigpID09IHBsYXllcikKCQkJCWVuZCkKCQkJCWlmIG5vdCBvd25lZCB0aGVuCgkJCQkJcGNhbGwoZnVuY3Rpb24oKQoJCQkJCQlsb2NhbCByb290ID0gcGFydC5Bc3NlbWJseVJvb3RQYXJ0IG9yIHBhcnQKCQkJCQkJcm9vdDpTZXROZXR3b3JrT3duZXIocGxheWVyKQoJCQkJCWVuZCkKCQkJCWVuZAoJCQllbmQKCQllbmQKCgkJbG9jYWwgcmF5ID0gZ2V0TW91c2VSYXkoKQoJCWlmIHJheSB0aGVuCgkJCWxvY2FsIHRhcmdldFBvcyA9IHJheS5PcmlnaW4gKyByYXkuRGlyZWN0aW9uICogVEsuZGlzdGFuY2UKCgkJCWlmIFRLLnVzaW5nUHVzaGVyIHRoZW4KCQkJCXVwZGF0ZVB1c2hlcih0YXJnZXRQb3MpCgkJCQl0cnlQdXNoZXJVcGdyYWRlKHBhcnQpCgkJCWVsc2UKCQkJCWFwcGx5VmVsb2NpdHlEcmFnKHBhcnQsIHRhcmdldFBvcywgZHQpCgkJCWVuZAoJCWVuZAoKCQl1cGRhdGVGWFB1bHNlKHBhcnQpCgoJCWhpZ2hsaWdodC5BZG9ybmVlID0gcGFydAoJCWhpZ2hsaWdodC5FbmFibGVkID0gdHJ1ZQoJZWxzZQoJCWxvY2FsIHRhcmdldCA9IGdldFRhcmdldCgpCgkJVEsuaG92ZXJUYXJnZXQgPSB0YXJnZXQKCQlpZiB0YXJnZXQgdGhlbgoJCQlpZiBnZXRDaGFyYWN0ZXJPZih0YXJnZXQpIHRoZW4KCQkJCWhpZ2hsaWdodC5GaWxsQ29sb3IgPSBucGNGaWxsCgkJCQloaWdobGlnaHQuT3V0bGluZUNvbG9yID0gbnBjT3V0bGluZQoJCQllbHNlCgkJCQloaWdobGlnaHQuRmlsbENvbG9yID0gaG92ZXJGaWxsCgkJCQloaWdobGlnaHQuT3V0bGluZUNvbG9yID0gaG92ZXJPdXRsaW5lCgkJCWVuZAoJCQloaWdobGlnaHQuQWRvcm5lZSA9IHRhcmdldAoJCQloaWdobGlnaHQuRW5hYmxlZCA9IHRydWUKCQllbHNlCgkJCWhpZ2hsaWdodC5FbmFibGVkID0gZmFsc2UKCQkJaGlnaGxpZ2h0LkFkb3JuZWUgPSBuaWwKCQllbmQKCWVuZAplbmQKCmxvY2FsIGZ1bmN0aW9uIG9uSW5wdXRCZWdhbihpbnB1dCwgZ3ApCglpZiBub3QgVEsuZW5hYmxlZCB0aGVuIHJldHVybiBlbmQKCWlmIGdwIHRoZW4gcmV0dXJuIGVuZAoJaWYgaW5wdXQuVXNlcklucHV0VHlwZSA9PSBFbnVtLlVzZXJJbnB1dFR5cGUuTW91c2VCdXR0b24xIHRoZW4KCQlsb2NhbCB0YXJnZXQgPSBnZXRUYXJnZXQoKQoJCWlmIHRhcmdldCB0aGVuCgkJCWJlZ2luSG9sZCh0YXJnZXQpCgkJZW5kCgllbHNlaWYgaW5wdXQuS2V5Q29kZSA9PSBFbnVtLktleUNvZGUuUiB0aGVuCgkJaWYgVEsuaGVsZCBhbmQgbm90IFRLLnVzaW5nUHVzaGVyIHRoZW4gVEsucm90UmlnaHQgPSB0cnVlIGVuZAoJZWxzZWlmIGlucHV0LktleUNvZGUgPT0gRW51bS5LZXlDb2RlLlQgdGhlbgoJCWlmIFRLLmhlbGQgYW5kIG5vdCBUSy51c2luZ1B1c2hlciB0aGVuIFRLLnJvdFVwID0gdHJ1ZSBlbmQKCWVuZAplbmQKCmxvY2FsIGZ1bmN0aW9uIG9uSW5wdXRFbmRlZChpbnB1dCkKCWlmIG5vdCBUSy5lbmFibGVkIHRoZW4gcmV0dXJuIGVuZAoJaWYgaW5wdXQuVXNlcklucHV0VHlwZSA9PSBFbnVtLlVzZXJJbnB1dFR5cGUuTW91c2VCdXR0b24xIHRoZW4KCQlyZWxlYXNlSG9sZCgpCgllbHNlaWYgaW5wdXQuS2V5Q29kZSA9PSBFbnVtLktleUNvZGUuUiB0aGVuCgkJVEsucm90UmlnaHQgPSBmYWxzZQoJZWxzZWlmIGlucHV0LktleUNvZGUgPT0gRW51bS5LZXlDb2RlLlQgdGhlbgoJCVRLLnJvdFVwID0gZmFsc2UKCWVuZAplbmQKCmxvY2FsIGZ1bmN0aW9uIG9uSW5wdXRDaGFuZ2VkKGlucHV0KQoJaWYgbm90IFRLLmVuYWJsZWQgdGhlbiByZXR1cm4gZW5kCglpZiBub3QgVEsuaGVsZCB0aGVuIHJldHVybiBlbmQKCWlmIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLk1vdXNlV2hlZWwgdGhlbgoJCVRLLmRpc3RhbmNlID0gbWF0aC5jbGFtcChUSy5kaXN0YW5jZSArIGlucHV0LlBvc2l0aW9uLlogKiBUSy5zY3JvbGxTdGVwLCBUSy5taW5EaXN0YW5jZSwgVEsubWF4RGlzdGFuY2UpCgllbmQKZW5kCgpsb2NhbCBmdW5jdGlvbiBvbkNoYXJBZGRlZChfY2hhcikKCWlmIFRLLmhlbGQgdGhlbgoJCXJlbGVhc2VIb2xkKCkKCWVuZAoJY2xlYXJQdXNoZXIoKQoJZGVzdHJveUZYKCkKZW5kCgpsb2NhbCBmdW5jdGlvbiBzZXRUSyhvbikKCWlmIG9uID09IFRLLmVuYWJsZWQgdGhlbiByZXR1cm4gZW5kCglUSy5lbmFibGVkID0gb24KCglpZiBvbiB0aGVuCgkJVEsuaW5wdXRCZWdhbiA9IFVzZXJJbnB1dFNlcnZpY2UuSW5wdXRCZWdhbjpDb25uZWN0KG9uSW5wdXRCZWdhbikKCQlUSy5pbnB1dEVuZGVkID0gVXNlcklucHV0U2VydmljZS5JbnB1dEVuZGVkOkNvbm5lY3Qob25JbnB1dEVuZGVkKQoJCVRLLmlucHV0Q2hhbmdlZCA9IFVzZXJJbnB1dFNlcnZpY2UuSW5wdXRDaGFuZ2VkOkNvbm5lY3Qob25JbnB1dENoYW5nZWQpCgkJVEsucmVuZGVyQ29ubiA9IFJ1blNlcnZpY2UuUmVuZGVyU3RlcHBlZDpDb25uZWN0KG9uUmVuZGVyKQoJCVRLLmNoYXJDb25uID0gcGxheWVyLkNoYXJhY3RlckFkZGVkOkNvbm5lY3Qob25DaGFyQWRkZWQpCgllbHNlCgkJcmVsZWFzZUhvbGQoKQoJCWNsZWFyUHVzaGVyKCkKCQlkZXN0cm95RlgoKQoJCWlmIFRLLnJlbmRlckNvbm4gdGhlbiBUSy5yZW5kZXJDb25uOkRpc2Nvbm5lY3QoKSBUSy5yZW5kZXJDb25uID0gbmlsIGVuZAoJCWlmIFRLLmlucHV0QmVnYW4gdGhlbiBUSy5pbnB1dEJlZ2FuOkRpc2Nvbm5lY3QoKSBUSy5pbnB1dEJlZ2FuID0gbmlsIGVuZAoJCWlmIFRLLmlucHV0RW5kZWQgdGhlbiBUSy5pbnB1dEVuZGVkOkRpc2Nvbm5lY3QoKSBUSy5pbnB1dEVuZGVkID0gbmlsIGVuZAoJCWlmIFRLLmlucHV0Q2hhbmdlZCB0aGVuIFRLLmlucHV0Q2hhbmdlZDpEaXNjb25uZWN0KCkgVEsuaW5wdXRDaGFuZ2VkID0gbmlsIGVuZAoJCWlmIFRLLmNoYXJDb25uIHRoZW4gVEsuY2hhckNvbm46RGlzY29ubmVjdCgpIFRLLmNoYXJDb25uID0gbmlsIGVuZAoJCWhpZ2hsaWdodC5FbmFibGVkID0gZmFsc2UKCQloaWdobGlnaHQuQWRvcm5lZSA9IG5pbAoJCVRLLmhvdmVyVGFyZ2V0ID0gbmlsCgkJVEsucm90UmlnaHQgPSBmYWxzZQoJCVRLLnJvdFVwID0gZmFsc2UKCWVuZAplbmQKCkdbU1RPUF9LRVldID0gZnVuY3Rpb24oKQoJc2V0VEsoZmFsc2UpCglpZiBoaWdobGlnaHQgdGhlbgoJCWhpZ2hsaWdodDpEZXN0cm95KCkKCQloaWdobGlnaHQgPSBuaWwKCWVuZAplbmQKCmxvY2FsIGxhc3QgPSAwCgpsb2NhbCBmdW5jdGlvbiBmbGlwKCkKCWlmIHRpY2soKSAtIGxhc3QgPCAwLjEgdGhlbiByZXR1cm4gZW5kCglsYXN0ID0gdGljaygpCgoJc2V0VEsobm90IFRLLmVuYWJsZWQpCgoJaWYgRy5YVFdfVEtfRkxJUF9FWFQgdGhlbgoJCUcuWFRXX1RLX0ZMSVBfRVhUKFRLLmVuYWJsZWQpCgllbHNlCgkJVHdlZW5TZXJ2aWNlOkNyZWF0ZShhbmltLCBUd2VlbkluZm8ubmV3KDAuMjUsIEVudW0uRWFzaW5nU3R5bGUuUXVhZCwgRW51bS5FYXNpbmdEaXJlY3Rpb24uT3V0KSwgewoJCQlWYWx1ZSA9IFRLLmVuYWJsZWQgYW5kIDEgb3IgMAoJCX0pOlBsYXkoKQoJZW5kCmVuZAoKaWYgaGFzR1VJIHRoZW4KCWxvY2FsIGZ1bmN0aW9uIHByZXNzKGlucHV0KQoJCWlmIGlucHV0LlVzZXJJbnB1dFR5cGUgPT0gRW51bS5Vc2VySW5wdXRUeXBlLk1vdXNlQnV0dG9uMQoJCQlvciBpbnB1dC5Vc2VySW5wdXRUeXBlID09IEVudW0uVXNlcklucHV0VHlwZS5Ub3VjaCB0aGVuCgkJCWZsaXAoKQoJCWVuZAoJZW5kCgoJYmFsbHMuSW5wdXRCZWdhbjpDb25uZWN0KHByZXNzKQoJcm93LklucHV0QmVnYW46Q29ubmVjdChwcmVzcykKZWxzZQoJc2V0VEsodHJ1ZSkKCXByaW50KCJbWFRXIEN1cnNvciBUS10gTG9hZGVkLiBSaWdodCBTaGlmdCB0byB0b2dnbGUuIikKCVVzZXJJbnB1dFNlcnZpY2UuSW5wdXRCZWdhbjpDb25uZWN0KGZ1bmN0aW9uKGlucHV0LCBncCkKCQlpZiBncCB0aGVuIHJldHVybiBlbmQKCQlpZiBpbnB1dC5LZXlDb2RlID09IEVudW0uS2V5Q29kZS5SaWdodFNoaWZ0IHRoZW4KCQkJZmxpcCgpCgkJCXByaW50KCJbWFRXIEN1cnNvciBUS10gIiAuLiAoVEsuZW5hYmxlZCBhbmQgIk9OIiBvciAiT0ZGIikpCgkJZW5kCgllbmQpCmVuZAplbmQsIGZ1bmN0aW9uKGUpCiAgICBsb2NhbCB0YiA9ICIiCiAgICBwY2FsbChmdW5jdGlvbigpIHRiID0gZGVidWcudHJhY2ViYWNrKCIiLCAyKSBlbmQpCiAgICByZXR1cm4gdG9zdHJpbmcoZSkgLi4gIlxuIiAuLiB0YgplbmQpCmlmIG5vdCBfX3h0d19vayB0aGVuCiAgICBsb2NhbCBlcnJTdHIgPSB0b3N0cmluZyhfX3h0d19lcnIpCiAgICBpZiBfX3h0d19zZWxmIGFuZCBfX3h0d19zZWxmLlNldEF0dHJpYnV0ZSB0aGVuCiAgICAgICAgcGNhbGwoZnVuY3Rpb24oKSBfX3h0d19zZWxmOlNldEF0dHJpYnV0ZSgieHR3X2Vycm9yIiwgZXJyU3RyKSBlbmQpCiAgICBlbmQKICAgIHBjYWxsKGZ1bmN0aW9uKCkgd2FybigiW3h0d10gRkFJTDogIiAuLiBfX3h0d19uYW1lIC4uICIgKCIgLi4gX194dHdfY2xzIC4uICIpOiAiIC4uIGVyclN0cikgZW5kKQplbmQ=")
        local prelude = "local script = ...\n"
        local fn, cerr = loadstring(prelude .. src, "@xtw-m:" .. tostring(inst.Name))
        if not fn then
            manualFail = manualFail + 1
            runErrors[#runErrors + 1] = "Function (load): " .. tostring(cerr)
        else
            local thread = coroutine.create(fn)
            local okRun, runErr = coroutine.resume(thread, inst)
            if okRun then ranManual = ranManual + 1
            else
                manualFail = manualFail + 1
                runErrors[#runErrors + 1] = "Function (resume): " .. tostring(runErr)
            end
        end
    end
end

print(string.format("[xtw] manual coroutine run: %d started, %d failed", ranManual, manualFail))
if #runErrors > 0 then
    warn("[xtw] COROUTINE RUN FAILURES:")
    for _, m in ipairs(runErrors) do warn("[xtw]   " .. m) end
end

-- ==== 7. verify ====
task.wait(0.5)
local function countTree(inst)
    local c = 1
    for _, child in ipairs(inst:GetChildren()) do c = c + countTree(child) end
    return c
end
local root = guiHost:FindFirstChild(ourRootName)
local total = root and countTree(root) or 0
local ranCount = 0
local errCount = 0
local erroredNames = {}
if root then
    for _, inst in ipairs(root:GetDescendants()) do
        if inst.ClassName == "LocalScript" or inst.ClassName == "Script" then
            local ran = false
            pcall(function() ran = inst:GetAttribute("xtw_ran") and true or false end)
            if ran then
                ranCount = ranCount + 1
                local err = nil
                pcall(function() err = inst:GetAttribute("xtw_error") end)
                if err then
                    errCount = errCount + 1
                    erroredNames[#erroredNames + 1] = { name = inst.Name, msg = tostring(err) }
                end
            end
        end
    end
end

print(string.format("[xtw] %s - %d/%d instances, %d scripts entered, %d errored", ourRootName, total, 55, ranCount, errCount))
if errCount > 0 then
    warn("[xtw] === SCRIPT RUNTIME ERRORS === ")
    for _, e in ipairs(erroredNames) do
        warn("[xtw]   [" .. e.name .. "] " .. e.msg)
    end
end
if errorConn then task.delay(30, function() pcall(function() errorConn:Disconnect() end) end) end