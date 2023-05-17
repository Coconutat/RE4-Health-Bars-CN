# "Health Bars" Mod for Resident Evil 4 Remake

Language：  
**English** | [简体中文](README_CN.md) 

***

Mod for Resident Evil 4 Remake that draws health bars on top of enemies' heads.

![health_bars_2](https://user-images.githubusercontent.com/30152047/226180919-2ddaacc2-f8c7-4688-8ec0-1958da87f91a.png)


# Links
* **[Nexus Mods](https://www.nexusmods.com/residentevil42023/mods/84)**

# Requirements
1. [REFramework](https://www.nexusmods.com/residentevil42023/mods/12) (v1.460 or above);
2. [REFramework Direct2D](https://www.nexusmods.com/residentevil42023/mods/83) (v0.4.0 or above).

# How to install:
1. Install [REFramework](https://www.nexusmods.com/residentevil42023/mods/12);
2. (Optionally) Install [REFramework Direct2D](https://www.nexusmods.com/residentevil42023/mods/83);
3. Download the mod:
    * Official release can be downloaded from [Nexus Mods](https://www.nexusmods.com/residentevil42023/mods/84);
    * Nightly builds are available in [this repo](https://github.com/GreenComfyTea/RE4-Health-Bars) and can contain broken functionality, debugging info on screen, bugs and might require the latest [nightly build](https://github.com/praydog/REFramework-nightly/releases) of [REFramework](https://www.nexusmods.com/residentevil42023/mods/12). Use with caution!
4. Extract the mod from the archive and place it in Resident Evil 4 folder. Final path should look like this: `/RESIDENT EVIL 4  BIOHAZARD RE4/reframework/autorun/Health_Bars.lua`

# Credits
**GreenComfyTea** - creator of the mod and it's main contributor.
  
***
# Support

You can support me by donating! I would appreciate it! But anyway, thank you for using this mod!

 <a href="https://streamelements.com/greencomfytea/tip">
  <img alt="Qries" src="https://panels.twitch.tv/panel-48897356-image-c6155d48-b689-4240-875c-f3141355cb56">
</a>
<a href="https://ko-fi.com/greencomfytea">
  <img alt="Qries" src="https://panels.twitch.tv/panel-48897356-image-c2fcf835-87e4-408e-81e8-790789c7acbc">
</a>

# How to compile ?
You need: 
+ [lua-amalg](https://github.com/siffiejoe/lua-amalg)    
+ [Lua 5.4+](https://www.lua.org/)  
Use this software to compile the all files to one file.  
  
Using commands:  
`"D:\Programs\Lua Amalg\lua54.exe" amalg.lua -o Health_Bars_precompiled.lua -d -s "Your Path!!!!" Health_Bars.bar_customization Health_Bars.config Health_Bars.customization_menu Health_Bars.drawing Health_Bars.enemy_handler Health_Bars.gui_handler Health_Bars.label_customization Health_Bars.player_handler Health_Bars.screen Health_Bars.singletons Health_Bars.time Health_Bars.utils`  
  
# Thanks  
Chinese translate by [Coconutat](https://github.com/Coconutat)  
Thanks support by [GreenComfyTea](https://github.com/GreenComfyTea)    
Thanks to [GreenComfyTea](https://github.com/GreenComfyTea) for this amazing project.  
