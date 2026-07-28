# jraxion_megaphone

A free megaphone for FiveM roleplay servers. Players equip a megaphone item, and their voice carries across a wide radius through pma-voice — for protests, police lines, market traders and anyone who needs to be heard.

![Platform](https://img.shields.io/badge/platform-FiveM-orange)
![Frameworks](https://img.shields.io/badge/frameworks-QBCore%20%7C%20ESX%20%7C%20Qbox-blue)
![Language](https://img.shields.io/badge/language-Lua-000080)
![Price](https://img.shields.io/badge/price-free-success)

📺 **[Showcase and discussion on the CFX forums](https://forum.cfx.re/t/free-megaphone-script/5049366/)**

![jraxion_megaphone](https://forum-cfx-re.akamaized.net/original/4X/4/d/6/4d6ce0a5aa52d7196479943a1e0ce74d6fb454b5.jpeg)

## Requirements

| | |
| --- | --- |
| Framework | QBCore, ESX or Qbox |
| Voice | [pma-voice](https://github.com/AvarianKnight/pma-voice) |
| Library | [jraxion_lib](https://github.com/JRaxion-Development/jraxion_lib) |
| Inventory | Any — see the [supported list](https://github.com/JRaxion-Development/jraxion_lib/blob/main/shared/config.lua) |

## Installation

**1. Install the library**

Download [jraxion_lib](https://github.com/JRaxion-Development/jraxion_lib/releases) and drop it into `resources/`.

**2. Configure it**

Open `jraxion_lib/shared/config.lua` and set your framework, inventory and notification resources. Leaving an option as `nil` lets the library detect it automatically.

**3. Install this resource**

Copy `jraxion_megaphone` into `resources/` and add both to your `server.cfg`, library first:

```cfg
ensure jraxion_lib
ensure jraxion_megaphone
```

**4. Add the items**

Item definitions for both ESX and QBCore are in the [`items/`](items) folder. Copy the ones matching your framework into your shared items file.

**5. Register the emote**

Add this to `dpemotes`, or whichever emote menu you run:

```lua
["megaphone"] = {"molly@megaphone", "megaphone_clip", "Megaphone", AnimationOptions =
{
    Prop = "prop_megaphone_01",
    PropBone = 28422,
    PropPlacement = {0.050000, 0.054000, -0.0060, -71.885498, -13.088900, -16.0242},
    EmoteLoop = true,
    EmoteMoving = true,
}},
```

**6. Restart the server.**

## Configuration

`config.lua` holds the voice range, item name and usage settings.

## Support

Open an [issue](https://github.com/JRaxion-Development/jraxion_megaphone/issues), or reply on the [CFX forum thread](https://forum.cfx.re/t/free-megaphone-script/5049366/).

## More from JRaxion

[jraxion.tebex.io](https://jraxion.tebex.io/)
