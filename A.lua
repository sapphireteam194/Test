-- Robust loader for Twsf (fixed)
local RAW_URL = "https://raw.githubusercontent.com/vitorffpro888/VITOR-HUB-V1-lua/main/Twsf.txt"

-- 1) fetch
local ok, body = pcall(function() return game:HttpGet(RAW_URL) end)
if not ok then
    warn("HttpGet failed:", body)
    return
end

-- quick 404/HTML check
local bodyLower = tostring(body):lower()
if bodyLower:find("<!doctype html") or bodyLower:find("404") then
    warn("HttpGet returned HTML/404. Open the file in GitHub, click RAW and paste that raw URL here.")
    return
end

-- 2) compile
local chunk, compileErr = loadstring(body)
if not chunk then
    warn("loadstring compile error:", compileErr)
    return
end

-- 3) execute and capture returned values (Library, SaveManager, InterfaceManager)
local ok2, a, b, c = pcall(chunk)
if not ok2 then
    warn("runtime error while executing library chunk:", a) -- 'a' is the error message
    return
end

local Library, SaveManager, InterfaceManager = a, b, c

if type(Library) ~= "table" then
    warn("Loaded chunk did not return a Library table. got:", type(Library))
    return
end

-- 4) wire InterfaceManager (if present)
if InterfaceManager and type(InterfaceManager.SetLibrary) == "function" then
    pcall(function()
        InterfaceManager:SetLibrary(Library)
        InterfaceManager:SetFolder("MyHub_Config") -- choose folder name for saved options
    end)
end

-- 5) print available themes so you can choose a valid one
if Library.Themes and type(Library.Themes) == "table" then
    print("Available themes:", table.concat(Library.Themes, ", "))
end

-- 6) pick a theme safely (change "Blue" to whichever you want; it will fallback)
local preferredTheme = "Blue"
local themeToUse = nil
if Library.Themes then
    if table.find(Library.Themes, preferredTheme) then
        themeToUse = preferredTheme
    else
        themeToUse = Library.Themes[1] or "SpeedHubX"
        warn(("Preferred theme '%s' not found; falling back to '%s'"):format(preferredTheme, themeToUse))
    end
else
    themeToUse = "SpeedHubX"
end

-- 7) create window (note commas between fields; Title and SubTitle are separate)
local ok3, WindowOrErr = pcall(function()
    return Library:CreateWindow({
        Title = "Fluent",
        SubTitle = "by dawid",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Theme = themeToUse,
        Acrylic = false, -- true if you want acrylic (requires higher graphics)
    })
end)

if not ok3 then
    warn("Library:CreateWindow error:", WindowOrErr)
    return
end

local Window = WindowOrErr
if Window then
    print("Window created successfully.")
else
    warn("Library:CreateWindow returned nil; check earlier warnings.")
end
