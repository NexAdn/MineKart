#
# Virtual Player 1
#

# Motion
execute as @e[tag=target] at @s align xyz positioned ~7 ~-10 ~7 as @e[type=boat, dx=-7, dy=20, dz=-6, tag=vp1] run data merge entity @e[type=boat, limit=1] {Type:"oak", Motion:[-1.0,0.0,-1.0]}
execute as @e[tag=target] at @s align xyz positioned ~7 ~-10 ~-7 as @e[type=boat, dx=-6, dy=20, dz=7, tag=vp1] run data merge entity @e[type=boat, limit=1] {Type:"oak", Motion:[-1.0,0.0,1.0]}
execute as @e[tag=target] at @s align xyz positioned ~-7 ~-10 ~-7 as @e[type=boat, dx=7, dy=20, dz=6, tag=vp1] run data merge entity @e[type=boat, limit=1] {Type:"oak", Motion:[1.0,0.0,1.0]}
execute as @e[tag=target] at @s align xyz positioned ~-7 ~-10 ~7 as @e[type=boat, dx=6, dy=20, dz=-7, tag=vp1] run data merge entity @e[type=boat, limit=1] {Type:"oak", Motion:[1.0,0.0,-1.0]}
