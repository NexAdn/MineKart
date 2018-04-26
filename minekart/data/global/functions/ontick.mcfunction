#
# Loop executor body
#
function global:players
function global:entity

# Main memory
execute unless entity @e[tag=mk] run summon armor_stand 1403 12 -1110 {Marker: 1b, PersistenceRequired: 1b, Tags: ["mk"], ArmorItems:[{}, {}, {}, {id: "minecraft:diamon_block", Count: 1b}], CustomName: "{\"text\": \"MineKart\"}"}

# Gameloop
execute if entity @e[tag=mk, scores={gamerun=1}] run function engine:gametick
