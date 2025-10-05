-- 🦦 OTTER CLIENT DEBUG SCRIPT 🦦
-- Run this to diagnose what's happening

print("=== OTTER CLIENT DEBUG ===")
print("Game Name:", game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
print("Game PlaceId:", game.PlaceId)
print("Game GameId:", game.GameId)

-- Check if game file exists
local isfile = isfile or function(file)
	local suc, res = pcall(function() return readfile(file) end)
	return suc and res ~= nil and res ~= ''
end

if isfile("newvape/games/"..game.PlaceId..".lua") then
    print("✅ Game-specific file EXISTS locally")
else
    print("❌ Game-specific file NOT FOUND locally")
    print("Checking GitHub...")
    
    local suc, res = pcall(function()
        return game:HttpGet('https://raw.githubusercontent.com/hijsys/VapeV4ForRoblox/main/games/'..game.PlaceId..'.lua', true)
    end)
    
    if suc and res ~= '404: Not Found' then
        print("✅ Game file EXISTS on GitHub")
    else
        print("❌ Game file NOT on GitHub - will use universal.lua only")
    end
end

-- Check cache folder
if isfolder("newvape") then
    print("📁 Cache folder exists")
    if isfolder("newvape/games") then
        print("📁 Games folder exists")
        local count = 0
        for _, file in ipairs(listfiles("newvape/games")) do
            count = count + 1
        end
        print("   Contains", count, "files")
    end
else
    print("❌ No cache folder - will download fresh")
end

print("=== END DEBUG ===")
print("")
print("If game file is NOT found, that's why you're seeing 'lobby version'")
print("Only universal.lua is loading (which has basic features)")
