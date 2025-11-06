# A FREE megaphone script for QBCore Framework, ESX Framework.

Showcase : [CFX](https://forum.cfx.re/t/free-megaphone-script/5049366/)

## Dependency

- QBCore, ESX or Qbox
- pma-voice
- jraxion_lib [jraxion_lib](https://github.com/jraxion/jraxion_lib)
- Inventory (All inventories supported. Check https://github.com/jraxion/jraxion_lib/blob/fd0d9a6bb1e1b3920d8cc6e90fabf7994cb50905/shared/config.lua#L30 )

## Installation

Step 1 - Download [jraxion_lib](https://github.com/jraxion/jraxion_lib)

Step 2 - Open jraxion_lib/shared/config.lua and configure your framework, inventory, notifications etc.

Step 3 - Add items from items/ [Folder] in ESX or QBCore depending on your framework. Check the folder called items.

Step 4 - Add the following code to dpemotes or your emote menu :

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

![jraxion_megaphone](https://forum-cfx-re.akamaized.net/original/4X/4/d/6/4d6ce0a5aa52d7196479943a1e0ce74d6fb454b5.jpeg)
