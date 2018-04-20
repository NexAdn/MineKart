#
# Rekursion zur Streckenabtastung
#
execute as @e[tag=prepare] at @s run teleport @e[tag=marker, limit=1, scores={markerpos=0}, sort=nearest]
execute as @e[tag=prepare] at @s run scoreboard players operation @e[tag=marker, limit=1, scores={markerpos=0}, sort=nearest] markerpos = @s markerpos
scoreboard players add @e[tag=prepare] markerpos 1

# Recursion
execute as @e[tag=prepare] at @s if entity @e[tag=marker, limit=1, sort=nearest, scores={markerpos=0}, distance=..7] run function engine:prepare_scan
