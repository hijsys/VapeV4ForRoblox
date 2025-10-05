-- 🦦 OTTER CLIENT COMPLETE FIX SCRIPT 🦦
-- This will fix EVERYTHING

print("🦦 Starting Otter Client Complete Fix...")

-- Step 1: Force delete ALL cache
print("Step 1/4: Deleting cache...")
if delfolder then
    local success = pcall(function()
        delfolder("newvape")
    end)
    if success then
        print("✅ Cache deleted")
    else
        warn("⚠️ Could not delete cache automatically")
        print("👉 Manually delete 'newvape' folder in your executor directory")
    end
else
    warn("⚠️ delfolder not supported")
    print("👉 Manually delete 'newvape' folder in your executor directory")
end

-- Step 2: Wait for file system
print("Step 2/4: Waiting...")
task.wait(2)

-- Step 3: Download fresh with cache bypass
print("Step 3/4: Downloading fresh Otter Client...")
local timestamp = tostring(os.time())
local baseUrl = "https://raw.githubusercontent.com/hijsys/VapeV4ForRoblox/main/"

-- Force bypass GitHub CDN cache
local url = baseUrl .. "NewMainScript.lua?" .. timestamp

print("Fetching from:", url:sub(1, 80) .. "...")

local success, result = pcall(function()
    return loadstring(game:HttpGet(url, true))()
end)

if success then
    print("Step 4/4: Loading Otter Client...")
    print("✅ DONE! Otter Client should load now")
    print("")
    print("Expected:")
    print("- Notification: '🦦 Otter Client Loaded!'")
    print("- GUI Version: '🦦 Otter Client 4.18'")
    print("- Module: 'OtterAura' in Blatant category")
    print("")
    print("If you still see old Vape, wait 5 minutes then try again")
else
    warn("❌ Error loading:", tostring(result))
    print("")
    print("Troubleshooting:")
    print("1. Check your internet connection")
    print("2. Try a different executor")
    print("3. Manually delete 'newvape' folder")
    print("4. Join Discord: https://discord.gg/nbR79PfPBP")
end
