#
# Virtual Player 1
#

# Motion
execute as @e[tag=target] at @s align xyz positioned ~7 ~-10 ~7 as @e[type=boat, dx=-7, dy=20, dz=-6, tag=vp1] run data merge entity @e[type=boat, limit=1] {Type:"oak", Motion:[-1.0,0.0,-1.0]}
execute as @e[tag=target] at @s align xyz positioned ~7 ~-10 ~-7 as @e[type=boat, dx=-6, dy=20, dz=7, tag=vp1] run data merge entity @e[type=boat, limit=1] {Type:"oak", Motion:[-1.0,0.0,1.0]}
execute as @e[tag=target] at @s align xyz positioned ~-7 ~-10 ~-7 as @e[type=boat, dx=7, dy=20, dz=6, tag=vp1] run data merge entity @e[type=boat, limit=1] {Type:"oak", Motion:[1.0,0.0,1.0]}
execute as @e[tag=target] at @s align xyz positioned ~-7 ~-10 ~7 as @e[type=boat, dx=6, dy=20, dz=-7, tag=vp1] run data merge entity @e[type=boat, limit=1] {Type:"oak", Motion:[1.0,0.0,-1.0]}

# Position calculation
execute as @e[tag=vp1, type=boat] at @s if entity @e[tag=vp1, type=armor_stand, distance=..2] run scoreboard players set @s vp1 1

execute as @e[tag=vp1, type=boat] at @s if entity @e[tag=vp1, type=boat, scores={vp1=1}] as @e[tag=vp1, type=armor_stand] at @s run scoreboard players operation @s position = @e[tag=marker, sort=nearest, limit=1] markerpos
execute as @e[tag=vp1, type=boat] at @s if entity @e[tag=vp1, type=boat, scores={vp1=1}] as @e[tag=vp1, type=armor_stand] as @e[tag=marker, sort=nearest, limit=5] at @s run scoreboard players operation @s vp1 = @s markerpos
execute as @e[tag=vp1, type=boat] at @s if entity @e[tag=vp1, type=boat, scores={vp1=1}] as @e[tag=vp1, type=armor_stand] as @e[tag=marker, sort=nearest, limit=5] at @s run scoreboard players operation @s vp1 -= @e[tag=vp1, type=armor_stand] position
execute as @e[tag=vp1, type=boat] at @s if entity @e[tag=vp1, type=boat, scores={vp1=1}] as @e[tag=vp1, type=armor_stand] at @s run teleport @s @e[tag=marker, scores={vp1=1}, limit=1]
execute as @e[tag=vp1, type=boat] at @s if entity @e[tag=vp1, type=boat, scores={vp1=1}] as @e[type=armor_stand, tag=vp1] at @s run spreadplayers ~ ~ 1 3 false @s

execute as @e[tag=vp1, type=boat] at @s if entity @e[tag=vp1, type=boat, scores={vp1=1}] run scoreboard players set @s vp1 0

# Round reset
execute as @e[tag=vp1, type=boat] at @s if entity @e[tag=vp1, type=armor_stand, distance=..2] as @e[tag=vp1, type=armor_stand] at @s run scoreboard players operation @s vp1 = @e[tag=marker, limit=1, sort=nearest] markerpos
execute as @e[tag=vp1, type=boat] at @s if entity @e[tag=vp1, type=armor_stand, distance=..2] as @e[tag=vp1, type=armor_stand] at @s run scoreboard players operation @s vp1 -= @e[tag=strecke] tracklength
execute as @e[tag=vp1, type=boat] at @s if entity @e[tag=vp1, type=armor_stand, distance=..2] as @e[tag=vp1, type=armor_stand] at @s if entity @s[scores={vp1=0}] run teleport @s @e[tag=marker, limit=1, sort=nearest, scores={markerpos=1}]
