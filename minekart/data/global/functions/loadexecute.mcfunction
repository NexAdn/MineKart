#
# Lazy track loader
#

execute if entity @e[tag=mk, scores={ladeverzoegerung=110}] run setblock 1376 49 -1200 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=130}] run setblock 1376 49 -1168 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=170}] run setblock 1376 49 -1136 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=20}] run setblock 1376 49 -1104 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=230}] run setblock 1376 49 -1072 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=210}] run setblock 1408 49 -1200 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=250}] run setblock 1408 49 -1168 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=160}] run setblock 1408 49 -1136 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=60}] run setblock 1408 49 -1104 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=150}] run setblock 1408 49 -1072 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=240}] run setblock 1440 49 -1200 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=90}] run setblock 1440 49 -1168 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=80}] run setblock 1440 49 -1136 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=100}] run setblock 1440 49 -1104 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=200}] run setblock 1440 49 -1072 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=10}] run setblock 1472 49 -1200 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=120}] run setblock 1472 49 -1168 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=180}] run setblock 1472 49 -1136 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=40}] run setblock 1472 49 -1104 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=30}] run setblock 1472 49 -1072 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=220}] run setblock 1504 49 -1200 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=70}] run setblock 1504 49 -1168 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=140}] run setblock 1504 49 -1136 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=190}] run setblock 1504 49 -1104 minecraft:redsteone_block destroy
execute if entity @e[tag=mk, scores={ladeverzoegerung=50}] run setblock 1504 49 -1072 minecraft:redsteone_block destroy

execute if entity @e[tag=mk, scores={ladeverzoegerung=250}] run bossbar remove minecraft:streckeladen
execute if entity @e[tag=mk, scores={ladeverzoegerung=250}] run scoreboard objectives remove ladeverzoegerung
execute store result bossbar minecraft:streckeladen value run scoreboard players get @e[tag=mk, limit=1] ladeverzoegerung

scoreboard players add @e[tag=mk] ladeverzoegerung 1
