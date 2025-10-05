# 🦦 Otter Client - Changelog

## Version 4.18 - OtterAura Release

### 🎉 Major Changes

#### **Complete Rebrand: Vape V4 → Otter Client**
- Renamed all user-facing "Vape" references to "Otter Client"
- Added otter emoji (🦦) to branding throughout
- Updated all GUI text and notifications
- Refreshed README with comprehensive feature list
- Enhanced CONTRIBUTING.md with modern guidelines

#### **🦦 OtterAura Combat System (Formerly Killaura)**
Revolutionary combat module with massive enhancements across all games!

### ✨ OtterAura Features

#### **Universal Enhancements (games/universal.lua)**
- ✅ **Smart Target Prioritization** - Automatically targets low health + close enemies
- ✅ **Smooth Rotation System** - Interpolated camera movement (lerp-based)
- ✅ **Optimized Attack Timing** - Micro-jitter for better server sync
- ✅ **Enhanced Hitbox Detection** - Larger detection areas (4.5 studs)
- ✅ **Extended Ranges** - Up to 35 studs (was 30)
- ✅ **Higher CPS** - Up to 25 attacks/second (was 20)
- ✅ **More Simultaneous Targets** - Up to 15 (was 10)
- ✅ **Better Visual Effects** - 15 particle emitters, brighter particles

#### **BedWars Specific (games/6872274481.lua)**
- ✅ **Advanced Multi-Target** - Up to 15 targets (was 5)
- ✅ **Faster Update Rate** - 180Hz capability (was 120Hz)
- ✅ **Improved Animation Speed** - Range 0.5-3x (was 0-2x)
- ✅ **Extended Range** - Up to 22 studs (was 18)
- ✅ **Larger Particles** - Size up to 1.5 (was 1.0)

#### **Other Game Enhancements**
- ✅ **SkyWars (8768229691.lua)** - Animation system improvements
- ✅ **Arsenal (11630038968.lua)** - AutoBlock + LegitAura optimization
- ✅ **Knife Combat (5938036553.lua)** - Weapon detection
- ✅ **Custom Games (79695841807485.lua)** - Better targeting
- ✅ **Modular System (11156779721.lua)** - Optimized function architecture

### 🎨 Visual Improvements
- 💎 **Brighter particles** - Brightness 2.0 (was 1.5)
- 🌈 **Better default colors** - Improved hue/opacity
- 📦 **Larger target boxes** - More visible
- ⏱️ **Longer particle lifetime** - 0.5s (was 0.4s)
- 💨 **Faster particle speed** - 18 (was 16)

### ⚡ Performance Optimizations
- ✅ **Math.clamp protection** - Prevents calculation errors
- ✅ **Better angle calculations** - More accurate targeting
- ✅ **Optimized loops** - Reduced overhead
- ✅ **Enhanced frame timing** - Smoother execution
- ✅ **Smarter target sorting** - Health + distance based

### 📝 Files Modified

#### **Core Files**
- `README.md` - Complete rewrite with Otter Client branding
- `CONTRIBUTING.md` - Enhanced with modern guidelines
- `loadstring` - Updated to use correct repository
- `main.lua` - Updated notifications and branding
- `guis/new.lua` - Changed version display to "🦦 Otter Client"

#### **Game Files (OtterAura Rename)**
- `games/universal.lua` - Enhanced with smart targeting
- `games/6872274481.lua` - BedWars optimizations
- `games/8768229691.lua` - Animation improvements
- `games/11630038968.lua` - AutoBlock optimization
- `games/5938036553.lua` - Knife combat enhancements
- `games/79695841807485.lua` - Targeting logic improvements
- `games/11156779721.lua` - Modular system optimization
- `games/606849621.lua` - Module list update

#### **Additional Game Files**
- All other game files updated with "Otter Client" notifications

### 🔧 Technical Changes
- Replaced 190+ instances of "Killaura" → "OtterAura"
- Updated all "store.KillauraTarget" → "store.OtterAuraTarget"
- Changed "KillauraFunctions" → "OtterAuraFunctions"
- Improved error handling messages
- Enhanced tooltip descriptions

### 📜 Loadstring
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/hijsys/VapeV4ForRoblox/main/NewMainScript.lua", true))()
```

### 🙏 Credits
- Original Vape V4 by 7GrandDad
- OtterAura enhancements and rebranding by Otter Client team
- All original contributors maintained

---

**🦦 Swim to Victory with Otter Client! 🦦**
