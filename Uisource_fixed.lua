local NatUI = {}

-- Função para criar a janela principal da UI
function NatUI:Window(Title, Description, Icon)
    local playerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    -- ScreenGui principal
    local uiLibrary = Instance.new("ScreenGui")
    uiLibrary.Name = "UiLibrary"
    uiLibrary.IgnoreGuiInset = true
    uiLibrary.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
    uiLibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    uiLibrary.ResetOnSpawn = false
    uiLibrary.Parent = playerGui
    NatUI["1"] = uiLibrary

    -- Frame principal da UI
    local nathubUI = Instance.new("Frame")
    nathubUI.Name = "NathubUI"
    nathubUI.BorderSizePixel = 0
    nathubUI.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    nathubUI.AnchorPoint = Vector2.new(0.5, 0.5)
    nathubUI.Size = UDim2.new(0, 550, 0, 375)
    nathubUI.Position = UDim2.new(0.5, 0, 0.5, 0)
    nathubUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
    nathubUI.BackgroundTransparency = 0.05
    nathubUI.Parent = uiLibrary
    NatUI["2"] = nathubUI

    -- Holder
    local holder = Instance.new("Frame")
    holder.Name = "Holder"
    holder.BorderSizePixel = 0
    holder.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    holder.AnchorPoint = Vector2.new(0.5, 0.5)
    holder.Size = UDim2.new(0, 550, 0, 375)
    holder.Position = UDim2.new(0.5, 0, 0.5, 0)
    holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
    holder.BackgroundTransparency = 0.5
    holder.Parent = nathubUI
    NatUI["3"] = holder

    -- ContainerTab
    local containerTab = Instance.new("Frame")
    containerTab.Name = "ContainerTab"
    containerTab.BorderSizePixel = 0
    containerTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    containerTab.Size = UDim2.new(0, 144, 0, 288)
    containerTab.Position = UDim2.new(0, 0, 0, 41)
    containerTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    containerTab.BackgroundTransparency = 1
    containerTab.Parent = holder
    NatUI["4"] = containerTab

    -- TabList
    local tabList = Instance.new("Frame")
    tabList.Name = "TabList"
    tabList.BorderSizePixel = 0
    tabList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tabList.Size = UDim2.new(0, 144, 0, 335)
    tabList.Position = UDim2.new(0.5, -72, 0.5, -167)
    tabList.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tabList.BackgroundTransparency = 1
    tabList.Parent = containerTab
    NatUI["5"] = tabList

    -- ScrollingFrame
    local scrollingFrame = Instance.new("ScrollingFrame")
    scrollingFrame.Name = "ScrollingFrame"
    scrollingFrame.Active = true
    scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
    scrollingFrame.BorderSizePixel = 0
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 8, 0)
    scrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    scrollingFrame.Size = UDim2.new(0, 135, 0, 334)
    scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 254, 254)
    scrollingFrame.Position = UDim2.new(0.5, -72, 0.49552, -144)
    scrollingFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
    scrollingFrame.ScrollBarThickness = 0
    scrollingFrame.BackgroundTransparency = 1
    scrollingFrame.Parent = tabList
    NatUI["6"] = scrollingFrame

    -- Topbar
    local topbar = Instance.new("Frame")
    topbar.Name = "Topbar"
    topbar.BorderSizePixel = 0
    topbar.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    topbar.Size = UDim2.new(0, 549, 0, 40)
    topbar.Position = UDim2.new(0.5, -274, 0, 0)
    topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    topbar.BackgroundTransparency = 0.05
    topbar.Parent = holder
    NatUI["1d"] = topbar

    -- TitleHub
    local titleHub = Instance.new("TextLabel")
    titleHub.Name = "TitleHub"
    titleHub.BorderSizePixel = 0
    titleHub.TextSize = 15
    titleHub.TextXAlignment = Enum.TextXAlignment.Left
    titleHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titleHub.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    titleHub.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleHub.BackgroundTransparency = 1
    titleHub.Size = UDim2.new(0, 60, 0, 30)
    titleHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
    titleHub.Text = Title
    titleHub.Position = UDim2.new(0, 50, 0, -2)
    titleHub.Parent = topbar
    NatUI["1e"] = titleHub

    -- Desc
    local desc = Instance.new("TextLabel")
    desc.Name = "Desc"
    desc.BorderSizePixel = 0
    desc.TextSize = 14
    desc.TextXAlignment = Enum.TextXAlignment.Left
    desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    desc.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    desc.TextColor3 = Color3.fromRGB(123, 123, 123)
    desc.BackgroundTransparency = 1
    desc.Size = UDim2.new(0, 60, 0, 14)
    desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
    desc.Text = Description
    desc.Position = UDim2.new(0, 50, 0, 20)
    desc.Parent = topbar
    NatUI["1f"] = desc

    -- Minimize Button
    local minimize = Instance.new("ImageButton")
    minimize.Name = "Minimize"
    minimize.BorderSizePixel = 0
    minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    minimize.Selectable = false
    minimize.Image = "rbxassetid://10734896206"
    minimize.Size = UDim2.new(0, 20, 0, 20)
    minimize.BackgroundTransparency = 1
    minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
    minimize.Position = UDim2.new(1, -30, 0, 10)
    minimize.Parent = topbar
    NatUI["20"] = minimize

    -- LocalScript for Minimize
    local minimizeLocalScript = Instance.new("LocalScript")
    minimizeLocalScript.Parent = minimize
    NatUI["21"] = minimizeLocalScript

    -- UICorner for Topbar
    local topbarUICorner = Instance.new("UICorner")
    topbarUICorner.Parent = topbar
    NatUI["22"] = topbarUICorner

    -- Icon
    local iconImage = Instance.new("ImageLabel")
    iconImage.Name = "Icon"
    iconImage.BorderSizePixel = 0
    iconImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    iconImage.Image = Icon
    iconImage.Size = UDim2.new(0, 35, 0, 35)
    iconImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
    iconImage.BackgroundTransparency = 1
    iconImage.Position = UDim2.new(0, 8, 0, 4)
    iconImage.Parent = topbar
    NatUI["23"] = iconImage

    -- LocalScript for Topbar
    local topbarLocalScript = Instance.new("LocalScript")
    topbarLocalScript.Parent = topbar
    NatUI["24"] = topbarLocalScript

    -- UIAspectRatioConstraint for Holder
    local holderUIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    holderUIAspectRatioConstraint.AspectRatio = 1.46667
    holderUIAspectRatioConstraint.Parent = holder
    NatUI["25"] = holderUIAspectRatioConstraint

    -- UICorner for Holder
    local holderUICorner = Instance.new("UICorner")
    holderUICorner.Parent = holder
    NatUI["1c"] = holderUICorner
