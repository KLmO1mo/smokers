--[[
    SmokerS V1
    Roblox client-side script (executor). Luau.
    Tabs: Main, Customization, Credits.
    Main: ESP Scrap (through-walls box + tier label + distance label) and Rescan.
    Customization: notification sound (asset ID + volume).

    Toggle GUI: RightShift (CONFIG.ToggleKey).

    Assumptions (not verified against any game, edit in CONFIG if wrong):
      * Scrap objects are BaseParts whose Name is exactly "Scrap".
      * Tier folders are Folder instances named exactly "Tier1", "Tier2", "Tier3",
        located anywhere above the part. The nearest matching ancestor wins.
]]

local CONFIG = {
    ScrapName = "Scrap",
    TierFolders = { Tier1 = 1, Tier2 = 2, Tier3 = 3 },
    ToggleKey = Enum.KeyCode.RightShift,
    UpdateInterval = 0.1,        -- seconds between ESP label updates
    ScanYieldEvery = 2000,       -- descendants processed before yielding one frame
    NotificationDuration = 4,    -- seconds
    EspColor = Color3.fromRGB(255, 170, 60),
    Credits = {
        "SmokerS V1",
        "ESP Scrap, notifications and UI",
    },
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local SoundService = game:GetService("SoundService")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
    warn("[SmokerS V1] LocalPlayer is not available.")
    return
end

local genv = (getgenv and getgenv()) or _G
if genv.SmokerSV1 and type(genv.SmokerSV1.Unload) == "function" then
    pcall(genv.SmokerSV1.Unload)
end

-- ---------------------------------------------------------------- theme

local THEME = {
    Window = Color3.fromRGB(20, 20, 20),
    Panel = Color3.fromRGB(30, 30, 30),
    Field = Color3.fromRGB(40, 40, 40),
    Active = Color3.fromRGB(50, 50, 50),
    Stroke = Color3.fromRGB(45, 45, 45),
    Text = Color3.fromRGB(240, 240, 240),
    Muted = Color3.fromRGB(150, 150, 150),
    Accent = Color3.fromRGB(64, 128, 255),
    GradA = Color3.fromRGB(245, 86, 86),
    GradB = Color3.fromRGB(250, 150, 80),
    Error = Color3.fromRGB(235, 80, 80),
    White = Color3.new(1, 1, 1),
}
local FONT = Enum.Font.GothamMedium
local FONT_BOLD = Enum.Font.GothamBold

-- ---------------------------------------------------------------- helpers

local alive = true
local connections = {}

local function connect(signal, fn)
    local c = signal:Connect(fn)
    connections[#connections + 1] = c
    return c
end

local function new(className, props, parent)
    local inst = Instance.new(className)
    for k, v in pairs(props) do
        inst[k] = v
    end
    if parent then
        inst.Parent = parent
    end
    return inst
end

local function corner(inst, radius)
    return new("UICorner", { CornerRadius = UDim.new(0, radius) }, inst)
end

local function tween(inst, seconds, props)
    TweenService:Create(inst, TweenInfo.new(seconds, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), props):Play()
end

local function createGuiRoot(name, displayOrder)
    local gui = Instance.new("ScreenGui")
    gui.Name = name
    gui.ResetOnSpawn = false
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    gui.IgnoreGuiInset = true
    gui.DisplayOrder = displayOrder
    if syn and syn.protect_gui then
        pcall(syn.protect_gui, gui)
    end

    local okHui, hui = pcall(function()
        return gethui and gethui() or nil
    end)
    if okHui and typeof(hui) == "Instance" then
        gui.Parent = hui
        return gui
    end

    local okCore = pcall(function()
        gui.Parent = game:GetService("CoreGui")
    end)
    if okCore and gui.Parent then
        return gui
    end

    gui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    return gui
end

local mainGui = createGuiRoot("SmokerSV1", 999)
local notifGui = createGuiRoot("SmokerSV1Notifications", 1000)

local espRoot = Instance.new("Folder")
espRoot.Name = "SmokerSV1ESP"
espRoot.Parent = mainGui.Parent

-- ---------------------------------------------------------------- settings state

local soundId = nil   -- digits string, nil = no sound
local volume = 1      -- 0..10

local function playNotificationSound()
    if not soundId then
        return
    end
    local s = Instance.new("Sound")
    s.SoundId = "rbxassetid://" .. soundId
    s.Volume = volume
    s.Parent = SoundService
    s.Ended:Connect(function()
        s:Destroy()
    end)
    task.delay(30, function()
        if s.Parent then
            s:Destroy()
        end
    end)
    s:Play()
end

-- ---------------------------------------------------------------- notifications

local notifHolder = new("Frame", {
    Name = "Holder",
    AnchorPoint = Vector2.new(1, 1),
    Position = UDim2.new(1, -16, 1, -16),
    Size = UDim2.new(0, 280, 1, -32),
    BackgroundTransparency = 1,
}, notifGui)
new("UIListLayout", {
    FillDirection = Enum.FillDirection.Vertical,
    VerticalAlignment = Enum.VerticalAlignment.Bottom,
    HorizontalAlignment = Enum.HorizontalAlignment.Left,
    SortOrder = Enum.SortOrder.LayoutOrder,
    Padding = UDim.new(0, 8),
}, notifHolder)

local notifCounter = 0

local function notify(title, text)
    if not alive then
        return
    end
    playNotificationSound()

    notifCounter = notifCounter + 1
    local wrapper = new("Frame", {
        Size = UDim2.fromOffset(280, 62),
        BackgroundTransparency = 1,
        LayoutOrder = notifCounter,
    }, notifHolder)

    local card = new("Frame", {
        Size = UDim2.fromScale(1, 1),
        Position = UDim2.fromOffset(330, 0),
        BackgroundColor3 = THEME.Panel,
        BorderSizePixel = 0,
    }, wrapper)
    corner(card, 10)
    new("UIStroke", { Color = THEME.Stroke, Thickness = 1 }, card)

    local bar = new("Frame", {
        Size = UDim2.new(0, 4, 1, -16),
        Position = UDim2.fromOffset(8, 8),
        BackgroundColor3 = THEME.White,
        BorderSizePixel = 0,
    }, card)
    corner(bar, 2)
    new("UIGradient", {
        Color = ColorSequence.new(THEME.GradA, THEME.GradB),
        Rotation = 90,
    }, bar)

    new("TextLabel", {
        Size = UDim2.new(1, -36, 0, 20),
        Position = UDim2.fromOffset(24, 10),
        BackgroundTransparency = 1,
        Text = title,
        Font = FONT_BOLD,
        TextSize = 15,
        TextColor3 = THEME.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
    }, card)
    new("TextLabel", {
        Size = UDim2.new(1, -36, 0, 18),
        Position = UDim2.fromOffset(24, 32),
        BackgroundTransparency = 1,
        Text = text,
        Font = FONT,
        TextSize = 13,
        TextColor3 = THEME.Muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextTruncate = Enum.TextTruncate.AtEnd,
    }, card)

    tween(card, 0.3, { Position = UDim2.fromOffset(0, 0) })
    task.delay(CONFIG.NotificationDuration, function()
        if wrapper.Parent and card.Parent then
            tween(card, 0.3, { Position = UDim2.fromOffset(330, 0) })
            task.delay(0.35, function()
                if wrapper.Parent then
                    wrapper:Destroy()
                end
            end)
        end
    end)
end

-- ---------------------------------------------------------------- ESP Scrap

local espEnabled = false
local entries = {}      -- [part] = { box, billboard, tier, dist, conn }
local entryCount = 0
local scanning = false

local function getTier(part)
    local cur = part.Parent
    while cur and cur ~= Workspace and cur ~= game do
        if cur:IsA("Folder") then
            local tier = CONFIG.TierFolders[cur.Name]
            if tier then
                return tier
            end
        end
        cur = cur.Parent
    end
    return nil
end

local function getOrigin()
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if hrp and hrp:IsA("BasePart") then
        return hrp.Position
    end
    local cam = Workspace.CurrentCamera
    if cam then
        return cam.CFrame.Position
    end
    return nil
end

local function removeEntry(part)
    local e = entries[part]
    if not e then
        return
    end
    entries[part] = nil
    entryCount = entryCount - 1
    if e.conn then
        e.conn:Disconnect()
    end
    e.box:Destroy()
    e.billboard:Destroy()
end

local function createEntry(part)
    local box = new("BoxHandleAdornment", {
        Name = "SmokerSBox",
        Adornee = part,
        AlwaysOnTop = true,
        ZIndex = 5,
        Size = part.Size,
        Color3 = CONFIG.EspColor,
        Transparency = 0.6,
        Visible = espEnabled,
    }, espRoot)

    local billboard = new("BillboardGui", {
        Name = "SmokerSLabel",
        Adornee = part,
        AlwaysOnTop = true,
        Size = UDim2.fromOffset(140, 34),
        StudsOffsetWorldSpace = Vector3.new(0, part.Size.Y * 0.5 + 1.5, 0),
        Enabled = espEnabled,
    }, espRoot)
    new("UIListLayout", {
        FillDirection = Enum.FillDirection.Vertical,
        VerticalAlignment = Enum.VerticalAlignment.Bottom,
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        SortOrder = Enum.SortOrder.LayoutOrder,
    }, billboard)

    local tierLabel = new("TextLabel", {
        Size = UDim2.new(1, 0, 0, 16),
        BackgroundTransparency = 1,
        Text = "",
        Visible = false,
        Font = FONT_BOLD,
        TextSize = 14,
        TextColor3 = Color3.fromRGB(255, 220, 90),
        TextStrokeTransparency = 0.3,
        LayoutOrder = 1,
    }, billboard)
    local distLabel = new("TextLabel", {
        Size = UDim2.new(1, 0, 0, 16),
        BackgroundTransparency = 1,
        Text = "",
        Font = FONT_BOLD,
        TextSize = 14,
        TextColor3 = THEME.White,
        TextStrokeTransparency = 0.3,
        LayoutOrder = 2,
    }, billboard)

    entries[part] = {
        box = box,
        billboard = billboard,
        tier = tierLabel,
        dist = distLabel,
        conn = part.Destroying:Connect(function()
            removeEntry(part)
        end),
    }
    entryCount = entryCount + 1
end

-- Returns the number of scraps that were not tracked before this scan.
local function scanWorkspace()
    local new_ = 0
    local descendants = Workspace:GetDescendants()
    for i, inst in ipairs(descendants) do
        if not alive then
            break
        end
        if inst.Name == CONFIG.ScrapName and inst:IsA("BasePart") and not entries[inst] and inst:IsDescendantOf(Workspace) then
            createEntry(inst)
            new_ = new_ + 1
        end
        if i % CONFIG.ScanYieldEvery == 0 then
            task.wait()
        end
    end
    return new_
end

local function rescan()
    if scanning or not alive then
        return
    end
    scanning = true
    local ok, result = pcall(scanWorkspace)
    scanning = false
    if not alive then
        return
    end
    if ok then
        notify("Update:", string.format("Refreshed. %d new scraps found.", result))
    else
        warn("[SmokerS V1] scan failed: " .. tostring(result))
        notify("Update:", "Scan failed. See console.")
    end
end

local function setEsp(enabled)
    espEnabled = enabled
    for part, e in pairs(entries) do
        local show = enabled and part:IsDescendantOf(Workspace)
        e.box.Visible = show
        e.billboard.Enabled = show
    end
    if enabled then
        task.spawn(rescan)
    end
end

local trackedLabel -- assigned when the Main page is built

local accumulator = 0
connect(RunService.Heartbeat, function(dt)
    accumulator = accumulator + dt
    if accumulator < CONFIG.UpdateInterval then
        return
    end
    accumulator = 0

    if trackedLabel then
        trackedLabel.Text = "Tracked scraps: " .. entryCount
    end
    if not espEnabled then
        return
    end

    local origin = getOrigin()
    for part, e in pairs(entries) do
        local show = part:IsDescendantOf(Workspace)
        e.box.Visible = show
        e.billboard.Enabled = show
        if show then
            e.box.Size = part.Size
            local tier = getTier(part)
            if tier then
                e.tier.Text = "Tier - " .. tier
                e.tier.Visible = true
            else
                e.tier.Visible = false
            end
            if origin then
                local d = (part.Position - origin).Magnitude
                if d == d and d < math.huge then
                    e.dist.Text = string.format("%d studs", math.floor(d + 0.5))
                end
            end
        end
    end
end)

-- ---------------------------------------------------------------- window

local window = new("Frame", {
    Name = "Window",
    AnchorPoint = Vector2.new(0.5, 0.5),
    Position = UDim2.fromScale(0.5, 0.5),
    Size = UDim2.fromOffset(720, 480),
    BackgroundColor3 = THEME.Window,
    BorderSizePixel = 0,
    Active = true,
}, mainGui)
corner(window, 14)
new("UIStroke", { Color = THEME.Stroke, Thickness = 1 }, window)

local function makeDraggable(handle, target)
    local dragging, dragStart, startPos = false, nil, nil
    connect(handle.InputBegan, function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = target.Position
        end
    end)
    connect(UserInputService.InputChanged, function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local d = input.Position - dragStart
            target.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X, startPos.Y.Scale, startPos.Y.Offset + d.Y)
        end
    end)
    connect(UserInputService.InputEnded, function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
end

-- sidebar
local sidebar = new("Frame", {
    Name = "Sidebar",
    Position = UDim2.fromOffset(12, 12),
    Size = UDim2.new(0, 200, 1, -24),
    BackgroundTransparency = 1,
    Active = true,
}, window)
makeDraggable(sidebar, window)

local profile = new("Frame", {
    Size = UDim2.new(1, 0, 0, 56),
    BackgroundColor3 = THEME.Panel,
    BorderSizePixel = 0,
    Active = true,
}, sidebar)
corner(profile, 8)
makeDraggable(profile, window)

local avatar = new("ImageLabel", {
    Size = UDim2.fromOffset(36, 36),
    Position = UDim2.fromOffset(10, 10),
    BackgroundColor3 = THEME.Field,
    BorderSizePixel = 0,
    Image = "",
}, profile)
corner(avatar, 18)
new("TextLabel", {
    Size = UDim2.new(1, -62, 0, 18),
    Position = UDim2.fromOffset(54, 10),
    BackgroundTransparency = 1,
    Text = LocalPlayer.DisplayName,
    Font = FONT_BOLD,
    TextSize = 14,
    TextColor3 = THEME.Text,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextTruncate = Enum.TextTruncate.AtEnd,
}, profile)
new("TextLabel", {
    Size = UDim2.new(1, -62, 0, 14),
    Position = UDim2.fromOffset(54, 29),
    BackgroundTransparency = 1,
    Text = "@" .. LocalPlayer.Name,
    Font = FONT,
    TextSize = 12,
    TextColor3 = THEME.Muted,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextTruncate = Enum.TextTruncate.AtEnd,
}, profile)

task.spawn(function()
    local ok, content = pcall(Players.GetUserThumbnailAsync, Players, LocalPlayer.UserId,
        Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
    if ok and alive and avatar.Parent then
        avatar.Image = content
    end
end)

local tabsHolder = new("Frame", {
    Position = UDim2.fromOffset(0, 68),
    Size = UDim2.new(1, 0, 0, 3 * 38 + 2 * 6),
    BackgroundTransparency = 1,
}, sidebar)
new("UIListLayout", {
    SortOrder = Enum.SortOrder.LayoutOrder,
    Padding = UDim.new(0, 6),
}, tabsHolder)

-- divider
new("Frame", {
    Position = UDim2.new(0, 224, 0, 24),
    Size = UDim2.new(0, 1, 1, -48),
    BackgroundColor3 = THEME.Stroke,
    BorderSizePixel = 0,
}, window)

-- content
local content = new("Frame", {
    Name = "Content",
    Position = UDim2.fromOffset(240, 12),
    Size = UDim2.new(1, -252, 1, -24),
    BackgroundTransparency = 1,
}, window)

local pages = {}
local tabButtons = {}

local function showTab(name)
    for n, page in pairs(pages) do
        page.Visible = (n == name)
    end
    for n, btn in pairs(tabButtons) do
        local active = (n == name)
        btn.BackgroundColor3 = active and THEME.Active or THEME.Panel
        btn.TextColor3 = active and THEME.Text or THEME.Muted
    end
end

local function createPage(name, title, order)
    local page = new("Frame", {
        Name = name,
        Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1,
        Visible = false,
    }, content)
    new("UIListLayout", {
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 10),
    }, page)
    new("TextLabel", {
        Size = UDim2.new(1, 0, 0, 40),
        BackgroundTransparency = 1,
        Text = title,
        Font = FONT_BOLD,
        TextSize = 26,
        TextColor3 = THEME.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = 0,
    }, page)
    pages[name] = page

    local btn = new("TextButton", {
        Size = UDim2.new(1, 0, 0, 38),
        BackgroundColor3 = THEME.Panel,
        BorderSizePixel = 0,
        AutoButtonColor = false,
        Text = name,
        Font = FONT,
        TextSize = 14,
        TextColor3 = THEME.Muted,
        TextXAlignment = Enum.TextXAlignment.Left,
        LayoutOrder = order,
    }, tabsHolder)
    corner(btn, 8)
    new("UIPadding", { PaddingLeft = UDim.new(0, 14) }, btn)
    connect(btn.MouseButton1Click, function()
        showTab(name)
    end)
    tabButtons[name] = btn
    return page
end

local function createCard(parent, height, order)
    local card = new("Frame", {
        Size = UDim2.new(1, 0, 0, height),
        BackgroundColor3 = THEME.Panel,
        BorderSizePixel = 0,
        LayoutOrder = order,
    }, parent)
    corner(card, 10)
    return card
end

-- gradient button: the gradient lives on a background frame so it does not tint the text
local function createActionButton(parent, text, order, onClick)
    local holder = new("Frame", {
        Size = UDim2.new(1, 0, 0, 42),
        BackgroundColor3 = THEME.White,
        BorderSizePixel = 0,
        LayoutOrder = order,
    }, parent)
    corner(holder, 8)
    new("UIGradient", { Color = ColorSequence.new(THEME.GradA, THEME.GradB) }, holder)
    local btn = new("TextButton", {
        Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1,
        Text = text,
        Font = FONT_BOLD,
        TextSize = 15,
        TextColor3 = THEME.Text,
        AutoButtonColor = false,
    }, holder)
    connect(btn.MouseButton1Click, onClick)
    return holder
end

local function createField(parent, placeholder, y, text)
    local box = new("TextBox", {
        Size = UDim2.new(1, -32, 0, 36),
        Position = UDim2.fromOffset(16, y),
        BackgroundColor3 = THEME.Field,
        BorderSizePixel = 0,
        Text = text or "",
        PlaceholderText = placeholder,
        PlaceholderColor3 = THEME.Muted,
        TextColor3 = THEME.Text,
        Font = FONT,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        ClearTextOnFocus = false,
    }, parent)
    corner(box, 8)
    new("UIPadding", { PaddingLeft = UDim.new(0, 12), PaddingRight = UDim.new(0, 12) }, box)
    return box
end

local function createToggle(parent, initial, onChanged)
    local btn = new("TextButton", {
        Size = UDim2.fromOffset(46, 24),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -16, 0.5, 0),
        BackgroundColor3 = initial and THEME.Accent or THEME.Active,
        BorderSizePixel = 0,
        AutoButtonColor = false,
        Text = "",
    }, parent)
    corner(btn, 12)
    local knob = new("Frame", {
        Size = UDim2.fromOffset(18, 18),
        Position = initial and UDim2.fromOffset(25, 3) or UDim2.fromOffset(3, 3),
        BackgroundColor3 = THEME.White,
        BorderSizePixel = 0,
    }, btn)
    corner(knob, 9)
    local state = initial
    connect(btn.MouseButton1Click, function()
        state = not state
        tween(btn, 0.15, { BackgroundColor3 = state and THEME.Accent or THEME.Active })
        tween(knob, 0.15, { Position = state and UDim2.fromOffset(25, 3) or UDim2.fromOffset(3, 3) })
        onChanged(state)
    end)
end

-- ---------------------------------------------------------------- Main page

local mainPage = createPage("Main", "Main", 1)

local espCard = createCard(mainPage, 72, 1)
new("TextLabel", {
    Size = UDim2.new(1, -90, 0, 20),
    Position = UDim2.fromOffset(16, 12),
    BackgroundTransparency = 1,
    Text = "ESP Scrap",
    Font = FONT_BOLD,
    TextSize = 15,
    TextColor3 = THEME.Text,
    TextXAlignment = Enum.TextXAlignment.Left,
}, espCard)
new("TextLabel", {
    Size = UDim2.new(1, -90, 0, 18),
    Position = UDim2.fromOffset(16, 38),
    BackgroundTransparency = 1,
    Text = "Through-walls box with tier and distance labels.",
    Font = FONT,
    TextSize = 12,
    TextColor3 = THEME.Muted,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextTruncate = Enum.TextTruncate.AtEnd,
}, espCard)
createToggle(espCard, false, setEsp)

local statusCard = createCard(mainPage, 44, 2)
trackedLabel = new("TextLabel", {
    Size = UDim2.new(1, -32, 1, 0),
    Position = UDim2.fromOffset(16, 0),
    BackgroundTransparency = 1,
    Text = "Tracked scraps: 0",
    Font = FONT,
    TextSize = 13,
    TextColor3 = THEME.Muted,
    TextXAlignment = Enum.TextXAlignment.Left,
}, statusCard)

createActionButton(mainPage, "Rescan Scraps", 3, function()
    task.spawn(rescan)
end)

-- ---------------------------------------------------------------- Customization page

local customPage = createPage("Customization", "Customization", 2)

local soundCard = createCard(customPage, 196, 1)
new("TextLabel", {
    Size = UDim2.new(1, -32, 0, 18),
    Position = UDim2.fromOffset(16, 10),
    BackgroundTransparency = 1,
    Text = "Notification sound ID",
    Font = FONT_BOLD,
    TextSize = 13,
    TextColor3 = THEME.Text,
    TextXAlignment = Enum.TextXAlignment.Left,
}, soundCard)
local soundBox = createField(soundCard, "Enter a Sound ID...", 32, "")
new("TextLabel", {
    Size = UDim2.new(1, -32, 0, 18),
    Position = UDim2.fromOffset(16, 78),
    BackgroundTransparency = 1,
    Text = "Volume (0 - 10)",
    Font = FONT_BOLD,
    TextSize = 13,
    TextColor3 = THEME.Text,
    TextXAlignment = Enum.TextXAlignment.Left,
}, soundCard)
local volumeBox = createField(soundCard, "1", 100, tostring(volume))
local soundStatus = new("TextLabel", {
    Size = UDim2.new(1, -32, 0, 18),
    Position = UDim2.fromOffset(16, 148),
    BackgroundTransparency = 1,
    Text = "Sound: none",
    Font = FONT,
    TextSize = 12,
    TextColor3 = THEME.Muted,
    TextXAlignment = Enum.TextXAlignment.Left,
}, soundCard)

local function setSoundStatus(text, isError)
    soundStatus.Text = text
    soundStatus.TextColor3 = isError and THEME.Error or THEME.Muted
end

local function describeSound()
    if soundId then
        return string.format("Sound: rbxassetid://%s   Volume: %s", soundId, tostring(volume))
    end
    return "Sound: none"
end

connect(soundBox.FocusLost, function()
    local text = soundBox.Text
    if text:match("^%s*$") then
        soundId = nil
        soundBox.Text = ""
        setSoundStatus(describeSound(), false)
        return
    end
    local digits = text:match("^%s*rbxassetid://(%d+)%s*$") or text:match("^%s*(%d+)%s*$")
    if digits and #digits <= 19 then
        soundId = digits
        soundBox.Text = digits
        setSoundStatus(describeSound(), false)
    else
        soundBox.Text = soundId or ""
        setSoundStatus("Invalid Sound ID. Use digits only.", true)
    end
end)

connect(volumeBox.FocusLost, function()
    local n = tonumber(volumeBox.Text)
    if n and n == n and n >= 0 and n <= 10 then
        volume = n
        volumeBox.Text = tostring(n)
        setSoundStatus(describeSound(), false)
    else
        volumeBox.Text = tostring(volume)
        setSoundStatus("Invalid volume. Use a number from 0 to 10.", true)
    end
end)

createActionButton(customPage, "Test Notification", 2, function()
    notify("Test", "Notification sound test.")
end)

-- ---------------------------------------------------------------- Credits page

local creditsPage = createPage("Credits", "Credits", 3)
local creditsCard = new("Frame", {
    Size = UDim2.new(1, 0, 0, 0),
    AutomaticSize = Enum.AutomaticSize.Y,
    BackgroundColor3 = THEME.Panel,
    BorderSizePixel = 0,
    LayoutOrder = 1,
}, creditsPage)
corner(creditsCard, 10)
new("UIPadding", {
    PaddingLeft = UDim.new(0, 16),
    PaddingRight = UDim.new(0, 16),
    PaddingTop = UDim.new(0, 14),
    PaddingBottom = UDim.new(0, 14),
}, creditsCard)
new("TextLabel", {
    Size = UDim2.new(1, 0, 0, 0),
    AutomaticSize = Enum.AutomaticSize.Y,
    BackgroundTransparency = 1,
    Text = table.concat(CONFIG.Credits, "\n"),
    Font = FONT,
    TextSize = 14,
    TextColor3 = THEME.Text,
    TextWrapped = true,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Top,
}, creditsCard)

-- ---------------------------------------------------------------- unload + hotkey

local function unload()
    if not alive then
        return
    end
    alive = false
    for _, c in ipairs(connections) do
        pcall(function()
            c:Disconnect()
        end)
    end
    for part in pairs(entries) do
        removeEntry(part)
    end
    pcall(function() espRoot:Destroy() end)
    pcall(function() mainGui:Destroy() end)
    pcall(function() notifGui:Destroy() end)
    if genv.SmokerSV1 and genv.SmokerSV1.Unload == unload then
        genv.SmokerSV1 = nil
    end
end

local unloadBtn = new("TextButton", {
    AnchorPoint = Vector2.new(0, 1),
    Position = UDim2.fromScale(0, 1),
    Size = UDim2.new(1, 0, 0, 38),
    BackgroundColor3 = THEME.Panel,
    BorderSizePixel = 0,
    AutoButtonColor = false,
    Text = "Unload",
    Font = FONT,
    TextSize = 14,
    TextColor3 = THEME.Error,
    TextXAlignment = Enum.TextXAlignment.Left,
}, sidebar)
corner(unloadBtn, 8)
new("UIPadding", { PaddingLeft = UDim.new(0, 14) }, unloadBtn)
connect(unloadBtn.MouseButton1Click, unload)

connect(UserInputService.InputBegan, function(input, processed)
    if processed then
        return
    end
    if input.KeyCode == CONFIG.ToggleKey then
        window.Visible = not window.Visible
    end
end)

genv.SmokerSV1 = { Unload = unload }

showTab("Main")
