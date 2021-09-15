#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set vil_counter mv.temp 0
tag @e[type=minecraft:villager, tag=!scanned, tag=!select, limit=1] add select
execute as @e[type=villager, tag=select] at @s run function mo_villager:custom_villager_spawner