end

-- Função para adicionar uma nova aba
function NatUI:AddTab(Title, Desc, Icon)
    -- List
    local list = Instance.new("Frame")
    list.Name = "List"
    list.BorderSizePixel = 0
    list.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    list.Size = UDim2.new(0, 132, 0, 333)
    list.BorderColor3 = Color3.fromRGB(0, 0, 0)
    list.BackgroundTransparency = 1
    list.Parent = NatUI["6"] -- Parent to ScrollingFrame
    NatUI["7"] = list

    -- dontchange
    local dontchange = Instance.new("Frame")
    dontchange.Name = "dontchange"
    dontchange.BorderSizePixel = 0
    dontchange.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    dontchange.Size = UDim2.new(0, 125, 0, 20)
    dontchange.BorderColor3 = Color3.fromRGB(0, 0, 0)
    dontchange.BackgroundTransparency = 1
    dontchange.Parent = list
    NatUI["8"] = dontchange

    -- UIListLayout
    local uiListLayout = Instance.new("UIListLayout")
    uiListLayout.Padding = UDim.new(0, 5)
    uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    uiListLayout.Parent = list
    NatUI["9"] = uiListLayout

    -- Active
    local active = Instance.new("Frame")
    active.Name = "Active"
    active.BorderSizePixel = 0
    active.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
    active.Size = UDim2.new(0, 125, 0, 30)
    active.Position = UDim2.new(0, 0, 0.07508, 0)
    active.BorderColor3 = Color3.fromRGB(0, 0, 0)
    active.BackgroundTransparency = 0.5
    active.Parent = list
    NatUI["a"] = active

    -- DescTab
    local descTab = Instance.new("TextLabel")
    descTab.Name = "DescTab"
    descTab.BorderSizePixel = 0
    descTab.TextSize = 10
    descTab.TextXAlignment = Enum.TextXAlignment.Left
    descTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    descTab.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    descTab.TextColor3 = Color3.fromRGB(123, 123, 123)
    descTab.BackgroundTransparency = 1
    descTab.Size = UDim2.new(0, 55, 0, 10)
    descTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    descTab.Text = Desc
    descTab.Position = UDim2.new(0.28, 0, 0.5, 0)
    descTab.Parent = active
    NatUI["b"] = descTab

    -- IconTab
    local iconTab = Instance.new("ImageLabel")
    iconTab.Name = "IconTab"
    iconTab.BorderSizePixel = 0
    iconTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    iconTab.Image = Icon
    iconTab.Size = UDim2.new(0, 20, 0, 20)
    iconTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    iconTab.BackgroundTransparency = 1
    iconTab.Position = UDim2.new(0.056, 0, 0.16667, 0)
    iconTab.Parent = active
    NatUI["c"] = iconTab

    -- UIStroke
    local uiStroke = Instance.new("UIStroke")
    uiStroke.Color = Color3.fromRGB(53, 53, 53)
    uiStroke.Parent = active
    NatUI["d"] = uiStroke

    -- UICorner
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 3)
    uiCorner.Parent = active
    NatUI["e"] = uiCorner

    -- TitleTab
    local titleTab = Instance.new("TextLabel")
    titleTab.Name = "TitleTab"
    titleTab.BorderSizePixel = 0
    titleTab.TextSize = 13
    titleTab.TextXAlignment = Enum.TextXAlignment.Left
    titleTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titleTab.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    titleTab.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleTab.BackgroundTransparency = 1
    titleTab.Size = UDim2.new(0, 55, 0, 20)
    titleTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    titleTab.Text = Title
    titleTab.Position = UDim2.new(0.28, 0, 0, 0)
    titleTab.Parent = active
    NatUI["f"] = titleTab

    -- Button (This seems to be a separate section, not directly related to the tab itself, but placed under ScrollingFrame)
    local buttonFrame = Instance.new("Frame")
    buttonFrame.Name = "Button"
    buttonFrame.BorderSizePixel = 0
    buttonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    buttonFrame.Size = UDim2.new(0, 132, 0, 333)
    buttonFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    buttonFrame.BackgroundTransparency = 1
    buttonFrame.Parent = NatUI["6"]
    NatUI["16"] = buttonFrame

    -- dontchange for Button
    local buttonDontchange = Instance.new("Frame")
    buttonDontchange.Name = "dontchange"
    buttonDontchange.BorderSizePixel = 0
    buttonDontchange.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    buttonDontchange.Size = UDim2.new(0, 125, 0, 20)
    buttonDontchange.BorderColor3 = Color3.fromRGB(0, 0, 0)
    buttonDontchange.BackgroundTransparency = 1
    buttonDontchange.Parent = buttonFrame
    NatUI["17"] = buttonDontchange

    -- UIListLayout for Button
    local buttonUIListLayout = Instance.new("UIListLayout")
    buttonUIListLayout.Padding = UDim.new(0, 5)
    buttonUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    buttonUIListLayout.Parent = buttonFrame
    NatUI["18"] = buttonUIListLayout

    -- One (TextButton)
    local oneTextButton = Instance.new("TextButton")
    oneTextButton.Name = Title
    oneTextButton.BorderSizePixel = 0
    oneTextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    oneTextButton.TextSize = 13
    oneTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    oneTextButton.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
    oneTextButton.Size = UDim2.new(0, 125, 0, 30)
    oneTextButton.BackgroundTransparency = 1
    oneTextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    oneTextButton.Text = ""
    oneTextButton.Parent = buttonFrame
    NatUI["19"] = oneTextButton

    -- Line
    local line = Instance.new("Frame")
    line.Name = "Line"
    line.BorderSizePixel = 0
    line.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    line.Size = UDim2.new(0, 2, 0, 334)
    line.Position = UDim2.new(0.93056, 0, -0.00347, 0)
    line.BorderColor3 = Color3.fromRGB(0, 0, 0)
    line.Parent = containerTab
    NatUI["1b"] = line

    -- ContainerElement
    local containerElement = Instance.new("Frame")
    containerElement.Name = "ContainerElement"
    containerElement.BorderSizePixel = 0
    containerElement.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    containerElement.Size = UDim2.new(0, 396, 0, 321)
    containerElement.Position = UDim2.new(0.26, 0, 0.12533, 0)
    containerElement.BorderColor3 = Color3.fromRGB(0, 0, 0)
    containerElement.BackgroundTransparency = 0.5
    containerElement.Parent = holder
    NatUI["26"] = containerElement

    -- Element
    local element = Instance.new("Frame")
    element.Name = "Element"
    element.BorderSizePixel = 0
    element.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    element.Size = UDim2.new(0, 396, 0, 321)
    element.BorderColor3 = Color3.fromRGB(0, 0, 0)
    element.BackgroundTransparency = 1
    element.Parent = containerElement
    NatUI["27"] = element

    -- Line (inside Element)
    local elementLine = Instance.new("Frame")
    elementLine.Name = "Line"
    elementLine.BorderSizePixel = 0
    elementLine.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
    elementLine.Size = UDim2.new(0, 2, 0, 321)
    elementLine.Position = UDim2.new(0.49747, 0, 0, 0)
    elementLine.BorderColor3 = Color3.fromRGB(0, 0, 0)
    elementLine.Parent = element
    NatUI["28"] = elementLine

    -- UICorner for Element Line
    local elementLineUICorner = Instance.new("UICorner")
    elementLineUICorner.Parent = elementLine
    NatUI["29"] = elementLineUICorner

    -- One (inside Element)
    local elementOne = Instance.new("Frame")
    elementOne.Name = Title
    elementOne.BorderSizePixel = 0
    elementOne.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    elementOne.Size = UDim2.new(0, 197, 0, 321)
    elementOne.BorderColor3 = Color3.fromRGB(0, 0, 0)
    elementOne.BackgroundTransparency = 1
    elementOne.Parent = element
    NatUI["2a"] = elementOne

    -- ScrollBar (inside Element.One)
    local scrollBar = Instance.new("ScrollingFrame")
    scrollBar.Name = "ScrollBar"
    scrollBar.Active = true
    scrollBar.BorderSizePixel = 0
    scrollBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    scrollBar.Size = UDim2.new(0, 190, 0, 321)
    scrollBar.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    scrollBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    scrollBar.ScrollBarThickness = 0
    scrollBar.BackgroundTransparency = 1
    scrollBar.Parent = elementOne
    NatUI["2b"] = scrollBar

    -- BlockScrollbar
    local blockScrollbar = Instance.new("Frame")
    blockScrollbar.Name = "BlockScrollbar"
    blockScrollbar.BorderSizePixel = 0
    blockScrollbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    blockScrollbar.Size = UDim2.new(0, 190, 0, 321)
    blockScrollbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    blockScrollbar.BackgroundTransparency = 1
    blockScrollbar.Parent = scrollBar
    NatUI["2c"] = blockScrollbar

    -- Frame (inside BlockScrollbar)
    local blockScrollbarFrame = Instance.new("Frame")
    blockScrollbarFrame.Name = "Frame"
    blockScrollbarFrame.BorderSizePixel = 0
    blockScrollbarFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    blockScrollbarFrame.Size = UDim2.new(0, 130, 0, 2)
    blockScrollbarFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    blockScrollbarFrame.BackgroundTransparency = 1
    blockScrollbarFrame.Parent = blockScrollbar
    NatUI["2d"] = blockScrollbarFrame

    -- UIListLayout (inside BlockScrollbar)
    local blockScrollbarUIListLayout = Instance.new("UIListLayout")
    blockScrollbarUIListLayout.Padding = UDim.new(0, 6)
    blockScrollbarUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    blockScrollbarUIListLayout.Parent = blockScrollbar
    NatUI["2e"] = blockScrollbarUIListLayout
