#
# Prepare the track
#

###
# FIXME: execute as @r ersetzen durch einmaligen @r → tag, danach über @p[tag=]
###

# Cleanup
kill @e[type=armor_stand, tag=prepare]
scoreboard players reset * markerpos

# Preparation
execute as @r[tag=player] at @e[tag=strecke,distance=..30, limit=1, sort=nearest] at @e[tag=marker, limit=1, sort=nearest] run summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, Marker: 1b, Invisible: 1b, PersistenceRequired:1b, Tags:["prepare"], ArmorItems:[{}, {}, {}, {id:"minecraft:diamond_block", Count:1b}]}
scoreboard players set @e[tag=marker] markerpos 0
execute as @e[tag=prepare] at @s run scoreboard players set @e[tag=strecke, limit=1, sort=nearest] markerpos 1

# Detection
execute as @r[tag=player] if entity @p[tag=player] run function engine:prepare_run
scoreboard players reset @e[tag=marker,scores={markerpos=0}] markerpos
# Cleanup
kill @e[tag=prepare]
