local lib = {}

function lib:CreateInterface(name, subinfo, linkpromo, alignment, theme)
	
	-- start init setup
	--print('simple lib: alignment -> ' .. tostring(alignment))
	print(name .. " loaded." .. "discord: " .. linkpromo)

	local corehandler = Instance.new("ScreenGui")
	corehandler.Enabled = false
	local lib_holder = Instance.new("Frame")
	local topbar = Instance.new("Frame")
	local separation = Instance.new("Frame")
	local UICorner_libholder = Instance.new("UICorner")
	local interface_name = Instance.new("TextLabel")
	local interface_info = Instance.new("TextLabel")
	local UICorner_topbar = Instance.new("UICorner")
	local padding_holder = Instance.new("Frame")
	local secondpadding = Instance.new("Frame") 
	
	-- color themes
	-- color stuff

	local themes = {
		-- Original Themes
		halloween = { background = Color3.fromRGB(167, 94, 45) },
		ocean =     { background = Color3.fromRGB(36, 132, 141) },
		green =     { background = Color3.fromRGB(84, 147, 55) },
		red =       { background = Color3.fromRGB(89, 14, 14) },
		default =   { background = Color3.fromRGB(72, 72, 72) },
		ink =       { background = Color3.fromRGB(144, 58, 165) },
	
		-- New Themes
		ice =         { background = Color3.fromRGB(180, 225, 255) },
		night =       { background = Color3.fromRGB(24, 24, 24) },
		sky =         { background = Color3.fromRGB(111, 197, 255) },
		fog =         { background = Color3.fromRGB(169, 169, 169) },
		lemon =       { background = Color3.fromRGB(255, 245, 157) },
		neon =        { background = Color3.fromRGB(199, 0, 255) },
		vaporwave =   { background = Color3.fromRGB(255, 105, 180) },
		forest =      { background = Color3.fromRGB(44, 89, 66) },
		sunset =      { background = Color3.fromRGB(255, 94, 77) },
		fire =        { background = Color3.fromRGB(255, 87, 34) },
		stone =       { background = Color3.fromRGB(120, 120, 120) },
		steel =       { background = Color3.fromRGB(85, 98, 112) },
		cyber =       { background = Color3.fromRGB(0, 255, 170) },
		royal =       { background = Color3.fromRGB(74, 0, 115) },
		icefire =     { background = Color3.fromRGB(78, 205, 196) },
		gold =        { background = Color3.fromRGB(255, 215, 0) },
		sludge =      { background = Color3.fromRGB(70, 63, 50) },
		dream =       { background = Color3.fromRGB(174, 144, 255) },
		blush =       { background = Color3.fromRGB(255, 192, 203) },
	}

	local currentTheme = themes[theme] or themes.default

	--lib_holder.BackgroundColor3 = currentTheme.background
	--topbar.BackgroundColor3 = currentTheme.background
	--separation.BackgroundColor3 = currentTheme.background
	
	-- color themes
	
	local minimize_btn = Instance.new("ImageButton")
	local UICorner = Instance.new("UICorner")
	local margin = 10

	-- test

	local positions = {
		["top left"] = {anchor = Vector2.new(0, 0), pos = UDim2.new(0, margin, 0, margin)},
		["top right"] = {anchor = Vector2.new(1, 0), pos = UDim2.new(1, -margin, 0, margin)},
		["bottom left"] = {anchor = Vector2.new(0, 1), pos = UDim2.new(0, margin, 1, -margin)},
		["bottom right"] = {anchor = Vector2.new(1, 1), pos = UDim2.new(1, -margin, 1, -margin)},
		["center"] = {anchor = Vector2.new(0.5, 0.5), pos = UDim2.new(0.5, 0, 0.5, 0)},
		["middle"] = {anchor = Vector2.new(0.5, 0.5), pos = UDim2.new(0.5, 0, 0.5, 0)},
		["mid left"] = {anchor = Vector2.new(0, 0.5), pos = UDim2.new(0, margin, 0.5, 0)},
		["middle left"] = {anchor = Vector2.new(0, 0.5), pos = UDim2.new(0, margin, 0.5, 0)},
		["mid right"] = {anchor = Vector2.new(1, 0.5), pos = UDim2.new(1, -margin, 0.5, 0)},
		["middle right"] = {anchor = Vector2.new(1, 0.5), pos = UDim2.new(1, -margin, 0.5, 0)},
	}

	-- Normalize input (lowercase)
	local key = string.lower(alignment or "center")
	local config = positions[key] or positions["center"]

	minimize_btn.Name = "minimize_btn"
	minimize_btn.Parent = topbar
	minimize_btn.BackgroundColor3 = Color3.new(0.917647, 0.894118, 0.184314)
	minimize_btn.BorderColor3 = Color3.new(0, 0, 0)
	minimize_btn.BorderSizePixel = 0
	minimize_btn.Position = UDim2.new(0.75, 0, 0.186440676, 0)
	minimize_btn.Size = UDim2.new(0, 18, 0, 18)
	minimize_btn.AutoButtonColor = false
	
	local TweenService = game:GetService("TweenService")
	
	minimize_btn.MouseEnter:Connect(function()
		TweenService:Create(minimize_btn, TweenInfo.new(0.15), {BackgroundTransparency = 0.5}):Play()
	end)

	minimize_btn.MouseLeave:Connect(function()
		TweenService:Create(minimize_btn, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play()
	end)

	UICorner.Parent = minimize_btn
	UICorner.CornerRadius = UDim.new(0, 5)
	
	local close_btn = Instance.new("ImageButton")
	local UICorner = Instance.new("UICorner")
	
	close_btn.MouseEnter:Connect(function()
		TweenService:Create(close_btn, TweenInfo.new(0.15), {BackgroundTransparency = 0.5}):Play()
	end)

	close_btn.MouseLeave:Connect(function()
		TweenService:Create(close_btn, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play()
	end)

	-- Properties

	close_btn.Name = "close_btn"
	close_btn.Parent = topbar
	close_btn.BackgroundColor3 = Color3.new(0.741176, 0.141176, 0.141176)
	close_btn.BorderColor3 = Color3.new(0, 0, 0)
	close_btn.BorderSizePixel = 0
	close_btn.Position = UDim2.new(0.90, 0, 0.186440676, 0)
	close_btn.Size = UDim2.new(0, 18, 0, 18)
	close_btn.AutoButtonColor = false

	close_btn.MouseButton1Click:Connect(function()
		corehandler:Destroy()
	end)
	
	local UserInputService = game:GetService("UserInputService")

	-- Store toggle state
	corehandler.Enabled = false

	-- Minimize Button (manual click)
	minimize_btn.MouseButton1Click:Connect(function()

		corehandler.Enabled = not corehandler.Enabled
	end)

	-- Right Control key toggling
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == Enum.KeyCode.RightControl then
	
			corehandler.Enabled = not corehandler.Enabled
		end
	end)

	UICorner.Parent = close_btn
	UICorner.CornerRadius = UDim.new(0, 5)
	
	corehandler.Name = "corehandler"
	corehandler.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	corehandler.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	corehandler.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	corehandler.IgnoreGuiInset = false
	corehandler.ResetOnSpawn = false

	lib_holder.Name = "lib_holder"
	lib_holder.Parent = corehandler
	lib_holder.BackgroundColor3 = Color3.new(0.0823529, 0.0823529, 0.0823529)
	lib_holder.BorderColor3 = Color3.new(0, 0, 0)
	lib_holder.BorderSizePixel = 0
	lib_holder.ClipsDescendants = true
	lib_holder.Size = UDim2.new(0, 535, 0, 354)
	lib_holder.AnchorPoint = config.anchor
	lib_holder.Position = config.pos

	topbar.Name = "topbar"
	topbar.Parent = lib_holder
	topbar.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
	topbar.BorderColor3 = Color3.new(0, 0, 0)
	topbar.BorderSizePixel = 0
	topbar.Size = UDim2.new(0, 535, 0, 59)

	   local RunService = game:GetService("RunService")

-- Assume corehandler already exists and is a ScreenGui or Frame
-- And lib_holder already exists as a child of corehandler

-- Create Shadow ImageLabel
    local Shadow = Instance.new("ImageLabel")
    Shadow.Name = "Shadow"
    Shadow.Parent = corehandler
    Shadow.BackgroundColor3 = Color3.new(1, 1, 1)
    Shadow.BackgroundTransparency = 1
    Shadow.BorderSizePixel = 0
    Shadow.ZIndex = lib_holder.ZIndex - 1 -- behind lib_holder
    Shadow.Image = "rbxassetid://186491278" -- your shadow image
    Shadow.ImageTransparency = 0.19
    Shadow.ScaleType = Enum.ScaleType.Slice
    Shadow.SliceCenter = Rect.new(48, 48, 48, 48)
    
   
        local RunService = game:GetService("RunService")

	local paddingLeft = 30
	local paddingTop = 30
	local paddingRight = 20
	local paddingBottom = 22
	local dropOffsetPx = Vector2.new(4, 4)
	
	local function updateShadow()
		local absPos = lib_holder.AbsolutePosition
		local absSize = lib_holder.AbsoluteSize
	
		local totalWidth = absSize.X + paddingLeft + paddingRight
		local totalHeight = absSize.Y + paddingTop + paddingBottom
	
		Shadow.Size = UDim2.new(0, totalWidth, 0, totalHeight)
		Shadow.Position = UDim2.new(0, absPos.X - paddingLeft + dropOffsetPx.X, 0, absPos.Y - paddingTop + dropOffsetPx.Y)
	end
	
	-- Initial update
	updateShadow()
	
	-- Update shadow when lib_holder moves or resizes
	lib_holder:GetPropertyChangedSignal("AbsolutePosition"):Connect(updateShadow)
	lib_holder:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateShadow)


	separation.Name = "separation"
	separation.Parent = topbar
	separation.BackgroundColor3 = currentTheme.background or Color3.new(0.654902, 0.368627, 0.176471)
	separation.BorderColor3 = Color3.new(0, 0, 0)
	separation.BorderSizePixel = 0
	separation.Position = UDim2.new(0, 0, 1, 0)
	separation.Size = UDim2.new(0, 535, 0, 2)

	UICorner_libholder.Parent = lib_holder
	UICorner_libholder.CornerRadius = UDim.new(0, 10)
	UICorner_topbar.Parent = topbar
	UICorner_topbar.CornerRadius = UDim.new(0,9)

	interface_name.Name = "interface_name"
	interface_name.Parent = topbar
	interface_name.BackgroundColor3 = Color3.new(1, 1, 1)
	interface_name.BackgroundTransparency = 1
	interface_name.BorderColor3 = Color3.new(1, 1, 1)
	interface_name.BorderSizePixel = 0
	interface_name.Position = UDim2.new(0.0280373823, 0, 0.26518482, 0)
	interface_name.Size = UDim2.new(0, 107, 0, 9)
	interface_name.Font = Enum.Font.GothamBold
	interface_name.Text = name or "null_interface"
	interface_name.TextColor3 = Color3.new(1, 1, 1)
	interface_name.TextSize = 20
	interface_name.TextXAlignment = Enum.TextXAlignment.Left

	interface_info.Name = "interface_info"
	interface_info.Parent = topbar
	interface_info.BackgroundColor3 = Color3.new(1, 1, 1)
	interface_info.BackgroundTransparency = 1
	interface_info.BorderColor3 = Color3.new(1, 1, 1)
	interface_info.BorderSizePixel = 0
	interface_info.Position = UDim2.new(0.0262326822, 0, 0.542372882, 0)
	interface_info.Size = UDim2.new(0, 245, 0, 17)
	interface_info.Font = Enum.Font.Gotham
	interface_info.Text = subinfo or "lua script w/ various features"
	interface_info.TextColor3 = Color3.new(1, 1, 1)
	interface_info.TextSize = 14
	interface_info.TextXAlignment = Enum.TextXAlignment.Left

	padding_holder.Name = "padding_holder"
	padding_holder.Parent = topbar
	padding_holder.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
	padding_holder.BorderColor3 = Color3.new(0, 0, 0)
	padding_holder.BorderSizePixel = 0
	padding_holder.Position = UDim2.new(0, 0, 1.03389835, 0)
	padding_holder.Size = UDim2.new(0, 137, 0, 7)
	
	secondpadding.Name = "secondpadding"
	secondpadding.Parent = topbar
	secondpadding.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
	secondpadding.BorderColor3 = Color3.new(0, 0, 0)
	secondpadding.BorderSizePixel = 0
	secondpadding.Position = UDim2.new(0, 0, 0.830508471, 0)
	secondpadding.Size = UDim2.new(0, 535, 0, 10)
	
	--DragScript

	local UIS = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")

	local topBar = topbar -- the draggable top bar
	local mainFrame = topBar.Parent -- the big frame to move

	local dragToggle = false
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local newPosition = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y
		)
		TweenService:Create(mainFrame, TweenInfo.new(dragSpeed), {Position = newPosition}):Play()
	end

	topBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragToggle = true
			dragStart = input.Position
			startPos = mainFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and dragToggle then
			updateInput(input)
		end
	end)
	
	--bar
	
	local extraframe = Instance.new("Frame")
	local promotion = Instance.new("TextLabel")

	-- Properties

	extraframe.Name = "extraframe"
	extraframe.Parent = topbar
	extraframe.BackgroundColor3 = currentTheme.background or Color3.new(0.654902, 0.368627, 0.176471)
	extraframe.BorderColor3 = Color3.new(0, 0, 0)
	extraframe.BorderSizePixel = 0
	extraframe.Position = UDim2.new(0, 0, 5.68105286, 0)
	extraframe.Size = UDim2.new(0, 535, 0, 19)

	promotion.Name = "promotion"
	promotion.Parent = extraframe
	promotion.BackgroundColor3 = Color3.new(1, 1, 1)
	promotion.BackgroundTransparency = 1
	promotion.BorderColor3 = Color3.new(0, 0, 0)
	promotion.BorderSizePixel = 0
	promotion.Position = UDim2.new(0.902249515, 0, 0.219707295, 0)
	promotion.Size = UDim2.new(0, 47, 0, 10)
	promotion.Font = Enum.Font.GothamMedium
	promotion.Text = linkpromo or "https://linkheremaybe.org"
	promotion.TextColor3 = Color3.new(1, 1, 1)
	promotion.TextSize = 14
	promotion.TextXAlignment = Enum.TextXAlignment.Right
	
	--bar

	local next_padding = Instance.new("Frame")
	local tabholders = Instance.new("ScrollingFrame")
	local tab_page = Instance.new("ImageButton")
	local tab_name = Instance.new("TextLabel")
	local image = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local UIListLayout = Instance.new("UIListLayout")

	-- Properties

	next_padding.Name = "next_padding"
	next_padding.Parent = topbar
	next_padding.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
	next_padding.BorderColor3 = Color3.new(0, 0, 0)
	next_padding.BorderSizePixel = 0
	next_padding.Position = UDim2.new(0, 0, 1.03389835, 0)
	next_padding.Size = UDim2.new(0, 137, 0, 23)

	tabholders.Name = "tabholders"
	tabholders.Parent = next_padding
	tabholders.Active = true
	tabholders.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
	tabholders.BorderColor3 = Color3.new(0, 0, 0)
	tabholders.BorderSizePixel = 0
	tabholders.Position = UDim2.new(0, 0, 0.304347813, 0)
	tabholders.Size = UDim2.new(0, 137, 0, 266)
	tabholders.ScrollBarThickness = 0
	tabholders.CanvasSize = UDim2.new(0, 0, 0, 0)
	
	-- Create UIListLayout under tabholders
	local listLayout = Instance.new("UIListLayout")
	listLayout.SortOrder = Enum.SortOrder.LayoutOrder
	listLayout.Padding = UDim.new(0, 5)
	listLayout.Parent = tabholders
	
	-- Function to update canvas size
	local function updateCanvasSize()
		tabholders.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y + 10)
	end
	
	-- Connect resize/update signals
	listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize)
	tabholders:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateCanvasSize)
	
	-- Initial update
	updateCanvasSize()



	UICorner.Parent = tabholders
	UICorner.CornerRadius = UDim.new(0, 0)

	UIListLayout.Parent = tabholders
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 6)


	--DragScript
	
	-- end of init setup
	local createtab = {}
	local tabButtons = {}
	local currentTabButton = nil
	local tabContents = {}
	
	local TweenService = game:GetService("TweenService")

	function createtab:CreateTab(tabname, tabdescript, imgtype, isDefault)
		-- Sidebar button
		local tab_page = Instance.new("ImageButton")
		tab_page.Name = tabname
		tab_page.Size = UDim2.new(0, 137, 0, 41)
		tab_page.BackgroundColor3 = Color3.fromRGB(30,30,30) -- unselected base color
		tab_page.BackgroundTransparency = 0.3 -- slightly transparent by default for unselected
		tab_page.BorderColor3 = Color3.new(0, 0, 0)
		tab_page.BorderSizePixel = 0
		tab_page.AutoButtonColor = false
		tab_page.Parent = tabholders
		tab_page:SetAttribute("PageName", tabname)

		local tab_name = Instance.new("TextLabel")
		tab_name.Name = "tab_name"
		tab_name.Parent = tab_page
		tab_name.BackgroundTransparency = 1
		tab_name.Position = UDim2.new(0.248, 0, 0.195, 0)
		tab_name.Size = UDim2.new(0, 69, 0, 24)
		tab_name.Font = Enum.Font.GothamMedium
		tab_name.Text = tabname
		tab_name.TextColor3 = Color3.fromRGB(180, 180, 180) -- unselected text color (gray)
		tab_name.TextSize = 14
		tab_name.TextXAlignment = Enum.TextXAlignment.Left
		tab_name.TextTransparency = 0.3 -- slightly faded

		local imagetypes = {
			info = "rbxassetid://86067724745223",
			player = "rbxassetid://126189868294121",
			op = "rbxassetid://114756075648794",
			home = "rbxassetid://85258553863764",
			default = "rbxassetid://84919699164053",
			npc = "rbxassetid://118094616090629",
			misc = "rbxassetid://121441938394147",
			visuals = "rbxassetid://92037166850475",
			item = "rbxassetid://83621162854932",
			farm = "rbxassetid://90384092320465"
		}

		local image = Instance.new("ImageLabel")
		image.Name = "image"
		image.Parent = tab_page
		image.BackgroundTransparency = 1
		image.Position = UDim2.new(0.051, 0, 0.195, 0)
		image.Size = UDim2.new(0, 23, 0, 24)
		image.Image = imagetypes[imgtype] or ""
		image.ImageColor3 = Color3.fromRGB(180, 180, 180) -- unselected image color
		image.ImageTransparency = 0.3

		-- Tab content frame (ScrollingFrame)
		-- tabpage stuff
		local tabpage = Instance.new("ScrollingFrame")
		tabpage.Name = "tabpage"
		tabpage.Parent = lib_holder
		tabpage.Active = true
		tabpage.BackgroundColor3 = Color3.new(1, 1, 1)
		tabpage.BackgroundTransparency = 1
		tabpage.BorderSizePixel = 0
		tabpage.Position = UDim2.new(0.27, 0, 0.19, 0)
		tabpage.Size = UDim2.new(0, 382, 0, 261)
		tabpage.ScrollingEnabled = true
		tabpage.BottomImage = ""
		tabpage.ScrollBarThickness = 5
		tabpage.TopImage = ""
		tabpage.Visible = false -- hidden by default

		-- Title frame inside tab content
		local tabtitleframe = Instance.new("Frame")
		tabtitleframe.Name = "tabtitleframe"
		tabtitleframe.Parent = tabpage
		tabtitleframe.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
		tabtitleframe.BackgroundTransparency = 1
		tabtitleframe.BorderSizePixel = 0
		tabtitleframe.Size = UDim2.new(0, 314, 0, 73)

		local tabpagetitle = Instance.new("TextLabel")
		tabpagetitle.Name = "tabpagetitle"
		tabpagetitle.Parent = tabtitleframe
		tabpagetitle.BackgroundTransparency = 1
		tabpagetitle.Position = UDim2.new(0.028, 0, 0.07, 0)
		tabpagetitle.Size = UDim2.new(0, 200, 0, 27)
		tabpagetitle.Font = Enum.Font.GothamBold
		tabpagetitle.Text = tabname
		tabpagetitle.TextColor3 = Color3.new(1, 1, 1)
		tabpagetitle.TextSize = 20
		tabpagetitle.TextXAlignment = Enum.TextXAlignment.Left

		local tabpagedesc = Instance.new("TextLabel")
		tabpagedesc.Name = "tabpagedesc"
		tabpagedesc.Parent = tabtitleframe
		tabpagedesc.BackgroundTransparency = 1
		tabpagedesc.Position = UDim2.new(0.028, 0, 0.54, 0)
		tabpagedesc.Size = UDim2.new(0, 300, 0, 18)
		tabpagedesc.Font = Enum.Font.Gotham
		tabpagedesc.Text = tabdescript or "Enhance your gameplay with these features!"
		tabpagedesc.TextColor3 = Color3.new(1, 1, 1)
		tabpagedesc.TextSize = 14
		tabpagedesc.TextXAlignment = Enum.TextXAlignment.Left

		-- Content layout inside tabpage
		local UIListLayoutPage = Instance.new("UIListLayout")
		UIListLayoutPage.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayoutPage.Padding = UDim.new(0, 7)
		UIListLayoutPage.Parent = tabpage

		-- Scrollbar show/hide logic
				local function updateScrollbar()
			local contentHeight = UIListLayoutPage.AbsoluteContentSize.Y
			local frameHeight = tabpage.AbsoluteSize.Y
		
			tabpage.CanvasSize = UDim2.new(0, 0, 0, contentHeight + 10)
		
			if contentHeight > frameHeight then
				tabpage.ScrollBarImageTransparency = 0
				tabpage.ScrollBarThickness = 5
			else
				tabpage.ScrollBarImageTransparency = 1
				tabpage.ScrollBarThickness = 0
				tabpage.CanvasPosition = Vector2.new(0, 0)
			end
		end
		
		-- Reconnect child listeners
		local function connectChildSignals(child)
			if child:IsA("GuiObject") then
				child:GetPropertyChangedSignal("Size"):Connect(updateScrollbar)
				child:GetPropertyChangedSignal("Visible"):Connect(updateScrollbar)
			end
		end
		
		-- Connect existing children
		for _, child in ipairs(tabpage:GetChildren()) do
			connectChildSignals(child)
		end
		
		-- Watch for future children too
		tabpage.ChildAdded:Connect(function(child)
			connectChildSignals(child)
			updateScrollbar()
		end)
		
		-- Scroll behavior
		UIListLayoutPage:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateScrollbar)
		tabpage:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateScrollbar)
		
		-- Initial update
		updateScrollbar()



		tabContents[tabname] = tabpage
		tabButtons[tabname] = tab_page

		local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local selectedColor = currentTheme.background or Color3.new(0.654902, 0.368627, 0.176471) -- orange/brown for selected tab
		local defaultColor = Color3.fromRGB(30,30,30) -- dark gray for unselected tabs
		local selectedTextColor = Color3.new(1, 1, 1)
		local unselectedTextColor = Color3.fromRGB(180, 180, 180)

		-- Functions for tweening the button appearance
		local function tweenToSelected()
			TweenService:Create(tab_page, tweenInfo, {
				BackgroundColor3 = selectedColor,
				BackgroundTransparency = 0
			}):Play()
			TweenService:Create(tab_name, tweenInfo, {
				TextColor3 = selectedTextColor,
				TextTransparency = 0
			}):Play()
			TweenService:Create(image, tweenInfo, {
				ImageColor3 = selectedTextColor,
				ImageTransparency = 0
			}):Play()
		end

		local function tweenToUnselected()
			TweenService:Create(tab_page, tweenInfo, {
				BackgroundColor3 = defaultColor,
				BackgroundTransparency = 0.3
			}):Play()
			TweenService:Create(tab_name, tweenInfo, {
				TextColor3 = unselectedTextColor,
				TextTransparency = 0.3
			}):Play()
			TweenService:Create(image, tweenInfo, {
				ImageColor3 = unselectedTextColor,
				ImageTransparency = 0.3
			}):Play()
		end

		local function tweenToHover()
			TweenService:Create(tab_page, tweenInfo, {
				BackgroundTransparency = 0.1
			}):Play()
			TweenService:Create(tab_name, tweenInfo, {
				TextColor3 = selectedTextColor,
				TextTransparency = 0
			}):Play()
			TweenService:Create(image, tweenInfo, {
				ImageColor3 = selectedTextColor,
				ImageTransparency = 0
			}):Play()
		end

		-- Click handler to select tab
		local function selectTab()
			if currentTabButton == tab_page then return end

			-- Deselect old tab
			if currentTabButton then
				local oldPageName = currentTabButton:GetAttribute("PageName")
				local oldPage = tabContents[oldPageName]
				if oldPage then
					oldPage.Visible = false
				end

				-- Tween old button to unselected
				local oldButton = currentTabButton
				local oldLabel = oldButton:FindFirstChild("tab_name")
				local oldImage = oldButton:FindFirstChild("image")
				if oldButton and oldLabel and oldImage then
					TweenService:Create(oldButton, tweenInfo, {
						BackgroundColor3 = defaultColor,
						BackgroundTransparency = 0.3
					}):Play()
					TweenService:Create(oldLabel, tweenInfo, {
						TextColor3 = unselectedTextColor,
						TextTransparency = 0.3
					}):Play()
					TweenService:Create(oldImage, tweenInfo, {
						ImageColor3 = unselectedTextColor,
						ImageTransparency = 0.3
					}):Play()
				end
			end

			-- Select this tab
			tabpage.Visible = true
			tweenToSelected()

			currentTabButton = tab_page
		end

		tab_page.MouseButton1Click:Connect(selectTab)

		-- Hover effects only for unselected tabs
		tab_page.MouseEnter:Connect(function()
			if currentTabButton ~= tab_page then
				tweenToHover()
			end
		end)

		tab_page.MouseLeave:Connect(function()
			if currentTabButton ~= tab_page then
				tweenToUnselected()
			end
		end)

		-- Select default tab if set
		if isDefault then
			currentTabButton = tab_page
			tabpage.Visible = true
			tweenToSelected()
		end

		-- Inner tab API: create UI elements inside the tab content area
		local innertab = {}
		innertab._tabPage = tabpage

		function innertab:CreateButton(name, callback)
			
			local button = Instance.new("ImageButton")
			local UICorner = Instance.new("UICorner")
			local buttonlabelname = Instance.new("TextLabel")
			local click = Instance.new("ImageLabel")

			-- Properties

			button.Name = "button"
			button.Parent = tabpage
			button.BackgroundColor3 = currentTheme.background or Color3.new(0.654902, 0.368627, 0.176471)
			button.BorderColor3 = Color3.new(0, 0, 0)
			button.BorderSizePixel = 0
			button.Position = UDim2.new(0, 0, 0.151079133, 0)
			button.Size = UDim2.new(0, 364, 0, 38)
			button.AutoButtonColor = false

			UICorner.Parent = button
			UICorner.CornerRadius = UDim.new(0, 0)

			buttonlabelname.Name = "buttonlabelname"
			buttonlabelname.Parent = button
			buttonlabelname.BackgroundColor3 = Color3.new(1, 1, 1)
			buttonlabelname.BackgroundTransparency = 1
			buttonlabelname.BorderColor3 = Color3.new(0, 0, 0)
			buttonlabelname.BorderSizePixel = 0
			buttonlabelname.Position = UDim2.new(0.0251041092, 0, 0.371319413, 0)
			buttonlabelname.Size = UDim2.new(0, 63, 0, 9)
			buttonlabelname.Font = Enum.Font.GothamMedium
			buttonlabelname.Text = name or "button"
			buttonlabelname.TextColor3 = Color3.new(1, 1, 1)
			buttonlabelname.TextSize = 14
			buttonlabelname.TextXAlignment = Enum.TextXAlignment.Left

			click.Name = "click"
			click.Parent = button
			click.BackgroundColor3 = Color3.new(1, 1, 1)
			click.BackgroundTransparency = 1
			click.BorderColor3 = Color3.new(0, 0, 0)
			click.BorderSizePixel = 0
			click.Position = UDim2.new(0.919581175, 0, 0.266056269, 0)
			click.Size = UDim2.new(0, 22, 0, 21)
			click.Image = "rbxassetid://84755891069036"

			button.MouseButton1Click:Connect(function()
				if callback then
					pcall(callback)
				end
			end)

			button.MouseEnter:Connect(function()
				TweenService:Create(button, TweenInfo.new(0.15), {BackgroundTransparency = 0.5}):Play()
			end)

			button.MouseLeave:Connect(function()
				TweenService:Create(button, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play()
			end)

			return self
		end

		function innertab:CreateComment(name)
			
			local comment = Instance.new("Frame")
			local commentcontent = Instance.new("TextLabel")
			local separator = Instance.new("Frame")
			local comment_2 = Instance.new("ImageLabel")

			comment.Name = "comment"
			comment.Parent = tabpage
			comment.BackgroundColor3 = currentTheme.background or Color3.new(0.654902, 0.368627, 0.176471)
			comment.BackgroundTransparency = 1
			comment.BorderColor3 = Color3.new(0, 0, 0)
			comment.BorderSizePixel = 0
			comment.Position = UDim2.new(0, 0, 0.305755407, 0)
			comment.Size = UDim2.new(0, 364, 0, 37)

			commentcontent.Name = "commentcontent"
			commentcontent.Parent = comment
			commentcontent.BackgroundColor3 = Color3.new(1, 1, 1)
			commentcontent.BackgroundTransparency = 1
			commentcontent.BorderColor3 = Color3.new(0, 0, 0)
			commentcontent.BorderSizePixel = 0
			commentcontent.Position = UDim2.new(0.0280940291, 0, 0.319609761, 0)
			commentcontent.Size = UDim2.new(0, 31, 0, 11)
			commentcontent.Font = Enum.Font.GothamMedium
			commentcontent.Text = name or "comment content"
			commentcontent.TextColor3 = Color3.new(1, 1, 1)
			commentcontent.TextSize = 14
			commentcontent.TextXAlignment = Enum.TextXAlignment.Left

			separator.Name = "separator"
			separator.Parent = comment
			separator.BackgroundColor3 = Color3.new(1, 1, 1)
			separator.BorderColor3 = Color3.new(0, 0, 0)
			separator.BorderSizePixel = 0
			separator.Position = UDim2.new(4.19197512e-08, 0, 1.08394814, 0)
			separator.Size = UDim2.new(0, 363, 0, -2)

			comment_2.Name = "comment"
			comment_2.Parent = comment
			comment_2.BackgroundColor3 = Color3.new(1, 1, 1)
			comment_2.BackgroundTransparency = 1
			comment_2.BorderColor3 = Color3.new(0, 0, 0)
			comment_2.BorderSizePixel = 0
			comment_2.Position = UDim2.new(0.919581175, 0, 0.239029348, 0)
			comment_2.Size = UDim2.new(0, 22, 0, 21)
			comment_2.Image = "rbxassetid://106089792142921"

			    local commentObject = {}

			    commentObject.Frame = comment
			    commentObject.TextLabel = commentcontent
			
			    function commentObject:SetText(newText)
			        self.TextLabel.Text = newText
			    end
			
			    return commentObject
			
		end

		function innertab:CreateCheckbox(name, callback)
			local checkbox = Instance.new("Frame")
			local tabpagetitle = Instance.new("TextLabel")
			local checkhandler = Instance.new("ImageButton")
			local UICorner = Instance.new("UICorner")
			
			-- Properties

			checkbox.Name = "checkbox"
			checkbox.Parent = tabpage
			checkbox.BackgroundColor3 = currentTheme.background or Color3.new(0.654902, 0.368627, 0.176471)
			checkbox.BorderColor3 = Color3.new(0, 0, 0)
			checkbox.BorderSizePixel = 0
			checkbox.Position = UDim2.new(0, 0, 0.305755407, 0)
			checkbox.Size = UDim2.new(0, 364, 0, 37)

			tabpagetitle.Name = "tabpagetitle"
			tabpagetitle.Parent = checkbox
			tabpagetitle.BackgroundColor3 = Color3.new(1, 1, 1)
			tabpagetitle.BackgroundTransparency = 1
			tabpagetitle.BorderColor3 = Color3.new(0, 0, 0)
			tabpagetitle.BorderSizePixel = 0
			tabpagetitle.Position = UDim2.new(0.0280940291, 0, 0.319609761, 0)
			tabpagetitle.Size = UDim2.new(0, 31, 0, 11)
			tabpagetitle.Font = Enum.Font.GothamMedium
			tabpagetitle.Text = name or "checkbox"
			tabpagetitle.TextColor3 = Color3.new(1, 1, 1)
			tabpagetitle.TextSize = 14
			tabpagetitle.TextXAlignment = Enum.TextXAlignment.Left

			checkhandler.Name = "checkhandler"
			checkhandler.Parent = checkbox
			checkhandler.BackgroundColor3 = Color3.new(0.67451, 0.192157, 0.192157)
			checkhandler.BorderColor3 = Color3.new(0, 0, 0)
			checkhandler.BorderSizePixel = 0
			checkhandler.Position = UDim2.new(0.93450731, 0, 0.300489277, 0)
			checkhandler.Size = UDim2.new(0, 13, 0, 14)
			checkhandler.AutoButtonColor = false

			UICorner.Parent = checkhandler
			UICorner.CornerRadius = UDim.new(0, 0)

			local enabled = false
			checkhandler.MouseButton1Click:Connect(function()
				if enabled == false then
					enabled = true
					local speed = 0.1
					local tf = TweenInfo.new(speed, Enum.EasingStyle.Quad , Enum.EasingDirection.In, 0.5)
					local ts = game:GetService("TweenService")
					local checktrue = Color3.fromRGB(33, 149, 27)
					ts:Create(checkhandler,tf, {BackgroundColor3 = checktrue}):Play()
					--toggler.ImageColor3 = Color3.fromRGB(144,255,96)
				else
					enabled = false 
					local speed = 0.1
					local tf = TweenInfo.new(speed, Enum.EasingStyle.Quad , Enum.EasingDirection.Out, 0.5)
					local ts = game:GetService("TweenService")
					local checkfalse = Color3.fromRGB(255,79,79)	
					ts:Create(checkhandler,tf, {BackgroundColor3 = checkfalse}):Play()
					--toggler.ImageColor3 = Color3.fromRGB(255,79,79)
				end
				pcall(callback,enabled)
			end)

			return self
		end


		local TweenService = game:GetService("TweenService")

		local TweenService = game:GetService("TweenService")
		local UserInputService = game:GetService("UserInputService")

		function innertab:CreateSlider(slidertitle, maxValue, minValue, callback)
			minValue = minValue or 0
			maxValue = maxValue or 100
			callback = callback or function() end

			local slider = Instance.new("Frame")
			local slidernametitle = Instance.new("TextLabel")
			local sliderframe = Instance.new("Frame")
			local sliderbar = Instance.new("Frame")
			local circle = Instance.new("ImageButton")
			local UICorner = Instance.new("UICorner")
			local slidervalue = Instance.new("TextLabel")

			slider.Name = "slider"
			slider.Parent = tabpage -- <- make sure this is set correctly in your lib
			slider.BackgroundColor3 = currentTheme.background or Color3.new(0.654902, 0.368627, 0.176471)
			slider.BorderSizePixel = 0
			slider.Size = UDim2.new(0, 364, 0, 55)

			slidernametitle.Name = "slidernametitle"
			slidernametitle.Parent = slider
			slidernametitle.BackgroundTransparency = 1
			slidernametitle.Position = UDim2.new(0.03, 0, 0.14, 0)
			slidernametitle.Size = UDim2.new(0, 150, 0, 14)
			slidernametitle.Font = Enum.Font.GothamMedium
			slidernametitle.Text = slidertitle
			slidernametitle.TextColor3 = Color3.new(1, 1, 1)
			slidernametitle.TextSize = 14
			slidernametitle.TextXAlignment = Enum.TextXAlignment.Left

			sliderframe.Name = "sliderframe"
			sliderframe.Parent = slider
			sliderframe.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
			sliderframe.BorderSizePixel = 0
			sliderframe.Position = UDim2.new(0.06, 0, 0.65, 0)
			sliderframe.Size = UDim2.new(0, 319, 0, 8)

			sliderbar.Name = "sliderbar"
			sliderbar.Parent = sliderframe
			sliderbar.BackgroundColor3 = Color3.new(1, 1, 1)
			sliderbar.BorderSizePixel = 0
			sliderbar.Size = UDim2.new(0, 16, 0, 8)

			circle.Name = "circle"
			circle.Parent = sliderbar
			circle.BackgroundColor3 = Color3.new(1, 1, 1)
			circle.BorderSizePixel = 0
			circle.Position = UDim2.new(1, -7, 0.5, -7)
			circle.Size = UDim2.new(0, 14, 0, 14)
			circle.AutoButtonColor = false
			circle.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
			circle.ImageTransparency = 1

			UICorner.Parent = circle
			UICorner.CornerRadius = UDim.new(0, 20)

			slidervalue.Name = "slidervalue"
			slidervalue.Parent = slider
			slidervalue.BackgroundColor3 = Color3.new(1, 1, 1)
			slidervalue.BackgroundTransparency = 1
			slidervalue.BorderColor3 = Color3.new(0, 0, 0)
			slidervalue.BorderSizePixel = 0
			slidervalue.Position = UDim2.new(0.919144154, 0, 0.137791857, 0)
			slidervalue.Size = UDim2.new(0, 18, 0, 14)
			slidervalue.Font = Enum.Font.GothamBold
			slidervalue.Text = tostring(minValue) -- ✅ This sets initial display to minValue
			slidervalue.TextColor3 = Color3.new(1, 1, 1)
			slidervalue.TextSize = 14
			slidervalue.TextXAlignment = Enum.TextXAlignment.Left


			local dragging = false

			local function getSliderWidth()
				return sliderframe.AbsoluteSize.X
			end

			local function updateSliderFromX(inputPosX)
				local sliderWidth = getSliderWidth()
				local relativeX = math.clamp(inputPosX - sliderframe.AbsolutePosition.X, 0, sliderWidth)

				local valuePercent = relativeX / sliderWidth
				local value = minValue + (maxValue - minValue) * valuePercent
				local roundedValue = math.floor(value + 0.5)

				-- Animate UI
				local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				TweenService:Create(sliderbar, tweenInfo, {Size = UDim2.new(0, relativeX, 0, 8)}):Play()
				TweenService:Create(circle, tweenInfo, {
					Position = UDim2.new(0, relativeX - (circle.AbsoluteSize.X / 2), 0.5, -(circle.AbsoluteSize.Y / 2))
				}):Play()

				slidervalue.Text = tostring(roundedValue)
				callback(roundedValue)
			end

			-- Mouse drag support
			circle.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = true
				end
			end)

			UserInputService.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = false
				end
			end)

			UserInputService.InputChanged:Connect(function(input)
				if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
					updateSliderFromX(input.Position.X)
				end
			end)

			sliderframe.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					updateSliderFromX(input.Position.X)
				end
			end)

			-- Wait for frame to render before setting initial value
			task.defer(function()
				local startPercent = 0
				local initialX = sliderframe.AbsolutePosition.X + getSliderWidth() * startPercent
				updateSliderFromX(initialX)
			end)

			return slider
		end

		function innertab:CreateDropDown(name)
			local TweenService = game:GetService("TweenService")

			local dropdown = Instance.new("Frame")
			dropdown.Name = "dropdown"
			dropdown.Parent = tabpage
			dropdown.BackgroundColor3 = currentTheme.background or Color3.new(0.654902, 0.368627, 0.176471)
			dropdown.BorderSizePixel = 0
			dropdown.Position = UDim2.new(0, 0, 0.62, 0)
			dropdown.Size = UDim2.new(0, 364, 0, 35)
			dropdown.ClipsDescendants = true

			local dropdown_title = Instance.new("TextLabel")
			dropdown_title.Name = "dropdown_title"
			dropdown_title.Parent = dropdown
			dropdown_title.BackgroundTransparency = 1
			dropdown_title.Position = UDim2.new(0, 10, 0, 11)
			dropdown_title.Size = UDim2.new(0, 250, 0, 14)
			dropdown_title.Font = Enum.Font.GothamMedium
			dropdown_title.Text = name or "Dropdown"
			dropdown_title.TextColor3 = Color3.new(1, 1, 1)
			dropdown_title.TextSize = 14
			dropdown_title.TextXAlignment = Enum.TextXAlignment.Left

			local dropdowntoggler = Instance.new("ImageButton")
			dropdowntoggler.Name = "dropdowntoggler"
			dropdowntoggler.Parent = dropdown
			dropdowntoggler.BackgroundTransparency = 1
			dropdowntoggler.Position = UDim2.new(1, -25, 0, 7)
			dropdowntoggler.Size = UDim2.new(0, 21, 0, 21)
			dropdowntoggler.Image = "rbxassetid://127330890338186"
			dropdowntoggler.AutoButtonColor = false

			local contentholder = Instance.new("ScrollingFrame")
			contentholder.Name = "contentholder"
			contentholder.Parent = dropdown
			contentholder.Active = true
			contentholder.BackgroundTransparency = 1
			contentholder.Position = UDim2.new(0, 9, 0, 37)
			contentholder.Size = UDim2.new(0, 343, 0, 5) -- Always shows scrollbar edge
			contentholder.BottomImage = ""
			contentholder.TopImage = ""
			contentholder.ScrollBarThickness = 3
			contentholder.ScrollingEnabled = true
			contentholder.AutomaticCanvasSize = Enum.AutomaticSize.Y
			contentholder.CanvasSize = UDim2.new(0, 0, 0, 0) -- Let Roblox handle it
			contentholder.ClipsDescendants = true
			contentholder.BorderSizePixel = 0
			contentholder.BorderColor3 = Color3.new(0, 0, 0) -- safe fallback

			local UIListLayout = Instance.new("UIListLayout")
			UIListLayout.Parent = contentholder
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 2)

			local opened = false
			local baseHeight = 35
			local maxHeight = 150

			local function tweenRotation(obj, angle)
				TweenService:Create(obj, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {Rotation = angle}):Play()
			end

			local function updateDropdown()
				local contentY = UIListLayout.AbsoluteContentSize.Y
				local visibleY = math.min(contentY, maxHeight)
				if opened then
					contentholder:TweenSize(UDim2.new(0, 343, 0, visibleY), "Out", "Quad", 0.3, true)
					dropdown:TweenSize(UDim2.new(0, 364, 0, baseHeight + visibleY + 5), "Out", "Quad", 0.3, true)
					tweenRotation(dropdowntoggler, -90)
				else
					contentholder:TweenSize(UDim2.new(0, 343, 0, 5), "Out", "Quad", 0.3, true) -- show only scrollbar edge
					dropdown:TweenSize(UDim2.new(0, 364, 0, baseHeight), "Out", "Quad", 0.3, true)
					tweenRotation(dropdowntoggler, 0)
				end
			end

			dropdowntoggler.MouseButton1Click:Connect(function()
				opened = not opened
				updateDropdown()
			end)

			local api = {}

			function api:AddButton(text, callback)
				local btn = Instance.new("ImageButton")
				btn.Name = "dropdownbtn"
				btn.Parent = contentholder
				btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				btn.BorderSizePixel = 0
				btn.Size = UDim2.new(0, 328, 0, 26)
				btn.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
				btn.ImageTransparency = 1
				btn.AutoButtonColor = false

				local label = Instance.new("TextLabel")
				label.Name = "dropdown_title"
				label.Parent = btn
				label.BackgroundTransparency = 1
				label.Position = UDim2.new(0.028, 0, 0.25, 0)
				label.Size = UDim2.new(0, 200, 0, 14)
				label.Font = Enum.Font.Gotham
				label.Text = text
				label.TextColor3 = Color3.new(1, 1, 1)
				label.TextSize = 14
				label.TextXAlignment = Enum.TextXAlignment.Left

				local icon = Instance.new("ImageLabel")
				icon.Name = "click"
				icon.Parent = btn
				icon.BackgroundTransparency = 1
				icon.Position = UDim2.new(0.936, 0, 0.2, 0)
				icon.Size = UDim2.new(0, 18, 0, 16)
				icon.Image = "rbxassetid://84755891069036"

				btn.MouseButton1Click:Connect(function()
					callback(text)
				end)
				
				btn.MouseEnter:Connect(function()
					TweenService:Create(btn, TweenInfo.new(0.15), {BackgroundTransparency = 0.5}):Play()
				end)

				btn.MouseLeave:Connect(function()
					TweenService:Create(btn, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play()
				end)

				updateDropdown()
			end

			function api:AddCheckbox(text, callback)
				local checkbox = Instance.new("ImageButton")
				checkbox.Name = "checkbox"
				checkbox.Parent = contentholder
				checkbox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				checkbox.BorderSizePixel = 0
				checkbox.Size = UDim2.new(0, 328, 0, 26)
				checkbox.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
				checkbox.ImageTransparency = 1
				checkbox.AutoButtonColor = false

				local label = Instance.new("TextLabel")
				label.Name = "checkbox_title"
				label.Parent = checkbox
				label.BackgroundTransparency = 1
				label.Position = UDim2.new(0.028, 0, 0.27, 0)
				label.Size = UDim2.new(0, 200, 0, 14)
				label.Font = Enum.Font.Gotham
				label.Text = text
				label.TextColor3 = Color3.new(1, 1, 1)
				label.TextSize = 14
				label.TextXAlignment = Enum.TextXAlignment.Left

				local checkhandler = Instance.new("ImageButton")
				checkhandler.Name = "checkhandler"
				checkhandler.Parent = checkbox
				checkhandler.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
				checkhandler.BorderSizePixel = 0
				checkhandler.Position = UDim2.new(0.931, 0, 0.298, 0)
				checkhandler.Size = UDim2.new(0, 13, 0, 11)
				checkhandler.AutoButtonColor = false

				local UICorner = Instance.new("UICorner")
				UICorner.Parent = checkhandler
				UICorner.CornerRadius = UDim.new(0, 0)

				local enabled = false
				checkhandler.MouseButton1Click:Connect(function()
					local speed = 0.1
					local tf = TweenInfo.new(speed, Enum.EasingStyle.Quad, enabled and Enum.EasingDirection.Out or Enum.EasingDirection.In, 0.5)
					local newColor = enabled and Color3.fromRGB(255, 79, 79) or Color3.fromRGB(33, 149, 27)
					TweenService:Create(checkhandler, tf, {BackgroundColor3 = newColor}):Play()

					enabled = not enabled
					pcall(callback, enabled)
				end)

				updateDropdown()
			end

			return api
		end

		return innertab
	end

	return createtab

end

return lib


	-- Botão de alternância para abrir/fechar a UI
	local toggle_btn = Instance.new("ImageButton")
	toggle_btn.Name = "toggle_button"
	toggle_btn.Parent = topbar -- Ou onde você deseja que o botão apareça
	toggle_btn.BackgroundColor3 = Color3.new(1, 1, 1)
	toggle_btn.BackgroundTransparency = 1
	toggle_btn.Image = "rbxassetid://103313795004373"
	toggle_btn.Size = UDim2.new(0, 30, 0, 30) -- Ajuste o tamanho conforme necessário
	toggle_btn.Position = UDim2.new(0.85, 0, 0.186440676, 0) -- Ajuste a posição conforme necessário

	toggle_btn.MouseButton1Click:Connect(function()
		corehandler.Enabled = not corehandler.Enabled
	end)




	-- Botão de alternância para abrir/fechar a UI
	local toggle_ui_btn = Instance.new("ImageButton")
	toggle_ui_btn.Name = "toggle_ui_button"
	toggle_ui_btn.Parent = topbar
	toggle_ui_btn.BackgroundColor3 = Color3.new(1, 1, 1)
	toggle_ui_btn.BackgroundTransparency = 1
	toggle_ui_btn.Image = "rbxassetid://103313795004373"
	toggle_ui_btn.Size = UDim2.new(0, 30, 0, 30)
	toggle_ui_btn.Position = UDim2.new(0.85, 0, 0.186440676, 0) -- Posição ajustada

	toggle_ui_btn.MouseButton1Click:Connect(function()
		corehandler.Enabled = not corehandler.Enabled
	end)