end

-- Função para adicionar uma seção
function NatUI:Section(Title, Icon)
    -- Section Frame
    local sectionFrame = Instance.new("Frame")
    sectionFrame.Name = "Section"
    sectionFrame.BorderSizePixel = 0
    sectionFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sectionFrame.Size = UDim2.new(0, 189, 0, 30)
    sectionFrame.Position = UDim2.new(0, 0, 0.49844, 0)
    sectionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    sectionFrame.BackgroundTransparency = 1
    sectionFrame.Parent = NatUI["2c"] -- Parent to BlockScrollbar
    NatUI["2f"] = sectionFrame

    -- Section Inner Frame
    local sectionInnerFrame = Instance.new("Frame")
    sectionInnerFrame.Name = "Section"
    sectionInnerFrame.BorderSizePixel = 0
    sectionInnerFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    sectionInnerFrame.Size = UDim2.new(0, 189, 0, 30)
    sectionInnerFrame.Position = UDim2.new(0, 0, -0.00592, 0)
    sectionInnerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    sectionInnerFrame.Parent = sectionFrame
    NatUI["30"] = sectionInnerFrame

    -- UICorner for Section
    local sectionUICorner = Instance.new("UICorner")
    sectionUICorner.CornerRadius = UDim.new(0, 3)
    sectionUICorner.Parent = sectionInnerFrame
    NatUI["31"] = sectionUICorner

    -- Title Label
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.BorderSizePixel = 0
    titleLabel.TextSize = 12
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    titleLabel.TextColor3 = Color3.fromRGB(241, 241, 241)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Size = UDim2.new(0, 157, 0, 30)
    titleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.Text = Title
    titleLabel.Position = UDim2.new(0.03175, 0, 0, 0)
    titleLabel.Parent = sectionInnerFrame
    NatUI["32"] = titleLabel

    -- Icon Label
    local iconLabel = Instance.new("ImageLabel")
    iconLabel.Name = "Icon"
    iconLabel.BorderSizePixel = 0
    iconLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    iconLabel.Image = Icon
    iconLabel.Size = UDim2.new(0, 20, 0, 20)
    iconLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    iconLabel.BackgroundTransparency = 1
    iconLabel.Position = UDim2.new(0.86243, 0, 0.16667, 0)
    iconLabel.Parent = sectionInnerFrame
    NatUI["33"] = iconLabel
