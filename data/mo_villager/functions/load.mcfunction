#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard objectives add mv.temp dummy
gamerule commandBlockOutput false
advancement grant @a only minecraft:villagers/root
scoreboard players set rng mv.temp 0
tellraw @a {"text": "Intializing Mo Villager Datapack","color": "green"}