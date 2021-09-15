#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation temp0 rng = state rng
scoreboard players operation temp0 rng *= a rng
scoreboard players operation temp0 rng += c rng
scoreboard players operation temp0 rng %= m rng
scoreboard players operation state rng = temp0 rng
scoreboard players operation rng mv.temp = temp0 rng
scoreboard players operation rng mv.temp /= #100000 rng
scoreboard players set min rng 0
scoreboard players set max rng 41
scoreboard players operation size rng = max rng
scoreboard players operation size rng -= min rng
scoreboard players operation rng mv.temp %= size rng
scoreboard players operation rng mv.temp += min rng
execute if score rng mv.temp matches 0 run execute at @s run function villager_list:armor_enchanter
execute if score rng mv.temp matches 1 run execute at @s run function villager_list:beekeeper
execute if score rng mv.temp matches 2 run execute at @s run function villager_list:breeder
execute if score rng mv.temp matches 3 run execute at @s run function villager_list:brewer
execute if score rng mv.temp matches 4 run execute at @s run function villager_list:combat_enchanter
execute if score rng mv.temp matches 5 run execute at @s run function villager_list:concrete_seller
execute if score rng mv.temp matches 6 run execute at @s run function villager_list:cynophilist
execute if score rng mv.temp matches 7 run execute at @s run function villager_list:desert_explorer
execute if score rng mv.temp matches 8 run execute at @s run function villager_list:disc_seller
execute if score rng mv.temp matches 9 run execute at @s run function villager_list:dye_seller
execute if score rng mv.temp matches 10 run execute at @s run function villager_list:egg
execute if score rng mv.temp matches 11 run execute at @s run function villager_list:emerald_exchanger
execute if score rng mv.temp matches 12 run execute at @s run function villager_list:enchanter_1
execute if score rng mv.temp matches 13 run execute at @s run function villager_list:enchanter_2
execute if score rng mv.temp matches 14 run execute at @s run function villager_list:enchanter_3
execute if score rng mv.temp matches 15 run execute at @s run function villager_list:end_explorer
execute if score rng mv.temp matches 16 run execute at @s run function villager_list:engineer
execute if score rng mv.temp matches 17 run execute at @s run function villager_list:firework
execute if score rng mv.temp matches 18 run execute at @s run function villager_list:fisherman
execute if score rng mv.temp matches 19 run execute at @s run function villager_list:flourist
execute if score rng mv.temp matches 20 run execute at @s run function villager_list:fruiterer
execute if score rng mv.temp matches 21 run execute at @s run function villager_list:glazed_terracotta_seller
execute if score rng mv.temp matches 22 run execute at @s run function villager_list:griefer
execute if score rng mv.temp matches 23 run execute at @s run function villager_list:head_seller
execute if score rng mv.temp matches 24 run execute at @s run function villager_list:horse_rider
execute if score rng mv.temp matches 25 run execute at @s run function villager_list:hunter
execute if score rng mv.temp matches 26 run execute at @s run function villager_list:ice_maker
execute if score rng mv.temp matches 27 run execute at @s run function villager_list:lumberjack
execute if score rng mv.temp matches 28 run execute at @s run function villager_list:merchant
execute if score rng mv.temp matches 29 run execute at @s run function villager_list:miner
execute if score rng mv.temp matches 30 run execute at @s run function villager_list:mizab
execute if score rng mv.temp matches 31 run execute at @s run function villager_list:mob_hunter
execute if score rng mv.temp matches 32 run execute at @s run function villager_list:mushroom
execute if score rng mv.temp matches 33 run execute at @s run function villager_list:nether_explorer
execute if score rng mv.temp matches 34 run execute at @s run function villager_list:quartz_seller
execute if score rng mv.temp matches 35 run execute at @s run function villager_list:railman
execute if score rng mv.temp matches 36 run execute at @s run function villager_list:redstoner
execute if score rng mv.temp matches 37 run execute at @s run function villager_list:sea_diver
execute if score rng mv.temp matches 38 run execute at @s run function villager_list:tool_enchanter
execute if score rng mv.temp matches 39 run execute at @s run function villager_list:turtle_man
execute if score rng mv.temp matches 40 run execute at @s run function villager_list:wither_killer
scoreboard players operation temp0 rng = state rng
scoreboard players operation temp0 rng *= a rng
scoreboard players operation temp0 rng += c rng
scoreboard players operation temp0 rng %= m rng
scoreboard players operation state rng = temp0 rng
scoreboard players operation rng mv.temp = temp0 rng
scoreboard players operation rng mv.temp /= #100000 rng
scoreboard players set min rng 0
scoreboard players set max rng 41
scoreboard players operation size rng = max rng
scoreboard players operation size rng -= min rng
scoreboard players operation rng mv.temp %= size rng
scoreboard players operation rng mv.temp += min rng
execute if score rng mv.temp matches 0 run execute at @s run function villager_list:armor_enchanter
execute if score rng mv.temp matches 1 run execute at @s run function villager_list:beekeeper
execute if score rng mv.temp matches 2 run execute at @s run function villager_list:breeder
execute if score rng mv.temp matches 3 run execute at @s run function villager_list:brewer
execute if score rng mv.temp matches 4 run execute at @s run function villager_list:combat_enchanter
execute if score rng mv.temp matches 5 run execute at @s run function villager_list:concrete_seller
execute if score rng mv.temp matches 6 run execute at @s run function villager_list:cynophilist
execute if score rng mv.temp matches 7 run execute at @s run function villager_list:desert_explorer
execute if score rng mv.temp matches 8 run execute at @s run function villager_list:disc_seller
execute if score rng mv.temp matches 9 run execute at @s run function villager_list:dye_seller
execute if score rng mv.temp matches 10 run execute at @s run function villager_list:egg
execute if score rng mv.temp matches 11 run execute at @s run function villager_list:emerald_exchanger
execute if score rng mv.temp matches 12 run execute at @s run function villager_list:enchanter_1
execute if score rng mv.temp matches 13 run execute at @s run function villager_list:enchanter_2
execute if score rng mv.temp matches 14 run execute at @s run function villager_list:enchanter_3
execute if score rng mv.temp matches 15 run execute at @s run function villager_list:end_explorer
execute if score rng mv.temp matches 16 run execute at @s run function villager_list:engineer
execute if score rng mv.temp matches 17 run execute at @s run function villager_list:firework
execute if score rng mv.temp matches 18 run execute at @s run function villager_list:fisherman
execute if score rng mv.temp matches 19 run execute at @s run function villager_list:flourist
execute if score rng mv.temp matches 20 run execute at @s run function villager_list:fruiterer
execute if score rng mv.temp matches 21 run execute at @s run function villager_list:glazed_terracotta_seller
execute if score rng mv.temp matches 22 run execute at @s run function villager_list:griefer
execute if score rng mv.temp matches 23 run execute at @s run function villager_list:head_seller
execute if score rng mv.temp matches 24 run execute at @s run function villager_list:horse_rider
execute if score rng mv.temp matches 25 run execute at @s run function villager_list:hunter
execute if score rng mv.temp matches 26 run execute at @s run function villager_list:ice_maker
execute if score rng mv.temp matches 27 run execute at @s run function villager_list:lumberjack
execute if score rng mv.temp matches 28 run execute at @s run function villager_list:merchant
execute if score rng mv.temp matches 29 run execute at @s run function villager_list:miner
execute if score rng mv.temp matches 30 run execute at @s run function villager_list:mizab
execute if score rng mv.temp matches 31 run execute at @s run function villager_list:mob_hunter
execute if score rng mv.temp matches 32 run execute at @s run function villager_list:mushroom
execute if score rng mv.temp matches 33 run execute at @s run function villager_list:nether_explorer
execute if score rng mv.temp matches 34 run execute at @s run function villager_list:quartz_seller
execute if score rng mv.temp matches 35 run execute at @s run function villager_list:railman
execute if score rng mv.temp matches 36 run execute at @s run function villager_list:redstoner
execute if score rng mv.temp matches 37 run execute at @s run function villager_list:sea_diver
execute if score rng mv.temp matches 38 run execute at @s run function villager_list:tool_enchanter
execute if score rng mv.temp matches 39 run execute at @s run function villager_list:turtle_man
execute if score rng mv.temp matches 40 run execute at @s run function villager_list:wither_killer
scoreboard players operation temp0 rng = state rng
scoreboard players operation temp0 rng *= a rng
scoreboard players operation temp0 rng += c rng
scoreboard players operation temp0 rng %= m rng
scoreboard players operation state rng = temp0 rng
scoreboard players operation rng mv.temp = temp0 rng
scoreboard players operation rng mv.temp /= #100000 rng
scoreboard players set min rng 0
scoreboard players set max rng 41
scoreboard players operation size rng = max rng
scoreboard players operation size rng -= min rng
scoreboard players operation rng mv.temp %= size rng
scoreboard players operation rng mv.temp += min rng
execute if score rng mv.temp matches 0 run execute at @s run function villager_list:armor_enchanter
execute if score rng mv.temp matches 1 run execute at @s run function villager_list:beekeeper
execute if score rng mv.temp matches 2 run execute at @s run function villager_list:breeder
execute if score rng mv.temp matches 3 run execute at @s run function villager_list:brewer
execute if score rng mv.temp matches 4 run execute at @s run function villager_list:combat_enchanter
execute if score rng mv.temp matches 5 run execute at @s run function villager_list:concrete_seller
execute if score rng mv.temp matches 6 run execute at @s run function villager_list:cynophilist
execute if score rng mv.temp matches 7 run execute at @s run function villager_list:desert_explorer
execute if score rng mv.temp matches 8 run execute at @s run function villager_list:disc_seller
execute if score rng mv.temp matches 9 run execute at @s run function villager_list:dye_seller
execute if score rng mv.temp matches 10 run execute at @s run function villager_list:egg
execute if score rng mv.temp matches 11 run execute at @s run function villager_list:emerald_exchanger
execute if score rng mv.temp matches 12 run execute at @s run function villager_list:enchanter_1
execute if score rng mv.temp matches 13 run execute at @s run function villager_list:enchanter_2
execute if score rng mv.temp matches 14 run execute at @s run function villager_list:enchanter_3
execute if score rng mv.temp matches 15 run execute at @s run function villager_list:end_explorer
execute if score rng mv.temp matches 16 run execute at @s run function villager_list:engineer
execute if score rng mv.temp matches 17 run execute at @s run function villager_list:firework
execute if score rng mv.temp matches 18 run execute at @s run function villager_list:fisherman
execute if score rng mv.temp matches 19 run execute at @s run function villager_list:flourist
execute if score rng mv.temp matches 20 run execute at @s run function villager_list:fruiterer
execute if score rng mv.temp matches 21 run execute at @s run function villager_list:glazed_terracotta_seller
execute if score rng mv.temp matches 22 run execute at @s run function villager_list:griefer
execute if score rng mv.temp matches 23 run execute at @s run function villager_list:head_seller
execute if score rng mv.temp matches 24 run execute at @s run function villager_list:horse_rider
execute if score rng mv.temp matches 25 run execute at @s run function villager_list:hunter
execute if score rng mv.temp matches 26 run execute at @s run function villager_list:ice_maker
execute if score rng mv.temp matches 27 run execute at @s run function villager_list:lumberjack
execute if score rng mv.temp matches 28 run execute at @s run function villager_list:merchant
execute if score rng mv.temp matches 29 run execute at @s run function villager_list:miner
execute if score rng mv.temp matches 30 run execute at @s run function villager_list:mizab
execute if score rng mv.temp matches 31 run execute at @s run function villager_list:mob_hunter
execute if score rng mv.temp matches 32 run execute at @s run function villager_list:mushroom
execute if score rng mv.temp matches 33 run execute at @s run function villager_list:nether_explorer
execute if score rng mv.temp matches 34 run execute at @s run function villager_list:quartz_seller
execute if score rng mv.temp matches 35 run execute at @s run function villager_list:railman
execute if score rng mv.temp matches 36 run execute at @s run function villager_list:redstoner
execute if score rng mv.temp matches 37 run execute at @s run function villager_list:sea_diver
execute if score rng mv.temp matches 38 run execute at @s run function villager_list:tool_enchanter
execute if score rng mv.temp matches 39 run execute at @s run function villager_list:turtle_man
execute if score rng mv.temp matches 40 run execute at @s run function villager_list:wither_killer
scoreboard players operation temp0 rng = state rng
scoreboard players operation temp0 rng *= a rng
scoreboard players operation temp0 rng += c rng
scoreboard players operation temp0 rng %= m rng
scoreboard players operation state rng = temp0 rng
scoreboard players operation rng mv.temp = temp0 rng
scoreboard players operation rng mv.temp /= #100000 rng
scoreboard players set min rng 0
scoreboard players set max rng 41
scoreboard players operation size rng = max rng
scoreboard players operation size rng -= min rng
scoreboard players operation rng mv.temp %= size rng
scoreboard players operation rng mv.temp += min rng
execute if score rng mv.temp matches 0 run execute at @s run function villager_list:armor_enchanter
execute if score rng mv.temp matches 1 run execute at @s run function villager_list:beekeeper
execute if score rng mv.temp matches 2 run execute at @s run function villager_list:breeder
execute if score rng mv.temp matches 3 run execute at @s run function villager_list:brewer
execute if score rng mv.temp matches 4 run execute at @s run function villager_list:combat_enchanter
execute if score rng mv.temp matches 5 run execute at @s run function villager_list:concrete_seller
execute if score rng mv.temp matches 6 run execute at @s run function villager_list:cynophilist
execute if score rng mv.temp matches 7 run execute at @s run function villager_list:desert_explorer
execute if score rng mv.temp matches 8 run execute at @s run function villager_list:disc_seller
execute if score rng mv.temp matches 9 run execute at @s run function villager_list:dye_seller
execute if score rng mv.temp matches 10 run execute at @s run function villager_list:egg
execute if score rng mv.temp matches 11 run execute at @s run function villager_list:emerald_exchanger
execute if score rng mv.temp matches 12 run execute at @s run function villager_list:enchanter_1
execute if score rng mv.temp matches 13 run execute at @s run function villager_list:enchanter_2
execute if score rng mv.temp matches 14 run execute at @s run function villager_list:enchanter_3
execute if score rng mv.temp matches 15 run execute at @s run function villager_list:end_explorer
execute if score rng mv.temp matches 16 run execute at @s run function villager_list:engineer
execute if score rng mv.temp matches 17 run execute at @s run function villager_list:firework
execute if score rng mv.temp matches 18 run execute at @s run function villager_list:fisherman
execute if score rng mv.temp matches 19 run execute at @s run function villager_list:flourist
execute if score rng mv.temp matches 20 run execute at @s run function villager_list:fruiterer
execute if score rng mv.temp matches 21 run execute at @s run function villager_list:glazed_terracotta_seller
execute if score rng mv.temp matches 22 run execute at @s run function villager_list:griefer
execute if score rng mv.temp matches 23 run execute at @s run function villager_list:head_seller
execute if score rng mv.temp matches 24 run execute at @s run function villager_list:horse_rider
execute if score rng mv.temp matches 25 run execute at @s run function villager_list:hunter
execute if score rng mv.temp matches 26 run execute at @s run function villager_list:ice_maker
execute if score rng mv.temp matches 27 run execute at @s run function villager_list:lumberjack
execute if score rng mv.temp matches 28 run execute at @s run function villager_list:merchant
execute if score rng mv.temp matches 29 run execute at @s run function villager_list:miner
execute if score rng mv.temp matches 30 run execute at @s run function villager_list:mizab
execute if score rng mv.temp matches 31 run execute at @s run function villager_list:mob_hunter
execute if score rng mv.temp matches 32 run execute at @s run function villager_list:mushroom
execute if score rng mv.temp matches 33 run execute at @s run function villager_list:nether_explorer
execute if score rng mv.temp matches 34 run execute at @s run function villager_list:quartz_seller
execute if score rng mv.temp matches 35 run execute at @s run function villager_list:railman
execute if score rng mv.temp matches 36 run execute at @s run function villager_list:redstoner
execute if score rng mv.temp matches 37 run execute at @s run function villager_list:sea_diver
execute if score rng mv.temp matches 38 run execute at @s run function villager_list:tool_enchanter
execute if score rng mv.temp matches 39 run execute at @s run function villager_list:turtle_man
execute if score rng mv.temp matches 40 run execute at @s run function villager_list:wither_killer
tag @s remove select
tag @e[type=minecraft:villager, tag=!scanned] add scanned