end

-- Função para adicionar um checkbox
function NatUI:Checkbox(Title, Callback)
    -- Checkbox Frame
    local checkboxFrame = Instance.new("Frame")
    checkboxFrame.Name = "Checkbox"
    checkboxFrame.BorderSizePixel = 0
    checkboxFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    checkboxFrame.Size = UDim2.new(0, 189, 0, 30)
    checkboxFrame.Position = UDim2.new(0, 0, 0.49844, 0)
    checkboxFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    checkboxFrame.BackgroundTransparency = 1
    checkboxFrame.Parent = NatUI["2c"] -- Parent to BlockScrollbar
    NatUI["34"] = checkboxFrame

    -- Checkbox Inner Frame
    local checkboxInnerFrame = Instance.new("Frame")
    checkboxInnerFrame.Name = "Checkbox"
    checkboxInnerFrame.BorderSizePixel = 0
    checkboxInnerFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    checkboxInnerFrame.Size = UDim2.new(0, 189, 0, 30)
    checkboxInnerFrame.Position = UDim2.new(0, 0, -0.00592, 0)
    checkboxInnerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    checkboxInnerFrame.Parent = checkboxFrame
    NatUI["35"] = checkboxInnerFrame

    -- UICorner for Checkbox
    local checkboxUICorner = Instance.new("UICorner")
    checkboxUICorner.CornerRadius = UDim.new(0, 3)
    checkboxUICorner.Parent = checkboxInnerFrame
    NatUI["36"] = checkboxUICorner

    -- Title Label
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.BorderSizePixel = 0
    titleLabel.TextSize = 12
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    titleLabel.TextColor3 = Color3.fromRGB(241, 241, 241)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Size = UDim2.new(0, 157, 0, 30)
    titleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.Text = Title
    titleLabel.Position = UDim2.new(0.03175, 0, 0, 0)
    titleLabel.Parent = checkboxInnerFrame
    NatUI["37"] = titleLabel

    -- Check Frame
    local checkFrame = Instance.new("Frame")
    checkFrame.Name = "Check"
    checkFrame.BorderSizePixel = 0
    checkFrame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
    checkFrame.Size = UDim2.new(0, 20, 0, 20)
    checkFrame.Position = UDim2.new(0.86243, 0, 0.16667, 0)
    checkFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    checkFrame.Parent = checkboxInnerFrame
    NatUI["38"] = checkFrame

    -- UICorner for Check
    local checkUICorner = Instance.new("UICorner")
    checkUICorner.CornerRadius = UDim.new(0, 3)
    checkUICorner.Parent = checkFrame
    NatUI["39"] = checkUICorner

    -- Icon for Check
    local checkIcon = Instance.new("ImageLabel")
    checkIcon.Name = "Icon"
    checkIcon.BorderSizePixel = 0
    checkIcon.BackgroundColor3 = Color3.fromRGB(0, 115, 176)
    checkIcon.Image = "rbxassetid://10709790644"
    checkIcon.Size = UDim2.new(0, 20, 0, 20)
    checkIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    checkIcon.Parent = checkFrame
    NatUI["3a"] = checkIcon

    -- UIStroke for Check Icon
    local checkIconUIStroke = Instance.new("UIStroke")
    checkIconUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    checkIconUIStroke.LineJoinMode = Enum.LineJoinMode.Bevel
    checkIconUIStroke.Color = Color3.fromRGB(31, 31, 31)
    checkIconUIStroke.Parent = checkIcon
    NatUI["3b"] = checkIconUIStroke

    -- Toggle Check Button
    local toggleCheck = Instance.new("ImageButton")
    toggleCheck.Name = "togglecheck"
    toggleCheck.BorderSizePixel = 0
    toggleCheck.ImageTransparency = 1
    toggleCheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    toggleCheck.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    toggleCheck.Size = UDim2.new(0, 20, 0, 20)
    toggleCheck.BackgroundTransparency = 1
    toggleCheck.BorderColor3 = Color3.fromRGB(0, 0, 0)
    toggleCheck.Parent = checkFrame
    NatUI["3c"] = toggleCheck

    toggleCheck.MouseButton1Click:Connect(function()
        local icon = checkIcon -- Corrected reference
        if icon.Visible == false then
            icon.Visible = true
            icon:TweenSize(
                UDim2.new(0, 20, 0, 20),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Linear,
                0.1
            )
            if Callback then pcall(Callback) end -- Added check for Callback existence
        elseif icon.Visible == true then
            icon:TweenSize(
                UDim2.new(0, 0, 0, 0),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Linear,
                0.3
            )
            icon.Visible = false
        end
    end)

    -- LocalScript for Toggle Check
    local toggleCheckLocalScript = Instance.new("LocalScript")
    toggleCheckLocalScript.Parent = toggleCheck
    NatUI["3d"] = toggleCheckLocalScript
