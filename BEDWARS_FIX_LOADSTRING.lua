-- 🦦 OTTER CLIENT - BEDWARS SPECIFIC FIX 🦦
-- Use this if you're playing BedWars

print("🦦 Otter Client - BedWars Edition Loading...")
print("")
print("Game: BedWars (PlaceId: 6872274481)")
print("")

-- Step 1: Delete cache
print("Step 1/3: Clearing cache...")
if delfolder then
    local success = pcall(function()
        delfolder("newvape")
    end)
    if success then
        print("✅ Cache deleted")
    else
        warn("⚠️ Could not auto-delete cache")
        print("👉 Manually delete 'newvape' folder")
    end
else
    warn("⚠️ delfolder not supported by your executor")
    print("👉 Manually delete 'newvape' folder and relaunch")
end

-- Step 2: Wait
print("Step 2/3: Waiting for file system...")
task.wait(3)

-- Step 3: Load with cache bypass
print("Step 3/3: Downloading Otter Client...")
local timestamp = tostring(os.time())
local url = "https://raw.githubusercontent.com/hijsys/VapeV4ForRoblox/main/NewMainScript.lua?" .. timestamp

local success, result = pcall(function()
    loadstring(game:HttpGet(url, true))()
end)

if success then
    print("")
    print("✅ Otter Client loading for BedWars!")
    print("")
    print("Expected Features:")
    print("✅ OtterAura - Enhanced combat with 15 target support")
    print("✅ AutoBlock - Automatic blocking")
    print("✅ Custom Animations - Multiple animation modes")
    print("✅ ProjectileAura - Auto-aim projectiles")
    print("✅ Fly - Multiple fly modes")
    print("✅ Speed - Movement speed boost")
    print("✅ And 20+ more modules!")
    print("")
    print("GUI will say: '🦦 Otter Client 4.18'")
else
    warn("❌ Failed to load:", tostring(result))
    print("")
    print("Troubleshooting:")
    print("1. Wait 10 minutes (GitHub CDN cache)")
    print("2. Make sure you DELETED newvape folder")
    print("3. Try a different executor")
    print("4. Discord: https://discord.gg/nbR79PfPBP")
end
