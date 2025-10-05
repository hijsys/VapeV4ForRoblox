-- 🦦 OTTER CLIENT - FORCE FRESH LOAD 🦦
-- Run this to bypass ALL caching and load fresh from GitHub

-- Delete all cached files
if delfolder then
    pcall(function() delfolder("newvape") end)
end

-- Wait a moment
task.wait(1)

-- Force fresh download by bypassing GitHub CDN cache
local timestamp = os.time()
local url = "https://raw.githubusercontent.com/hijsys/VapeV4ForRoblox/main/loader.lua?" .. timestamp

-- Load the fresh loader
local success, err = pcall(function()
    loadstring(game:HttpGet(url, true), 'loader')()
end)

if not success then
    warn("❌ Failed to load Otter Client: " .. tostring(err))
else
    print("✅ Otter Client loading...")
end