end

-- Função para adicionar um botão
function NatUI:Button(Title, Callback)
    -- Button Frame
    local buttonFrame = Instance.new("Frame")
    buttonFrame.Name = "Button"
    buttonFrame.BorderSizePixel = 0
    buttonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    buttonFrame.Size = UDim2.new(0, 189, 0, 30)
    buttonFrame.Position = UDim2.new(0, 0, 0.49844, 0)
    buttonFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    buttonFrame.BackgroundTransparency = 1
    buttonFrame.Parent = NatUI["2c"] -- Parent to BlockScrollbar
    NatUI["3e"] = buttonFrame

    -- Button Inner Frame
    local buttonInnerFrame = Instance.new("Frame")
    buttonInnerFrame.Name = "Button"
    buttonInnerFrame.BorderSizePixel = 0
    buttonInnerFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    buttonInnerFrame.Size = UDim2.new(0, 189, 0, 30)
    buttonInnerFrame.Position = UDim2.new(0, 0, -0.00592, 0)
    buttonInnerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    buttonInnerFrame.Parent = buttonFrame
    NatUI["3f"] = buttonInnerFrame

    -- UICorner for Button
    local buttonUICorner = Instance.new("UICorner")
    buttonUICorner.CornerRadius = UDim.new(0, 3)
    buttonUICorner.Parent = buttonInnerFrame
    NatUI["40"] = buttonUICorner

    -- Title Label
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.BorderSizePixel = 0
    titleLabel.TextSize = 12
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    titleLabel.TextColor3 = Color3.fromRGB(241, 241, 241)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Size = UDim2.new(0, 157, 0, 30)
    titleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.Text = Title
    titleLabel.Position = UDim2.new(0.03175, 0, 0, 0)
    titleLabel.Parent = buttonInnerFrame
    NatUI["41"] = titleLabel

    -- Icon Label
    local iconLabel = Instance.new("ImageLabel")
    iconLabel.Name = "Icon"
    iconLabel.BorderSizePixel = 0
    iconLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    iconLabel.Image = "rbxassetid://10734898355"
    iconLabel.Size = UDim2.new(0, 20, 0, 20)
    iconLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    iconLabel.BackgroundTransparency = 1
    iconLabel.Position = UDim2.new(0.86243, 0, 0.16667, 0)
    iconLabel.Parent = buttonInnerFrame
    NatUI["42"] = iconLabel

    -- Click Button
    local clickButton = Instance.new("ImageButton")
    clickButton.Name = "Click"
    clickButton.BorderSizePixel = 0
    clickButton.ImageTransparency = 1
    clickButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    clickButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    clickButton.Size = UDim2.new(0, 90, 0, 30)
    clickButton.BackgroundTransparency = 1
    clickButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    clickButton.Position = UDim2.new(0.52381, 0, 0, 0)
    clickButton.Parent = buttonInnerFrame
    NatUI["43"] = clickButton

    clickButton.MouseButton1Click:Connect(function()
        if Callback then pcall(Callback) end -- Added check for Callback existence
    end)

    -- LocalScript for Click Button
    local clickLocalScript = Instance.new("LocalScript")
    clickLocalScript.Parent = clickButton
    NatUI["44"] = clickLocalScript
