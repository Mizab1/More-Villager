#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @e[type=villager,distance=..2,limit=1] run tellraw @s {"text":"There is no Villager is 2 blocks radius","color":"dark_blue"}
kill @e[type=villager,distance=..2,limit=1]