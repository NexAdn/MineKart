#
# Rekursion zur Streckenabtastung
#
execute as @e[tag=prepare] at @s run teleport @e[tag=marker, limit=1, scores={markerpos=0}, sort=neares]
execute as @e[tag=prepare] at @s run scoreboard players operation @e[tag=marker, limit=1, scores={markerpos=0}, sort=nearest] markerpos = @s markerpos