end

-- Função para adicionar um parágrafo
function NatUI:Paragraph(Title, Desc)
    -- Paragraph Frame
    local paragraphFrame = Instance.new("Frame")
    paragraphFrame.Name = "Paragraph"
    paragraphFrame.BorderSizePixel = 0
    paragraphFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    paragraphFrame.Size = UDim2.new(0, 189, 0, 42)
    paragraphFrame.Position = UDim2.new(0, 0, 0.49844, 0)
    paragraphFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    paragraphFrame.BackgroundTransparency = 1
    paragraphFrame.Parent = NatUI["2c"] -- Parent to BlockScrollbar
    NatUI["45"] = paragraphFrame

    -- Paragraph Inner Frame
    local paragraphInnerFrame = Instance.new("Frame")
    paragraphInnerFrame.Name = "Paragraph"
    paragraphInnerFrame.BorderSizePixel = 0
    paragraphInnerFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    paragraphInnerFrame.Size = UDim2.new(0, 189, 0, 42)
    paragraphInnerFrame.Position = UDim2.new(0, 0, -0.00592, 0)
    paragraphInnerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    paragraphInnerFrame.Parent = paragraphFrame
    NatUI["46"] = paragraphInnerFrame

    -- UICorner for Paragraph
    local paragraphUICorner = Instance.new("UICorner")
    paragraphUICorner.CornerRadius = UDim.new(0, 3)
    paragraphUICorner.Parent = paragraphInnerFrame
    NatUI["47"] = paragraphUICorner

    -- Title Label
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.BorderSizePixel = 0
    titleLabel.TextSize = 12
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    titleLabel.TextColor3 = Color3.fromRGB(241, 241, 241)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Size = UDim2.new(0, 183, 0, 19)
    titleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.Text = Title
    titleLabel.Position = UDim2.new(0.03175, 0, 0, 0)
    titleLabel.Parent = paragraphInnerFrame
    NatUI["48"] = titleLabel

    -- Description Label
    local descriptionLabel = Instance.new("TextLabel")
    descriptionLabel.Name = "Description"
    descriptionLabel.TextWrapped = true
    descriptionLabel.BorderSizePixel = 0
    descriptionLabel.TextSize = 11
    descriptionLabel.TextXAlignment = Enum.TextXAlignment.Left
    descriptionLabel.TextYAlignment = Enum.TextYAlignment.Top
    descriptionLabel.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
    descriptionLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    descriptionLabel.TextColor3 = Color3.fromRGB(92, 92, 92)
    descriptionLabel.BackgroundTransparency = 1
    descriptionLabel.Size = UDim2.new(0, 182, 0, 28)
    descriptionLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    descriptionLabel.Text = Desc
    descriptionLabel.Position = UDim2.new(0.03175, 0, 0.30952, 0)
    descriptionLabel.Parent = paragraphInnerFrame
    NatUI["49"] = descriptionLabel
end

