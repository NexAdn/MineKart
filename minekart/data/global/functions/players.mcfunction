#
# Player management
#

# Reconnect to world
scoreboard players set @e[scores={leavegame=1..9}] leavegame 10
# tag @a[scores={leavegame=10}] remove player
# execute as @a[scores={leavegame=10}] at @s run tp @s 1409 17 -1075
execute as @a[scores={leavegame=10}] at @s run clear @s
execute as @a[scores={leavegame=10}] at @s run effect clear @s
execute as @a[scores={leavegame=10}] at @s run title @s times 0 50 100
execute as @a[scores={leavegame=10}] at @s run title @s title ["", {"text": "Willkommmen,", "color": "yellow"}]
execute as @a[scores={leavegame=10}] at @s run title @s subtitle ["", {"selector":"@s", "color": "yellow"}]

# Reset logout state on login
scoreboard players set @s[scores={leavegame=10}] leavegame 0
