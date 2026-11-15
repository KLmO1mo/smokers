--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 87 | Scripts: 1 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.SmokerSV1
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["DisplayOrder"] = 999;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[SmokerSV1]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.SmokerSV1.SmokerSV1Logic
G2L["2"] = Instance.new("LocalScript", G2L["1"]);
G2L["2"]["Name"] = [[SmokerSV1Logic]];


-- StarterGui.SmokerSV1.Window
G2L["3"] = Instance.new("CanvasGroup", G2L["1"]);
G2L["3"]["Active"] = true;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3"]["Size"] = UDim2.new(0, 720, 0, 480);
G2L["3"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["3"]["Name"] = [[Window]];


-- StarterGui.SmokerSV1.Window.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);
G2L["4"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.SmokerSV1.Window.UIStroke
G2L["5"] = Instance.new("UIStroke", G2L["3"]);
G2L["5"]["Color"] = Color3.fromRGB(46, 46, 46);


-- StarterGui.SmokerSV1.Window.Sidebar
G2L["6"] = Instance.new("Frame", G2L["3"]);
G2L["6"]["Active"] = true;
G2L["6"]["Size"] = UDim2.new(0, 200, 1, -24);
G2L["6"]["Position"] = UDim2.new(0, 12, 0, 12);
G2L["6"]["Name"] = [[Sidebar]];
G2L["6"]["BackgroundTransparency"] = 1;


-- StarterGui.SmokerSV1.Window.Sidebar.Profile
G2L["7"] = Instance.new("Frame", G2L["6"]);
G2L["7"]["Active"] = true;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["7"]["Size"] = UDim2.new(1, 0, 0, 56);
G2L["7"]["Name"] = [[Profile]];


-- StarterGui.SmokerSV1.Window.Sidebar.Profile.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"]);



-- StarterGui.SmokerSV1.Window.Sidebar.Profile.Avatar
G2L["9"] = Instance.new("ImageLabel", G2L["7"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["9"]["Size"] = UDim2.new(0, 36, 0, 36);
G2L["9"]["Name"] = [[Avatar]];
G2L["9"]["Position"] = UDim2.new(0, 10, 0, 10);


-- StarterGui.SmokerSV1.Window.Sidebar.Profile.Avatar.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);
G2L["a"]["CornerRadius"] = UDim.new(0, 18);


-- StarterGui.SmokerSV1.Window.Sidebar.Profile.DisplayName
G2L["b"] = Instance.new("TextLabel", G2L["7"]);
G2L["b"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["b"]["TextSize"] = 14;
G2L["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Size"] = UDim2.new(1, -62, 0, 18);
G2L["b"]["Text"] = [[DisplayName]];
G2L["b"]["Name"] = [[DisplayName]];
G2L["b"]["Position"] = UDim2.new(0, 54, 0, 10);


-- StarterGui.SmokerSV1.Window.Sidebar.Profile.Username
G2L["c"] = Instance.new("TextLabel", G2L["7"]);
G2L["c"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["c"]["TextSize"] = 12;
G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["c"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["Size"] = UDim2.new(1, -62, 0, 14);
G2L["c"]["Text"] = [[@username]];
G2L["c"]["Name"] = [[Username]];
G2L["c"]["Position"] = UDim2.new(0, 54, 0, 29);


-- StarterGui.SmokerSV1.Window.Sidebar.Tabs
G2L["d"] = Instance.new("Frame", G2L["6"]);
G2L["d"]["Size"] = UDim2.new(1, 0, 0, 126);
G2L["d"]["Position"] = UDim2.new(0, 0, 0, 68);
G2L["d"]["Name"] = [[Tabs]];
G2L["d"]["BackgroundTransparency"] = 1;


-- StarterGui.SmokerSV1.Window.Sidebar.Tabs.UIListLayout
G2L["e"] = Instance.new("UIListLayout", G2L["d"]);
G2L["e"]["Padding"] = UDim.new(0, 6);
G2L["e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.SmokerSV1.Window.Sidebar.Tabs.MainTab
G2L["f"] = Instance.new("TextButton", G2L["d"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f"]["AutoButtonColor"] = false;
G2L["f"]["TextSize"] = 14;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["f"]["Size"] = UDim2.new(1, 0, 0, 38);
G2L["f"]["LayoutOrder"] = 1;
G2L["f"]["Name"] = [[MainTab]];
G2L["f"]["Text"] = [[Main]];


-- StarterGui.SmokerSV1.Window.Sidebar.Tabs.MainTab.UICorner
G2L["10"] = Instance.new("UICorner", G2L["f"]);



-- StarterGui.SmokerSV1.Window.Sidebar.Tabs.MainTab.UIPadding
G2L["11"] = Instance.new("UIPadding", G2L["f"]);
G2L["11"]["PaddingLeft"] = UDim.new(0, 14);


-- StarterGui.SmokerSV1.Window.Sidebar.Tabs.CustomizationTab
G2L["12"] = Instance.new("TextButton", G2L["d"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["12"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["12"]["AutoButtonColor"] = false;
G2L["12"]["TextSize"] = 14;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["12"]["Size"] = UDim2.new(1, 0, 0, 38);
G2L["12"]["LayoutOrder"] = 2;
G2L["12"]["Name"] = [[CustomizationTab]];
G2L["12"]["Text"] = [[Customization]];


-- StarterGui.SmokerSV1.Window.Sidebar.Tabs.CustomizationTab.UICorner
G2L["13"] = Instance.new("UICorner", G2L["12"]);



-- StarterGui.SmokerSV1.Window.Sidebar.Tabs.CustomizationTab.UIPadding
G2L["14"] = Instance.new("UIPadding", G2L["12"]);
G2L["14"]["PaddingLeft"] = UDim.new(0, 14);


-- StarterGui.SmokerSV1.Window.Sidebar.Tabs.CreditsTab
G2L["15"] = Instance.new("TextButton", G2L["d"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["15"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["15"]["AutoButtonColor"] = false;
G2L["15"]["TextSize"] = 14;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["15"]["Size"] = UDim2.new(1, 0, 0, 38);
G2L["15"]["LayoutOrder"] = 3;
G2L["15"]["Name"] = [[CreditsTab]];
G2L["15"]["Text"] = [[Credits]];


-- StarterGui.SmokerSV1.Window.Sidebar.Tabs.CreditsTab.UICorner
G2L["16"] = Instance.new("UICorner", G2L["15"]);



-- StarterGui.SmokerSV1.Window.Sidebar.Tabs.CreditsTab.UIPadding
G2L["17"] = Instance.new("UIPadding", G2L["15"]);
G2L["17"]["PaddingLeft"] = UDim.new(0, 14);


-- StarterGui.SmokerSV1.Window.Sidebar.UnloadButton
G2L["18"] = Instance.new("TextButton", G2L["6"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextColor3"] = Color3.fromRGB(236, 81, 81);
G2L["18"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["18"]["AutoButtonColor"] = false;
G2L["18"]["TextSize"] = 14;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["18"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["18"]["Size"] = UDim2.new(1, 0, 0, 38);
G2L["18"]["Name"] = [[UnloadButton]];
G2L["18"]["Text"] = [[Unload]];
G2L["18"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.SmokerSV1.Window.Sidebar.UnloadButton.UICorner
G2L["19"] = Instance.new("UICorner", G2L["18"]);



-- StarterGui.SmokerSV1.Window.Sidebar.UnloadButton.UIPadding
G2L["1a"] = Instance.new("UIPadding", G2L["18"]);
G2L["1a"]["PaddingLeft"] = UDim.new(0, 14);


-- StarterGui.SmokerSV1.Window.Divider
G2L["1b"] = Instance.new("Frame", G2L["3"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(46, 46, 46);
G2L["1b"]["Size"] = UDim2.new(0, 1, 1, -48);
G2L["1b"]["Position"] = UDim2.new(0, 224, 0, 24);
G2L["1b"]["Name"] = [[Divider]];


-- StarterGui.SmokerSV1.Window.Content
G2L["1c"] = Instance.new("Frame", G2L["3"]);
G2L["1c"]["Size"] = UDim2.new(1, -252, 1, -24);
G2L["1c"]["Position"] = UDim2.new(0, 240, 0, 12);
G2L["1c"]["Name"] = [[Content]];
G2L["1c"]["BackgroundTransparency"] = 1;


-- StarterGui.SmokerSV1.Window.Content.MainPage
G2L["1d"] = Instance.new("CanvasGroup", G2L["1c"]);
G2L["1d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d"]["Name"] = [[MainPage]];
G2L["1d"]["BackgroundTransparency"] = 1;


-- StarterGui.SmokerSV1.Window.Content.MainPage.UIListLayout
G2L["1e"] = Instance.new("UIListLayout", G2L["1d"]);
G2L["1e"]["Padding"] = UDim.new(0, 10);
G2L["1e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.SmokerSV1.Window.Content.MainPage.Title
G2L["1f"] = Instance.new("TextLabel", G2L["1d"]);
G2L["1f"]["TextSize"] = 26;
G2L["1f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1f"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["1f"]["Text"] = [[Main]];
G2L["1f"]["Name"] = [[Title]];


-- StarterGui.SmokerSV1.Window.Content.MainPage.EspCard
G2L["20"] = Instance.new("Frame", G2L["1d"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["20"]["Size"] = UDim2.new(1, 0, 0, 72);
G2L["20"]["Name"] = [[EspCard]];
G2L["20"]["LayoutOrder"] = 1;


-- StarterGui.SmokerSV1.Window.Content.MainPage.EspCard.UICorner
G2L["21"] = Instance.new("UICorner", G2L["20"]);
G2L["21"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.SmokerSV1.Window.Content.MainPage.EspCard.Name
G2L["22"] = Instance.new("TextLabel", G2L["20"]);
G2L["22"]["TextSize"] = 15;
G2L["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["22"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["22"]["BackgroundTransparency"] = 1;
G2L["22"]["Size"] = UDim2.new(1, -90, 0, 20);
G2L["22"]["Text"] = [[ESP Scrap]];
G2L["22"]["Name"] = [[Name]];
G2L["22"]["Position"] = UDim2.new(0, 16, 0, 12);


-- StarterGui.SmokerSV1.Window.Content.MainPage.EspCard.Description
G2L["23"] = Instance.new("TextLabel", G2L["20"]);
G2L["23"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["23"]["TextSize"] = 12;
G2L["23"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["23"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["23"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["Size"] = UDim2.new(1, -90, 0, 18);
G2L["23"]["Text"] = [[Through-walls box with tier and distance labels.]];
G2L["23"]["Name"] = [[Description]];
G2L["23"]["Position"] = UDim2.new(0, 16, 0, 38);


-- StarterGui.SmokerSV1.Window.Content.MainPage.EspCard.EspToggle
G2L["24"] = Instance.new("TextButton", G2L["20"]);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["AutoButtonColor"] = false;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["24"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["24"]["Size"] = UDim2.new(0, 46, 0, 24);
G2L["24"]["Name"] = [[EspToggle]];
G2L["24"]["Text"] = [[]];
G2L["24"]["Position"] = UDim2.new(1, -16, 0.5, 0);


-- StarterGui.SmokerSV1.Window.Content.MainPage.EspCard.EspToggle.UICorner
G2L["25"] = Instance.new("UICorner", G2L["24"]);
G2L["25"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.SmokerSV1.Window.Content.MainPage.EspCard.EspToggle.Knob
G2L["26"] = Instance.new("Frame", G2L["24"]);
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["26"]["Position"] = UDim2.new(0, 3, 0, 3);
G2L["26"]["Name"] = [[Knob]];


-- StarterGui.SmokerSV1.Window.Content.MainPage.EspCard.EspToggle.Knob.UICorner
G2L["27"] = Instance.new("UICorner", G2L["26"]);
G2L["27"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.SmokerSV1.Window.Content.MainPage.StatusCard
G2L["28"] = Instance.new("Frame", G2L["1d"]);
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["28"]["Size"] = UDim2.new(1, 0, 0, 44);
G2L["28"]["Name"] = [[StatusCard]];
G2L["28"]["LayoutOrder"] = 2;


-- StarterGui.SmokerSV1.Window.Content.MainPage.StatusCard.UICorner
G2L["29"] = Instance.new("UICorner", G2L["28"]);
G2L["29"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.SmokerSV1.Window.Content.MainPage.StatusCard.TrackedLabel
G2L["2a"] = Instance.new("TextLabel", G2L["28"]);
G2L["2a"]["TextSize"] = 13;
G2L["2a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["2a"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["2a"]["BackgroundTransparency"] = 1;
G2L["2a"]["Size"] = UDim2.new(1, -32, 1, 0);
G2L["2a"]["Text"] = [[Tracked scraps: 0]];
G2L["2a"]["Name"] = [[TrackedLabel]];
G2L["2a"]["Position"] = UDim2.new(0, 16, 0, 0);


-- StarterGui.SmokerSV1.Window.Content.MainPage.RescanButton
G2L["2b"] = Instance.new("Frame", G2L["1d"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["Size"] = UDim2.new(1, 0, 0, 42);
G2L["2b"]["Name"] = [[RescanButton]];
G2L["2b"]["LayoutOrder"] = 3;


-- StarterGui.SmokerSV1.Window.Content.MainPage.RescanButton.UICorner
G2L["2c"] = Instance.new("UICorner", G2L["2b"]);



-- StarterGui.SmokerSV1.Window.Content.MainPage.RescanButton.UIGradient
G2L["2d"] = Instance.new("UIGradient", G2L["2b"]);
G2L["2d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(246, 87, 87)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(251, 151, 81))};


-- StarterGui.SmokerSV1.Window.Content.MainPage.RescanButton.Button
G2L["2e"] = Instance.new("TextButton", G2L["2b"]);
G2L["2e"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["2e"]["AutoButtonColor"] = false;
G2L["2e"]["TextSize"] = 15;
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["Name"] = [[Button]];
G2L["2e"]["Text"] = [[Rescan Scraps]];


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage
G2L["2f"] = Instance.new("CanvasGroup", G2L["1c"]);
G2L["2f"]["Visible"] = false;
G2L["2f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2f"]["Name"] = [[CustomizationPage]];
G2L["2f"]["BackgroundTransparency"] = 1;


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.UIListLayout
G2L["30"] = Instance.new("UIListLayout", G2L["2f"]);
G2L["30"]["Padding"] = UDim.new(0, 10);
G2L["30"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.Title
G2L["31"] = Instance.new("TextLabel", G2L["2f"]);
G2L["31"]["TextSize"] = 26;
G2L["31"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["31"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["31"]["BackgroundTransparency"] = 1;
G2L["31"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["31"]["Text"] = [[Customization]];
G2L["31"]["Name"] = [[Title]];


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.SoundCard
G2L["32"] = Instance.new("Frame", G2L["2f"]);
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["32"]["Size"] = UDim2.new(1, 0, 0, 196);
G2L["32"]["Name"] = [[SoundCard]];
G2L["32"]["LayoutOrder"] = 1;


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.SoundCard.UICorner
G2L["33"] = Instance.new("UICorner", G2L["32"]);
G2L["33"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.SoundCard.SoundIdLabel
G2L["34"] = Instance.new("TextLabel", G2L["32"]);
G2L["34"]["TextSize"] = 13;
G2L["34"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["34"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["34"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["34"]["BackgroundTransparency"] = 1;
G2L["34"]["Size"] = UDim2.new(1, -32, 0, 18);
G2L["34"]["Text"] = [[Notification sound ID]];
G2L["34"]["Name"] = [[SoundIdLabel]];
G2L["34"]["Position"] = UDim2.new(0, 16, 0, 10);


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.SoundCard.SoundIdBox
G2L["35"] = Instance.new("TextBox", G2L["32"]);
G2L["35"]["Name"] = [[SoundIdBox]];
G2L["35"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["35"]["PlaceholderColor3"] = Color3.fromRGB(151, 151, 151);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["TextSize"] = 14;
G2L["35"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["35"]["ClearTextOnFocus"] = false;
G2L["35"]["PlaceholderText"] = [[Enter a Sound ID...]];
G2L["35"]["Size"] = UDim2.new(1, -32, 0, 36);
G2L["35"]["Position"] = UDim2.new(0, 16, 0, 32);
G2L["35"]["Text"] = [[]];


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.SoundCard.SoundIdBox.UICorner
G2L["36"] = Instance.new("UICorner", G2L["35"]);



-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.SoundCard.SoundIdBox.UIPadding
G2L["37"] = Instance.new("UIPadding", G2L["35"]);
G2L["37"]["PaddingRight"] = UDim.new(0, 12);
G2L["37"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.SoundCard.VolumeLabel
G2L["38"] = Instance.new("TextLabel", G2L["32"]);
G2L["38"]["TextSize"] = 13;
G2L["38"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["38"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["38"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["38"]["BackgroundTransparency"] = 1;
G2L["38"]["Size"] = UDim2.new(1, -32, 0, 18);
G2L["38"]["Text"] = [[Volume (0 - 10)]];
G2L["38"]["Name"] = [[VolumeLabel]];
G2L["38"]["Position"] = UDim2.new(0, 16, 0, 78);


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.SoundCard.VolumeBox
G2L["39"] = Instance.new("TextBox", G2L["32"]);
G2L["39"]["Name"] = [[VolumeBox]];
G2L["39"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["39"]["PlaceholderColor3"] = Color3.fromRGB(151, 151, 151);
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["TextSize"] = 14;
G2L["39"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["39"]["ClearTextOnFocus"] = false;
G2L["39"]["PlaceholderText"] = [[1]];
G2L["39"]["Size"] = UDim2.new(1, -32, 0, 36);
G2L["39"]["Position"] = UDim2.new(0, 16, 0, 100);
G2L["39"]["Text"] = [[1]];


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.SoundCard.VolumeBox.UICorner
G2L["3a"] = Instance.new("UICorner", G2L["39"]);



-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.SoundCard.VolumeBox.UIPadding
G2L["3b"] = Instance.new("UIPadding", G2L["39"]);
G2L["3b"]["PaddingRight"] = UDim.new(0, 12);
G2L["3b"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.SoundCard.SoundStatus
G2L["3c"] = Instance.new("TextLabel", G2L["32"]);
G2L["3c"]["TextSize"] = 12;
G2L["3c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["3c"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["3c"]["BackgroundTransparency"] = 1;
G2L["3c"]["Size"] = UDim2.new(1, -32, 0, 18);
G2L["3c"]["Text"] = [[Sound: none]];
G2L["3c"]["Name"] = [[SoundStatus]];
G2L["3c"]["Position"] = UDim2.new(0, 16, 0, 148);


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.TestButton
G2L["3d"] = Instance.new("Frame", G2L["2f"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["Size"] = UDim2.new(1, 0, 0, 42);
G2L["3d"]["Name"] = [[TestButton]];
G2L["3d"]["LayoutOrder"] = 2;


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.TestButton.UICorner
G2L["3e"] = Instance.new("UICorner", G2L["3d"]);



-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.TestButton.UIGradient
G2L["3f"] = Instance.new("UIGradient", G2L["3d"]);
G2L["3f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(246, 87, 87)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(251, 151, 81))};


-- StarterGui.SmokerSV1.Window.Content.CustomizationPage.TestButton.Button
G2L["40"] = Instance.new("TextButton", G2L["3d"]);
G2L["40"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["40"]["AutoButtonColor"] = false;
G2L["40"]["TextSize"] = 15;
G2L["40"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["40"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["40"]["BackgroundTransparency"] = 1;
G2L["40"]["Name"] = [[Button]];
G2L["40"]["Text"] = [[Test Notification]];


-- StarterGui.SmokerSV1.Window.Content.CreditsPage
G2L["41"] = Instance.new("CanvasGroup", G2L["1c"]);
G2L["41"]["Visible"] = false;
G2L["41"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["41"]["Name"] = [[CreditsPage]];
G2L["41"]["BackgroundTransparency"] = 1;


-- StarterGui.SmokerSV1.Window.Content.CreditsPage.UIListLayout
G2L["42"] = Instance.new("UIListLayout", G2L["41"]);
G2L["42"]["Padding"] = UDim.new(0, 10);
G2L["42"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.SmokerSV1.Window.Content.CreditsPage.Title
G2L["43"] = Instance.new("TextLabel", G2L["41"]);
G2L["43"]["TextSize"] = 26;
G2L["43"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["43"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["43"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["43"]["BackgroundTransparency"] = 1;
G2L["43"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["43"]["Text"] = [[Credits]];
G2L["43"]["Name"] = [[Title]];


-- StarterGui.SmokerSV1.Window.Content.CreditsPage.CreditsCard
G2L["44"] = Instance.new("Frame", G2L["41"]);
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["44"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["44"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["44"]["Name"] = [[CreditsCard]];
G2L["44"]["LayoutOrder"] = 1;


-- StarterGui.SmokerSV1.Window.Content.CreditsPage.CreditsCard.UICorner
G2L["45"] = Instance.new("UICorner", G2L["44"]);
G2L["45"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.SmokerSV1.Window.Content.CreditsPage.CreditsCard.UIPadding
G2L["46"] = Instance.new("UIPadding", G2L["44"]);
G2L["46"]["PaddingTop"] = UDim.new(0, 14);
G2L["46"]["PaddingRight"] = UDim.new(0, 16);
G2L["46"]["PaddingLeft"] = UDim.new(0, 16);
G2L["46"]["PaddingBottom"] = UDim.new(0, 14);


-- StarterGui.SmokerSV1.Window.Content.CreditsPage.CreditsCard.CreditsText
G2L["47"] = Instance.new("TextLabel", G2L["44"]);
G2L["47"]["TextWrapped"] = true;
G2L["47"]["TextSize"] = 14;
G2L["47"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["47"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["47"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["47"]["BackgroundTransparency"] = 1;
G2L["47"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["47"]["Text"] = [[SmokerS V1
ESP Scrap, notifications and UI]];
G2L["47"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["47"]["Name"] = [[CreditsText]];


-- StarterGui.SmokerSV1.Window.WindowScale
G2L["48"] = Instance.new("UIScale", G2L["3"]);
G2L["48"]["Name"] = [[WindowScale]];


-- StarterGui.SmokerSV1.Window.CloseButton
G2L["49"] = Instance.new("TextButton", G2L["3"]);
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["49"]["AutoButtonColor"] = false;
G2L["49"]["TextSize"] = 14;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["49"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["49"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["49"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["49"]["Name"] = [[CloseButton]];
G2L["49"]["Text"] = [[X]];
G2L["49"]["Position"] = UDim2.new(1, -14, 0, 14);


-- StarterGui.SmokerSV1.Window.CloseButton.UICorner
G2L["4a"] = Instance.new("UICorner", G2L["49"]);



-- StarterGui.SmokerSV1.Welcome
G2L["4b"] = Instance.new("CanvasGroup", G2L["1"]);
G2L["4b"]["Visible"] = false;
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["4b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4b"]["Size"] = UDim2.new(0, 380, 0, 110);
G2L["4b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["4b"]["Name"] = [[Welcome]];


-- StarterGui.SmokerSV1.Welcome.UICorner
G2L["4c"] = Instance.new("UICorner", G2L["4b"]);
G2L["4c"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.SmokerSV1.Welcome.UIStroke
G2L["4d"] = Instance.new("UIStroke", G2L["4b"]);
G2L["4d"]["Color"] = Color3.fromRGB(46, 46, 46);


-- StarterGui.SmokerSV1.Welcome.WelcomeScale
G2L["4e"] = Instance.new("UIScale", G2L["4b"]);
G2L["4e"]["Name"] = [[WelcomeScale]];


-- StarterGui.SmokerSV1.Welcome.WelcomeText
G2L["4f"] = Instance.new("TextLabel", G2L["4b"]);
G2L["4f"]["TextSize"] = 26;
G2L["4f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["4f"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["4f"]["BackgroundTransparency"] = 1;
G2L["4f"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["4f"]["Text"] = [[Welcome, User]];
G2L["4f"]["Name"] = [[WelcomeText]];
G2L["4f"]["Position"] = UDim2.new(0, 0, 0, 18);


-- StarterGui.SmokerSV1.Welcome.SubText
G2L["50"] = Instance.new("TextLabel", G2L["4b"]);
G2L["50"]["TextSize"] = 13;
G2L["50"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["50"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["50"]["BackgroundTransparency"] = 1;
G2L["50"]["Size"] = UDim2.new(1, 0, 0, 18);
G2L["50"]["Text"] = [[SmokerS V1]];
G2L["50"]["Name"] = [[SubText]];
G2L["50"]["Position"] = UDim2.new(0, 0, 0, 56);


-- StarterGui.SmokerSV1.Welcome.Underline
G2L["51"] = Instance.new("Frame", G2L["4b"]);
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["51"]["Size"] = UDim2.new(0, 180, 0, 3);
G2L["51"]["Position"] = UDim2.new(0.5, 0, 0, 86);
G2L["51"]["Name"] = [[Underline]];


-- StarterGui.SmokerSV1.Welcome.Underline.UICorner
G2L["52"] = Instance.new("UICorner", G2L["51"]);
G2L["52"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.SmokerSV1.Welcome.Underline.UIGradient
G2L["53"] = Instance.new("UIGradient", G2L["51"]);
G2L["53"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(246, 87, 87)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(251, 151, 81))};


-- StarterGui.SmokerSV1.OpenButton
G2L["54"] = Instance.new("TextButton", G2L["1"]);
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["54"]["AutoButtonColor"] = false;
G2L["54"]["TextSize"] = 14;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["54"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["54"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["54"]["Size"] = UDim2.new(0, 150, 0, 38);
G2L["54"]["Name"] = [[OpenButton]];
G2L["54"]["Text"] = [[Open SmokerS]];
G2L["54"]["Visible"] = false;
G2L["54"]["Position"] = UDim2.new(0.5, 0, 0, 12);


-- StarterGui.SmokerSV1.OpenButton.UICorner
G2L["55"] = Instance.new("UICorner", G2L["54"]);
G2L["55"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.SmokerSV1.OpenButton.UIStroke
G2L["56"] = Instance.new("UIStroke", G2L["54"]);
G2L["56"]["Thickness"] = 1.5;
G2L["56"]["Color"] = Color3.fromRGB(251, 151, 81);


-- StarterGui.SmokerSV1.OpenButton.OpenScale
G2L["57"] = Instance.new("UIScale", G2L["54"]);
G2L["57"]["Name"] = [[OpenScale]];


-- StarterGui.SmokerSV1.SmokerSV1Logic
local function C_2()
local script = G2L["2"];
	-- SmokerS V1 logic. LocalScript, child of ScreenGui "SmokerSV1".
	-- Expects in PlayerGui: SmokerSV1 (this gui), SmokerSV1Notifications, SmokerSV1ESPLabelTemplate.
	-- Assumptions (edit CONFIG if wrong): Scrap = BasePart named exactly "Scrap";
	-- tier folders = Folder instances named exactly Tier1 / Tier2 / Tier3 above the part.
	
	local CONFIG = {
		ScrapName = "Scrap",
		TierFolders = { Tier1 = 1, Tier2 = 2, Tier3 = 3 },
		ToggleKey = Enum.KeyCode.RightShift,
		SlowUpdateInterval = 0.25, -- tier label, box size and counter; distance updates every frame
		ScanYieldEvery = 2000,
		NotificationDuration = 4,
		EspColor = Color3.fromRGB(255, 170, 60),
		WelcomeHold = 1.4,         -- seconds the welcome splash stays after its line animation starts
	}
	
	local THEME = {
		Panel = Color3.fromRGB(30, 30, 30),
		Hover = Color3.fromRGB(40, 40, 40),
		Active = Color3.fromRGB(50, 50, 50),
		Text = Color3.fromRGB(240, 240, 240),
		Muted = Color3.fromRGB(150, 150, 150),
		Accent = Color3.fromRGB(64, 128, 255),
		Error = Color3.fromRGB(235, 80, 80),
	}
	
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	local SoundService = game:GetService("SoundService")
	local Workspace = game:GetService("Workspace")
	
	local LocalPlayer = Players.LocalPlayer
	local playerGui = LocalPlayer:WaitForChild("PlayerGui")
	
	local gui = script.Parent
	local window = gui:WaitForChild("Window")
	window.Visible = false -- hidden until the welcome splash finishes
	
	local windowScale = window:WaitForChild("WindowScale")
	local closeButton = window:WaitForChild("CloseButton")
	local sidebar = window:WaitForChild("Sidebar")
	local profile = sidebar:WaitForChild("Profile")
	local tabsHolder = sidebar:WaitForChild("Tabs")
	local unloadButton = sidebar:WaitForChild("UnloadButton")
	local content = window:WaitForChild("Content")
	
	local welcome = gui:WaitForChild("Welcome")
	welcome.Visible = false
	local welcomeScale = welcome:WaitForChild("WelcomeScale")
	local welcomeText = welcome:WaitForChild("WelcomeText")
	local welcomeLine = welcome:WaitForChild("Underline")
	
	local openButton = gui:WaitForChild("OpenButton")
	openButton.Visible = false
	local openScale = openButton:WaitForChild("OpenScale")
	
	local pages = {
		Main = content:WaitForChild("MainPage"),
		Customization = content:WaitForChild("CustomizationPage"),
		Credits = content:WaitForChild("CreditsPage"),
	}
	local tabButtons = {
		Main = tabsHolder:WaitForChild("MainTab"),
		Customization = tabsHolder:WaitForChild("CustomizationTab"),
		Credits = tabsHolder:WaitForChild("CreditsTab"),
	}
	
	local espCard = pages.Main:WaitForChild("EspCard")
	local espToggle = espCard:WaitForChild("EspToggle")
	local espKnob = espToggle:WaitForChild("Knob")
	local trackedLabel = pages.Main:WaitForChild("StatusCard"):WaitForChild("TrackedLabel")
	local rescanButton = pages.Main:WaitForChild("RescanButton"):WaitForChild("Button")
	
	local soundCard = pages.Customization:WaitForChild("SoundCard")
	local soundBox = soundCard:WaitForChild("SoundIdBox")
	local volumeBox = soundCard:WaitForChild("VolumeBox")
	local soundStatus = soundCard:WaitForChild("SoundStatus")
	local testButton = pages.Customization:WaitForChild("TestButton"):WaitForChild("Button")
	
	local notifGui = playerGui:WaitForChild("SmokerSV1Notifications")
	local notifHolder = notifGui:WaitForChild("Holder")
	local notifTemplate = notifHolder:WaitForChild("NotificationTemplate")
	notifTemplate.Visible = false
	local labelTemplate = playerGui:WaitForChild("SmokerSV1ESPLabelTemplate")
	
	local espRoot = Instance.new("Folder")
	espRoot.Name = "SmokerSV1ESP"
	espRoot.Parent = playerGui
	
	local alive = true
	local connections = {}
	
	local function connect(signal, fn)
		local c = signal:Connect(fn)
		connections[#connections + 1] = c
		return c
	end
	
	local function tween(inst, seconds, props, style, dir)
		local t = TweenService:Create(inst,
			TweenInfo.new(seconds, style or Enum.EasingStyle.Quad, dir or Enum.EasingDirection.Out), props)
		t:Play()
		return t
	end
	
	local BACK = Enum.EasingStyle.Back
	local IN = Enum.EasingDirection.In
	
	-- press feedback: shrink slightly while the mouse is down
	local function addPressEffect(button, target)
		local scale = Instance.new("UIScale")
		scale.Parent = target
		connect(button.MouseButton1Down, function()
			tween(scale, 0.08, { Scale = 0.97 })
		end)
		connect(button.MouseButton1Up, function()
			tween(scale, 0.18, { Scale = 1 }, BACK)
		end)
		connect(button.MouseLeave, function()
			tween(scale, 0.12, { Scale = 1 })
		end)
	end
	
	-- ------------------------------------------------------------ profile
	profile:WaitForChild("DisplayName").Text = LocalPlayer.DisplayName
	profile:WaitForChild("Username").Text = "@" .. LocalPlayer.Name
	task.spawn(function()
		local ok, img = pcall(Players.GetUserThumbnailAsync, Players, LocalPlayer.UserId,
			Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
		local avatar = profile:FindFirstChild("Avatar")
		if ok and alive and avatar then
			avatar.Image = img
		end
	end)
	
	-- ------------------------------------------------------------ dragging
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
	makeDraggable(sidebar, window)
	makeDraggable(profile, window)
	
	-- ------------------------------------------------------------ tabs (fade + slide in)
	local currentTab = nil
	
	local function showTab(name, animate)
		if name == currentTab then
			return
		end
		currentTab = name
	
		for n, page in pairs(pages) do
			if n ~= name then
				page.Visible = false
			end
		end
		for n, btn in pairs(tabButtons) do
			local active = (n == name)
			tween(btn, 0.15, {
				BackgroundColor3 = active and THEME.Active or THEME.Panel,
				TextColor3 = active and THEME.Text or THEME.Muted,
			})
		end
	
		local page = pages[name]
		if animate then
			page.GroupTransparency = 1
			page.Position = UDim2.fromOffset(0, 16)
			page.Visible = true
			tween(page, 0.3, { GroupTransparency = 0, Position = UDim2.fromOffset(0, 0) })
		else
			page.GroupTransparency = 0
			page.Position = UDim2.fromOffset(0, 0)
			page.Visible = true
		end
	end
	
	for name, btn in pairs(tabButtons) do
		connect(btn.MouseButton1Click, function()
			showTab(name, true)
		end)
		connect(btn.MouseEnter, function()
			if currentTab ~= name then
				tween(btn, 0.12, { BackgroundColor3 = THEME.Hover })
			end
		end)
		connect(btn.MouseLeave, function()
			if currentTab ~= name then
				tween(btn, 0.12, { BackgroundColor3 = THEME.Panel })
			end
		end)
	end
	showTab("Main", false)
	
	-- ------------------------------------------------------------ settings + sound
	local soundId = nil -- digits string, nil = no sound
	local volume = 1    -- 0..10
	
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
	
	-- ------------------------------------------------------------ notifications
	-- slide in from the right with a fade, countdown bar, slide out, then the stack closes the gap
	local notifCounter = 0
	local SLIDE_X = 340
	
	local function notify(title, text)
		if not alive then
			return
		end
		playNotificationSound()
	
		notifCounter = notifCounter + 1
		local wrapper = notifTemplate:Clone()
		wrapper.Name = "Notification"
		wrapper.LayoutOrder = notifCounter
		wrapper.Visible = true
		local card = wrapper:WaitForChild("Card")
		card.Position = UDim2.fromOffset(SLIDE_X, 0)
		card.GroupTransparency = 1
		card:WaitForChild("Title").Text = title
		card:WaitForChild("Body").Text = text
		local progress = card:FindFirstChild("ProgressBar")
		if progress then
			progress.Size = UDim2.new(1, -24, 0, 2)
		end
		wrapper.Parent = notifHolder
	
		tween(card, 0.45, { Position = UDim2.fromOffset(0, 0), GroupTransparency = 0 }, BACK)
		if progress then
			tween(progress, CONFIG.NotificationDuration, { Size = UDim2.new(0, 0, 0, 2) }, Enum.EasingStyle.Linear)
		end
	
		task.delay(CONFIG.NotificationDuration, function()
			if not wrapper.Parent then
				return
			end
			tween(card, 0.3, { Position = UDim2.fromOffset(SLIDE_X, 0), GroupTransparency = 1 }, Enum.EasingStyle.Quad, IN)
			task.delay(0.3, function()
				if not wrapper.Parent then
					return
				end
				tween(wrapper, 0.2, { Size = UDim2.fromOffset(wrapper.Size.X.Offset, 0) })
				task.delay(0.22, function()
					if wrapper.Parent then
						wrapper:Destroy()
					end
				end)
			end)
		end)
	end
	
	addPressEffect(testButton, testButton.Parent)
	connect(testButton.MouseButton1Click, function()
		notify("Test", "Notification sound test.")
	end)
	
	-- ------------------------------------------------------------ ESP Scrap
	local espEnabled = false
	local entries = {} -- [part] = { box, billboard, tier, dist, conn, lastDist }
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
		local box = Instance.new("BoxHandleAdornment")
		box.Name = "SmokerSBox"
		box.Adornee = part
		box.AlwaysOnTop = true
		box.ZIndex = 5
		box.Size = part.Size
		box.Color3 = CONFIG.EspColor
		box.Transparency = 0.6
		box.Visible = espEnabled
		box.Parent = espRoot
	
		local billboard = labelTemplate:Clone()
		billboard.Name = "SmokerSLabel"
		billboard.Adornee = part
		billboard.AlwaysOnTop = true
		billboard.StudsOffsetWorldSpace = Vector3.new(0, part.Size.Y * 0.5 + 1.5, 0)
		billboard.Enabled = espEnabled
		local tierLabel = billboard:FindFirstChild("TierLabel")
		local distLabel = billboard:FindFirstChild("DistanceLabel")
		tierLabel.Visible = false
		distLabel.Text = ""
		billboard.Parent = espRoot
	
		entries[part] = {
			box = box,
			billboard = billboard,
			tier = tierLabel,
			dist = distLabel,
			lastDist = nil,
			conn = part.Destroying:Connect(function()
				removeEntry(part)
			end),
		}
		entryCount = entryCount + 1
	end
	
	-- Returns how many scraps were not tracked before this scan.
	local function scanWorkspace()
		local newCount = 0
		local descendants = Workspace:GetDescendants()
		for i, inst in ipairs(descendants) do
			if not alive then
				break
			end
			if inst.Name == CONFIG.ScrapName and inst:IsA("BasePart") and not entries[inst] and inst:IsDescendantOf(Workspace) then
				createEntry(inst)
				newCount = newCount + 1
			end
			if i % CONFIG.ScanYieldEvery == 0 then
				task.wait()
			end
		end
		return newCount
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
			notify("Update:", "Scan failed. See output.")
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
	
	connect(espToggle.MouseButton1Click, function()
		local on = not espEnabled
		tween(espToggle, 0.15, { BackgroundColor3 = on and THEME.Accent or THEME.Active })
		tween(espKnob, 0.2, { Position = on and UDim2.fromOffset(25, 3) or UDim2.fromOffset(3, 3) }, BACK)
		setEsp(on)
	end)
	
	addPressEffect(rescanButton, rescanButton.Parent)
	connect(rescanButton.MouseButton1Click, function()
		task.spawn(rescan)
	end)
	
	-- Live distance: recomputed every rendered frame from your character (camera if no character),
	-- so the number follows you as you move closer or farther. Tier label, box size and the
	-- counter refresh every SlowUpdateInterval.
	local slowAccumulator = 0
	connect(RunService.Heartbeat, function(dt)
		slowAccumulator = slowAccumulator + dt
		local slowTick = slowAccumulator >= CONFIG.SlowUpdateInterval
		if slowTick then
			slowAccumulator = 0
			trackedLabel.Text = "Tracked scraps: " .. entryCount
		end
		if not espEnabled then
			return
		end
	
		local origin = getOrigin()
		for part, e in pairs(entries) do
			local show = part:IsDescendantOf(Workspace)
			if e.billboard.Enabled ~= show then
				e.box.Visible = show
				e.billboard.Enabled = show
			end
			if show then
				if origin then
					local d = (part.Position - origin).Magnitude
					if d == d and d < math.huge then
						local rounded = math.floor(d + 0.5)
						if rounded ~= e.lastDist then
							e.lastDist = rounded
							e.dist.Text = string.format("%d studs", rounded)
						end
					end
				end
				if slowTick then
					e.box.Size = part.Size
					local tier = getTier(part)
					if tier then
						e.tier.Text = "Tier - " .. tier
						e.tier.Visible = true
					else
						e.tier.Visible = false
					end
				end
			end
		end
	end)
	
	-- ------------------------------------------------------------ menu open / close
	local menuOpen = false
	local busy = true -- true during the welcome splash and while a transition runs
	local HIDDEN_Y = -60
	
	local function showOpenButton()
		openButton.Position = UDim2.new(0.5, 0, 0, HIDDEN_Y)
		openScale.Scale = 0.7
		openButton.Visible = true
		tween(openButton, 0.45, { Position = UDim2.new(0.5, 0, 0, 12) }, BACK)
		tween(openScale, 0.45, { Scale = 1 }, BACK)
	end
	
	local function hideOpenButton()
		tween(openButton, 0.25, { Position = UDim2.new(0.5, 0, 0, HIDDEN_Y) }, Enum.EasingStyle.Quad, IN)
		task.delay(0.27, function()
			if alive then
				openButton.Visible = false
			end
		end)
	end
	
	local function openMenu()
		if busy or menuOpen then
			return
		end
		busy = true
		menuOpen = true
		if openButton.Visible then
			hideOpenButton()
		end
		window.GroupTransparency = 1
		windowScale.Scale = 0.85
		window.Visible = true
		tween(window, 0.3, { GroupTransparency = 0 })
		tween(windowScale, 0.45, { Scale = 1 }, BACK)
		task.delay(0.45, function()
			busy = false
		end)
	end
	
	local function closeMenu(showOpen, onDone)
		if busy or not menuOpen then
			return
		end
		busy = true
		menuOpen = false
		tween(window, 0.25, { GroupTransparency = 1 }, Enum.EasingStyle.Quad, IN)
		tween(windowScale, 0.25, { Scale = 0.85 }, Enum.EasingStyle.Quad, IN)
		task.delay(0.27, function()
			if not alive then
				return
			end
			window.Visible = false
			if showOpen then
				showOpenButton()
			end
			busy = false
			if onDone then
				onDone()
			end
		end)
	end
	
	-- close (X) button: red on hover, press feedback
	addPressEffect(closeButton, closeButton)
	connect(closeButton.MouseEnter, function()
		tween(closeButton, 0.12, { BackgroundColor3 = THEME.Error, TextColor3 = THEME.Text })
	end)
	connect(closeButton.MouseLeave, function()
		tween(closeButton, 0.12, { BackgroundColor3 = THEME.Panel, TextColor3 = THEME.Muted })
	end)
	connect(closeButton.MouseButton1Click, function()
		closeMenu(true)
	end)
	
	-- open button: grows on hover
	connect(openButton.MouseEnter, function()
		tween(openScale, 0.12, { Scale = 1.06 })
	end)
	connect(openButton.MouseLeave, function()
		tween(openScale, 0.12, { Scale = 1 })
	end)
	connect(openButton.MouseButton1Click, function()
		openMenu()
	end)
	
	-- ------------------------------------------------------------ unload + hotkey
	local function unload()
		if not alive then
			return
		end
		alive = false
		for _, c in ipairs(connections) do
			c:Disconnect()
		end
		for part in pairs(entries) do
			removeEntry(part)
		end
		espRoot:Destroy()
		notifGui:Destroy()
		gui:Destroy()
	end
	
	connect(unloadButton.MouseEnter, function()
		tween(unloadButton, 0.12, { BackgroundColor3 = THEME.Hover })
	end)
	connect(unloadButton.MouseLeave, function()
		tween(unloadButton, 0.12, { BackgroundColor3 = THEME.Panel })
	end)
	connect(unloadButton.MouseButton1Click, function()
		if busy then
			return
		end
		if menuOpen then
			closeMenu(false, unload)
		else
			unload()
		end
	end)
	
	connect(UserInputService.InputBegan, function(input, processed)
		if processed then
			return
		end
		if input.KeyCode == CONFIG.ToggleKey then
			if menuOpen then
				closeMenu(true)
			else
				openMenu()
			end
		end
	end)
	
	-- ------------------------------------------------------------ welcome splash, then open the menu
	task.spawn(function()
		welcomeText.Text = "Welcome, " .. LocalPlayer.DisplayName
		welcomeLine.Size = UDim2.fromOffset(0, 3)
		welcome.GroupTransparency = 1
		welcomeScale.Scale = 0.8
		welcome.Visible = true
		tween(welcome, 0.4, { GroupTransparency = 0 })
		tween(welcomeScale, 0.5, { Scale = 1 }, BACK)
	
		task.wait(0.3)
		if not alive then
			return
		end
		tween(welcomeLine, 0.7, { Size = UDim2.fromOffset(180, 3) }, Enum.EasingStyle.Quart)
	
		task.wait(CONFIG.WelcomeHold)
		if not alive then
			return
		end
		tween(welcome, 0.35, { GroupTransparency = 1 }, Enum.EasingStyle.Quad, IN)
		tween(welcomeScale, 0.35, { Scale = 1.1 }, Enum.EasingStyle.Quad, IN)
	
		task.wait(0.37)
		if not alive then
			return
		end
		welcome.Visible = false
		busy = false
		openMenu()
	end)
	
end;
task.spawn(C_2);

return G2L["1"], require;