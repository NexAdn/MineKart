#
# Loop executor body
#
function global:players
function global:entity

# Main memory
execute unless entity @e[tag=mk] run summon armor_stand 1367 12 -1110 {Marker: 1b, PersistenceRequired: 1b, Tags: ["mk"], ArmorItems:[{}, {}, {}, {id: "minecraft:diamond_block", Count: 1b}], CustomName: "{\"text\": \"MineKart\"}"}

# Gameloop
execute if entity @e[tag=mk, scores={gamerun=1}] run function engine:gametick

# Track loader
execute if entity @e[tag=mk, scores={ladeverzoegerung=0..}] run function global:loadexecute