-- Função para adicionar um slider
function NatUI:Slider(Title, MaxValue, Callback)
    -- Slider Frame
    local sliderFrame = Instance.new("Frame")
    sliderFrame.Name = "Slider"
    sliderFrame.BorderSizePixel = 0
    sliderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sliderFrame.Size = UDim2.new(0, 189, 0, 42)
    sliderFrame.Position = UDim2.new(0, 0, 0.49844, 0)
    sliderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    sliderFrame.BackgroundTransparency = 1
    sliderFrame.Parent = NatUI["2c"] -- Parent to BlockScrollbar
    NatUI["4a"] = sliderFrame

    -- Slider Inner Frame
    local sliderInnerFrame = Instance.new("Frame")
    sliderInnerFrame.Name = "Slider"
    sliderInnerFrame.BorderSizePixel = 0
    sliderInnerFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    sliderInnerFrame.Size = UDim2.new(0, 189, 0, 41)
    sliderInnerFrame.Position = UDim2.new(0, 0, -0.00592, 0)
    sliderInnerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    sliderInnerFrame.Parent = sliderFrame
    NatUI["4b"] = sliderInnerFrame

    -- UICorner for Slider
    local sliderUICorner = Instance.new("UICorner")
    sliderUICorner.CornerRadius = UDim.new(0, 3)
    sliderUICorner.Parent = sliderInnerFrame
    NatUI["4c"] = sliderUICorner

    -- Title Label
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.BorderSizePixel = 0
    titleLabel.TextSize = 12
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    titleLabel.TextColor3 = Color3.fromRGB(241, 241, 241)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Size = UDim2.new(0, 182, 0, 19)
    titleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.Text = Title
    titleLabel.Position = UDim2.new(0.03175, 0, 0, 0)
    titleLabel.Parent = sliderInnerFrame
    NatUI["4d"] = titleLabel

    -- SliderBackground
    local sliderBackground = Instance.new("Frame")
    sliderBackground.Name = "SliderBackground"
    sliderBackground.BorderSizePixel = 0
    sliderBackground.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
    sliderBackground.Size = UDim2.new(0, 175, 0, 13)
    sliderBackground.Position = UDim2.new(0.02116, 0, 0.45726, 0)
    sliderBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
    sliderBackground.Parent = sliderInnerFrame
    NatUI["4e"] = sliderBackground

    -- UICorner for SliderBackground
    local sliderBackgroundUICorner = Instance.new("UICorner")
    sliderBackgroundUICorner.CornerRadius = UDim.new(0, 3)
    sliderBackgroundUICorner.Parent = sliderBackground
    NatUI["4f"] = sliderBackgroundUICorner

    -- SliderColor
    local sliderColor = Instance.new("Frame")
    sliderColor.Name = "SliderColor"
    sliderColor.BorderSizePixel = 0
    sliderColor.BackgroundColor3 = Color3.fromRGB(0, 115, 176)
    sliderColor.Size = UDim2.new(0, 97, 0, 13)
    sliderColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
    sliderColor.Parent = sliderBackground
    NatUI["50"] = sliderColor

    -- UICorner for SliderColor
    local sliderColorUICorner = Instance.new("UICorner")
    sliderColorUICorner.CornerRadius = UDim.new(0, 3)
    sliderColorUICorner.Parent = sliderColor
    NatUI["51"] = sliderColorUICorner

    -- LocalScript for SliderBackground
    local sliderBackgroundLocalScript = Instance.new("LocalScript")
    sliderBackgroundLocalScript.Parent = sliderBackground
    NatUI["52"] = sliderBackgroundLocalScript

    -- Trigger Button
    local triggerButton = Instance.new("TextButton")
    triggerButton.Name = "Trigger"
    triggerButton.BorderSizePixel = 0
    triggerButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    triggerButton.TextSize = 14
    triggerButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    triggerButton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    triggerButton.Size = UDim2.new(0, 175, 0, 13)
    triggerButton.BackgroundTransparency = 1
    triggerButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    triggerButton.Text = ""
    triggerButton.Parent = sliderBackground
    NatUI["53"] = triggerButton

    -- Count Label
    local countLabel = Instance.new("TextLabel")
    countLabel.Name = "Count"
    countLabel.BorderSizePixel = 0
    countLabel.TextSize = 14
    countLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    countLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    countLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    countLabel.BackgroundTransparency = 1
    countLabel.Size = UDim2.new(0, 40, 0, 13)
    countLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    countLabel.Text = "50"
    countLabel.Position = UDim2.new(0.41655, 0, 0, 0)
    countLabel.Parent = sliderBackground
    NatUI["54"] = countLabel

    -- Output Value
    local outputValue = Instance.new("NumberValue")
    outputValue.Name = "Output"
    outputValue.Value = 0.5
    outputValue.Parent = sliderBackground
    NatUI["55"] = outputValue

    -- LocalScript function for Slider
    local function C_52()
        local script = sliderBackgroundLocalScript -- Corrected reference
        local mouse = game.Players.LocalPlayer:GetMouse()
        local slider = script.Parent
        local fillslider = script.Parent.SliderColor
        local Trigger = script.Parent.Trigger
        local count = script.Parent.Output
        local txt = script.Parent.Count

        txt.Text = tostring(math.round(count.Value * MaxValue))

        local TweenService = game:GetService("TweenService")
        local TweenStyle = TweenInfo.new(0.25, Enum.EasingStyle.Exponential)

        local function UpdateSlider()
            local output = math.clamp((mouse.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1)
            txt.Text = tostring(math.round(output * MaxValue))
            count.Value = output
            fillslider.Size = UDim2.fromScale(count.Value, 1)
            if Callback then pcall(Callback) end -- Added check for Callback existence
            if count.Value ~= output then
                TweenService:Create(fillslider, TweenStyle, {Size = UDim2.fromScale(output, 1)}):Play()
            end

            count.Value = output
        end

        fillslider:GetPropertyChangedSignal("Size"):Connect(function()
            txt.Text = tostring(math.round(fillslider.Size.X.Scale * MaxValue))
        end)

        local slideractive = false

        local function ActivateSlider()
            slideractive = true
            while slideractive do
                UpdateSlider()
                task.wait()
            end
        end

        Trigger.MouseButton1Down:Connect(ActivateSlider)

        game:GetService("UserInputService").InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                slideractive = false
            end
        end)
    end
    task.spawn(C_52)
