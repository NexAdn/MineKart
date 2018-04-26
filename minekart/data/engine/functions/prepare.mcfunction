#
# Prepare the track
#

# Reset
kill @e[tag=prepare]
kill @e[tag=vp]
kill @e[tag=target]
scoreboard players reset * markerpos
scoreboard players reset * vp1
# scoreboard players reset * vp2
# scoreboard players reset * vp3
scoreboard players reset * tracklength

# Preparation
execute as @r[tag=player, scores={leavegame=0}] at @e[tag=strecke, distance=..30, limit=1, sort=nearest] run summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, Marker: 1b, Invisible: 1b, PersistenceRequired: 1b, Tags: ["prepare"], ArmorItems: [{}, {}, {}, {id: "minecraft:diamond_block", Count: 1b}]}
# TODO: Error detection

# Detection
execute as @r[tag=player] if entity @p[tag=player] run function engine:prepare_scan
scoreboard players reset @e[tag=marker,scores={markerpos=0}] markerpos
scoreboard players remove @e[tag=prepare] markerpos 1
scoreboard players operation @e[tag=strecke] tracklength = @e[tag=prepare] markerpos
# TODO: Error detection (finish line nearby?)

# Spawn virtual players
execute as @e[tag=prepare] at @s run summon boat ~ ~ ~ {Type:"oak", Tags: ["kart", "vp", "vp1"], Passengers: [{id: "minecraft:villager", CareerLevel: 1, Tags: ["vp"]}]}
# execute as @e[tag=prepare] at @s run summon boat ~ ~ ~ {Type:"oak", Tags: ["kart", "vp", "vp2"], Passengers: [{id: "minecraft:villager", CareerLevel: 1, Tags: ["vp"]}]}
# execute as @e[tag=prepare] at @s run summon boat ~ ~ ~ {Type:"oak", Tags: ["kart", "vp", "vp3"], Passengers: [{id: "minecraft:villager", CareerLevel: 1, Tags: ["vp"]}]}

# Positioning
execute as @e[tag=prepare] at @s run spreadplayers ~ ~ 3 3 false @e[type=boat, tag=kart]
execute as @e[tag=prepare] as @e[type=boat, tag=kart] at @s run teleport @s ~ ~ ~ facing entity @e[tag=markrer, limit=1, scores={markerpos=1}]

### MISSING CODE ###
### ............ ###
