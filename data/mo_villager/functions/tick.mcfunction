#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set vil_counter mv.temp 0
execute as @e[type=minecraft:villager,tag=!scanned] run scoreboard players add vil_counter mv.temp 1
execute if score vil_counter mv.temp matches 4 run function mo_villager:choose_random_villager