end

-- UICorner for NathubUI
local nathubUIUICorner = Instance.new("UICorner")
nathubUIUICorner.Parent = NatUI["2"]
NatUI["82"] = nathubUIUICorner

-- UIAspectRatioConstraint for NathubUI
local nathubUIUIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
nathubUIUIAspectRatioConstraint.AspectRatio = 1.46667
nathubUIUIAspectRatioConstraint.Parent = NatUI["2"]
NatUI["83"] = nathubUIUIAspectRatioConstraint

-- Função para abrir a UI
function NatUI:OpenUI(Title, Icon, BackgroundColor, BorderColor)
    -- OpenButton
    local openButton = Instance.new("Frame")
    openButton.Name = "OpenButton"
    openButton.Visible = false
    openButton.BorderSizePixel = 0
    openButton.BackgroundColor3 = Color3.fromRGB(BackgroundColor)
    openButton.BorderMode = Enum.BorderMode.Middle
    openButton.Position = UDim2.new(0.14899, 0, 0.59917, 0)
    openButton.BorderColor3 = Color3.fromRGB(BorderColor)
    openButton.Parent = NatUI["1"]
    NatUI["84"] = openButton

    -- UICorner for OpenButton
    local openButtonUICorner = Instance.new("UICorner")
    openButtonUICorner.Parent = openButton
    NatUI["85"] = openButtonUICorner

    -- Name Label (inside OpenButton)
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Name = "Name"
    nameLabel.BorderSizePixel = 0
    nameLabel.TextSize = 14
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Size = UDim2.new(0, 60, 0, 30)
    nameLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    nameLabel.Text = Title
    nameLabel.Position = UDim2.new(0, 50, 0, -2)
    nameLabel.Parent = openButton
    NatUI["86"] = nameLabel

    -- IconOpen (ImageLabel inside OpenButton)
    local iconOpen = Instance.new("ImageLabel")
    iconOpen.Name = "IconOpen"
    iconOpen.BorderSizePixel = 0
    iconOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    iconOpen.Image = Icon
    iconOpen.Size = UDim2.new(0, 35, 0, 35)
    iconOpen.BorderColor3 = Color3.fromRGB(0, 0, 0)
    iconOpen.BackgroundTransparency = 1
    iconOpen.Position = UDim2.new(0, 8, 0, 4)
    iconOpen.Parent = openButton
    NatUI["87"] = iconOpen

    -- LocalScript for IconOpen
    local iconOpenLocalScript = Instance.new("LocalScript")
    iconOpenLocalScript.Parent = iconOpen
    NatUI["8c"] = iconOpenLocalScript

    -- LocalScript for OpenButton (Drag functionality)
    local openButtonLocalScript = Instance.new("LocalScript")
    openButtonLocalScript.Parent = openButton
    NatUI["89"] = openButtonLocalScript

    -- LocalScript function for OpenButton drag
    local function C_89()
        local script = openButtonLocalScript -- Corrected reference
        local UserInputService = game:GetService("UserInputService")

        local gui = script.Parent

        local dragging
        local dragInput
        local dragStart
        local startPos

        local function update(input)
            local delta = input.Position - dragStart
            gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        gui.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = gui.Position

                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.Ended then
                        dragging = false
                    end
                end)
            end
        end)

        gui.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)

        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end)
    end
    task.spawn(C_89)

    -- LocalScript function for IconOpen click
    local function C_8c()
        local script = iconOpenLocalScript -- Corrected reference
        local Open = script.Parent
        local Open2 = script.Parent.Parent -- This should be the OpenButton frame
        local UI = NatUI["2"] -- Reference to NathubUI

        Open.MouseButton1Click:Connect(function()
            Open2:TweenSize(
                UDim2.new(0, 0, 0, 0),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Sine,
                0.3
            )
            UI:TweenPosition(
                UDim2.new(0.5, 0, 0.5, 0),
                Enum.EasingDirection.Out,
                Enum.EasingStyle.Linear,
                0.2
            )
            task.wait(0) -- Changed wait(0) to task.wait(0)
            Open2.Visible = false
            UI.Visible = true
        end)
    end
    task.spawn(C_8c)

    -- Main LocalScript for UI logic
    local mainLocalScript = Instance.new("LocalScript")
    mainLocalScript.Parent = NatUI["1"]
    NatUI["8d"] = mainLocalScript

    local function C_8d()
        local script = mainLocalScript -- Corrected reference
        local ItemContainer = NatUI["6"].Button -- Reference to the Button frame inside ScrollingFrame
        local Element = NatUI["27"] -- Reference to the Element frame

        for i, v in pairs(ItemContainer:GetChildren()) do
            if v.ClassName == "TextButton" then
                v.MouseButton1Click:Connect(function()
                    for i2, v2 in pairs(Element:GetChildren()) do
                        if v2.Name ~= v.Name then
                            v2.Visible = false
                        else
                            v2.Visible = true
                        end
                    end
                end)
            end
        end
    end
    task.spawn(C_8d)
end

return NatUI["1"]


