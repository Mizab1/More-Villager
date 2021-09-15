import ./macros/rngV2.mcm

function load{
	# Declare the variable
	scoreboard objectives add mv.temp dummy
	gamerule commandBlockOutput false
	
	#Gives player an advancement at starting
	advancement grant @a only minecraft:villagers/root

	# initialize the variable
	scoreboard players set rng mv.temp 0
	
	#Welcome messgage
	tellraw @a {"text": "Intializing Mo Villager Datapack","color": "green"}
}

function tick{
	
	#Counts the number of villager in a villager (default = 4)
	scoreboard players set vil_counter mv.temp 0
	execute as @e[type=minecraft:villager,tag=!scanned] run scoreboard players add vil_counter mv.temp 1
	execute if score vil_counter mv.temp matches 4 run{
		name choose_random_villager

		# Displays the notifying particle at the player's position
		# execute at @a run{
		# 	particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0.1 100 force
		# }
		# tellraw @a {"text":"Mo villager has spawned","color":"dark_blue"}
		# playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 100 1

		# Resets the villager count
		scoreboard players set vil_counter mv.temp 0
		tag @e[type=minecraft:villager, tag=!scanned, tag=!select, limit=1] add select

		execute as @e[type=villager, tag=select] at @s run{
            name custom_villager_spawner
		    LOOP(4, j){
				rng range 0 41 rng mv.temp
                <%%
                    var villager_name = ["armor_enchanter", "beekeeper", "breeder", "brewer", "combat_enchanter", "concrete_seller", "cynophilist", "desert_explorer", "disc_seller", "dye_seller", "egg", "emerald_exchanger", "enchanter_1", "enchanter_2", "enchanter_3", "end_explorer", "engineer", "firework", "fisherman", "flourist", "fruiterer", "glazed_terracotta_seller", "griefer", "head_seller", "horse_rider", "hunter", "ice_maker", "lumberjack", "merchant", "miner", "mizab", "mob_hunter", "mushroom", "nether_explorer", "quartz_seller", "railman", "redstoner", "sea_diver", "tool_enchanter", "turtle_man", "wither_killer"];

                    villager_name.forEach(function (value, i) {
                        emit(`execute if score rng mv.temp matches ${i} run execute at @s run function villager_list:${value}`);
                    });
                %%>
                <%%
                    if(j == 3){
                        emit(`tag @s remove select`)
                        emit(`tag @e[type=minecraft:villager, tag=!scanned] add scanned`)
                    }
                %%>
			}
		}
	}
}

dir secrets{
	function secret_1{
		tellraw @p ["",{"text":"You Found Secret 1,Greetings","color":"yellow"}]
	}
	
	function secret_2{
		tellraw @p ["",{"text":"You Found Secret 2","color":"yellow"}]
		tellraw @p ["",{"text":"You Finally Found Legendary Mizab","color":"blue"}]
	}
	
	function secret_3{
		tellraw @p ["",{"text":"You Found Secret 3,I can't believe this!!","color":"yellow"}]
	}
	
	function secret_4{
		tellraw @p ["",{"text":"Greetings! You Found Secret 4.","color":"yellow"}]
	}
	
}

function unistall{	
	#Remove all scores
	scoreboard objectives remove vil_counter
	scoreboard objectives remove mv.temp
	
}
function kill_close_villager{
	execute unless entity @e[type=villager,distance=..2,limit=1] run tellraw @s {"text":"There is no Villager is 2 blocks radius","color":"dark_blue"}
	kill @e[type=villager,distance=..2,limit=1]
}
function give_book{
	#Gives you the Mo Book
	give @s minecraft:written_book{title:"Instructions",author:"Mizab",generation:0,pages:['[{"text":"Hello there,I hope you had sucessfully install this datapack","color":"dark_blue"},{"text":"/n/nInstructions","color":"dark_green","underlined":true},{"text":"/n/n1. When you open your world make sure to type /reload","color":"black","bold":false},{"text":"/n/n2. click the links in this book/n(which is on next page)","color":"black","bold":false}]','[{"text":"---Kill Switch---/n","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function mo_villager:kill_villager"}},{"text":"Use this switch to kill the villager in a 2 block radius, using this commands you will not get bad deals from other villagers. This switch is here to kill the old Mo Villager and spawn the new on in","color":"dark_blue","bold":false}]','[{"text":"Commands:/n","color":"dark_blue","underlined":false},{"text":"1.Armour Enchanter","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/armor_enchanter"}},{"text":"/n2.Breeder","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/breeder"}},{"text":"/n3.Brewer","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/brewer"}},{"text":"/n4.Combat Enchanter","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/combat_enchanter"}},{"text":"/n5.Concrete Seller","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/concrete_seller"}},{"text":"/n6.Desert Explorer","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/desert_explorer"}},{"text":"/n7.Disc Seller","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/disc_seller"}},{"text":"/n8.Dye Seller","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/dye_seller"}},{"text":"/n9.Emerald Exchanger","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/emerald_exchanger"}},{"text":"/n10.Enchanter 1","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/enchanter_1"}},{"text":"/n11.Enchanter 2","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/enchanter_2"}},{"text":"/n12.Enchanter 3","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/enchanter_3"}},{"text":"/n13.End Explorer","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/end_explorer"}}]','[{"text":"14.Firework","color":"black","bold":false,"italic":true,"underlined":false,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/firework"}},{"text":"/n15.Flourist","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/flourist"}},{"text":"/n16.Terracotta Seller","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/glazed_terracotta_seller"}},{"text":"/n17.Griefer","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/griefer"}},{"text":"/n18.Head Seller","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/head_seller"}},{"text":"/n19.Horse Rider","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/horse_rider"}},{"text":"/n20.Hunter","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/hunter"}},{"text":"/n21.Ice Maker","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/ice_maker"}},{"text":"/n22.Lumberjack","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/lumberjack"}},{"text":"/n23.Merchant","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/merchant"}},{"text":"/n24.Miner","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/miner"}},{"text":"/n25.Mizab","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/mizab"}},{"text":"/n26.Quartz Seller","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/quartz_seller"}}]','[{"text":"27.Redstoner","italic":true,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/redstoner"}},{"text":"/n28.Fisherman","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/fisherman"}},{"text":"/n29.Mushroom Seller","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/mushroom"}},{"text":"/n30.Sea Diver","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/sea_diver"}},{"text":"/n31.Tool Enchanter","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/tool_enchanter"}},{"text":"/n32.Turtle Man","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/turtle_man"}},{"text":"/n33.Wither Killer","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/wither_killer"}},{"text":"/n34.Spawn Egg Seller","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/egg"}},{"text":"/n35.Mob Hunter","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/mob_hunter"}},{"text":"/n36.Fruiterer/n","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/fruiterer"}},{"text":"37.Beekeeper/n","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/beekeeper"}},{"text":"38.Cynophilist/n","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/cynophilist"}},{"text":"39.Engineer/n","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/engineer"}}]','[{"text":"41.Railman/n","italic":true,"clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/railman"}},{"text":"42. Nether Explorer","clickEvent":{"action":"run_command","value":"/function mo_villager:villagers/ac_villagers/nether_explorer"}}]']} 1
}


advancements villagers/citizen {
	"parent": "mo_villager:villagers/customer",
    "display": {
        "title": {
            "text": "A Good Citizen"
        },
        "description": {
            "text": "Place a Potato in the Village"
        },
        "icon": {
            "item": "minecraft:wheat_seeds"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "citizen": {
            "trigger": "minecraft:placed_block",
            "conditions": {
                "item": {
                    "item": "minecraft:wheat_seeds"
                },
                "location": {
                    "dimension": "overworld",
                    "feature": "Village"
                }
            }
        }
    },
    "requirements": [
        [
            "citizen"
        ]
    ],
    "rewards": {
        "experience": 60
    }
}
advancements villagers/customer {
	"parent": "mo_villager:villagers/visitor",
    "display": {
        "title": {
            "text": "Customer"
        },
        "description": {
            "text": "Make a Trade"
        },
        "icon": {
            "item": "minecraft:emerald"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "trading": {
            "trigger": "minecraft:villager_trade",
            "conditions": {
                "villager": {
                    "type": "minecraft:villager"
                }
            }
        }
    },
    "requirements": [
        [
            "trading"
        ]
    ],
    "rewards": {
        "experience": 50
    }
}
advancements villagers/dan {
	"parent": "mo_villager:villagers/honest_trader",
    "display": {
        "title": {
            "text": "Is that a DanTDM?"
        },
        "description": {
            "text": "Find Dan"
        },
        "icon": {
            "item": "minecraft:minecart"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "dan": {
            "trigger": "minecraft:impossible"
        }
    },
    "requirements": [
        [
            "dan"
        ]
    ],
    "rewards": {
        "experience": 130
    }
}
advancements villagers/defender {
	"parent": "mo_villager:villagers/customer",
    "display": {
        "title": {
            "text": "The Defender"
        },
        "description": {
            "text": "Struck Lightning on a Zombie in a Village"
        },
        "icon": {
            "item": "minecraft:trident"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "light": {
            "trigger": "minecraft:channeled_lightning",
            "conditions": {
                "victims": [
                    {
                        "type": "minecraft:zombie",
                        "location": {
                            "dimension": "overworld",
                            "feature": "Village"
                        }
                    }
                ]
            }
        }
    },
    "requirements": [
        [
            "light"
        ]
    ],
    "rewards": {
        "experience": 140
    }
}
advancements villagers/gabo {
	"parent": "mo_villager:villagers/honest_trader",
    "display": {
        "title": {
            "text": "A Nice Person! Gabo"
        },
        "description": {
            "text": "Find Gabo"
        },
        "icon": {
            "item": "minecraft:smithing_table"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "gabo": {
            "trigger": "minecraft:impossible"
        }
    },
    "requirements": [
        [
            "gabo"
        ]
    ],
    "rewards": {
        "experience": 120
    }
}
advancements villagers/honest_trader {
	"parent": "mo_villager:villagers/customer",
    "display": {
        "title": {
            "text": "Honest Trader"
        },
        "description": {
            "text": "Gain some Emerald"
        },
        "icon": {
            "item": "minecraft:emerald_ore"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "emer": {
            "trigger": "minecraft:inventory_changed",
            "conditions": {
                "items": [
                    {
                        "item": "minecraft:emerald",
                        "count": {
                            "min": 1,
                            "max": 1
                        }
                    }
                ]
            }
        }
    },
    "requirements": [
        [
            "emer"
        ]
    ],
    "rewards": {
        "experience": 30
    }
}
advancements villagers/jumbo {
	"parent": "mo_villager:villagers/honest_trader",
    "display": {
        "title": {
            "text": "Jumbo"
        },
        "description": {
            "text": "Find Jumbo The Redstoner"
        },
        "icon": {
            "item": "minecraft:redstone"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "redstoner": {
            "trigger": "minecraft:impossible"
        }
    },
    "requirements": [
        [
            "redstoner"
        ]
    ],
    "rewards": {
        "experience": 60
    }
}
advancements villagers/legend {
	"parent": "mo_villager:villagers/honest_trader",
    "display": {
        "title": {
            "text": "Meeting Mizab"
        },
        "description": {
            "text": "Find Mizab"
        },
        "icon": {
            "item": "minecraft:diamond"
        },
        "frame": "challenge",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": true
    },
    "criteria": {
        "mizab": {
            "trigger": "minecraft:impossible"
        }
    },
    "requirements": [
        [
            "mizab"
        ]
    ],
    "rewards": {
        "experience": 300
    }
}
advancements villagers/richie_rich {
	"parent": "mo_villager:villagers/honest_trader",
    "display": {
        "title": {
            "text": "$Richie Rich$"
        },
        "description": {
            "text": "Make 1 Stack of Emerald Block"
        },
        "icon": {
            "item": "minecraft:emerald_block"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "craft": {
            "trigger": "minecraft:inventory_changed",
            "conditions": {
                "items": [
                    {
                        "item": "minecraft:emerald_block",
                        "count": {
                            "min": 64,
                            "max": 64
                        }
                    }
                ]
            }
        }
    },
    "requirements": [
        [
            "craft"
        ]
    ],
    "rewards": {
        "experience": 200
    }
}
advancements villagers/roxie {
	"parent": "mo_villager:villagers/honest_trader",
    "display": {
        "title": {
            "text": "Buzz! Buzz!"
        },
        "description": {
            "text": "Find Roxie and Buy Honey"
        },
        "icon": {
            "item": "minecraft:honey_bottle"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "roxie": {
            "trigger": "minecraft:impossible"
        }
    },
    "requirements": [
        [
            "roxie"
        ]
    ],
    "rewards": {
        "experience": 120
    }
}
advancements villagers/shock {
	"parent": "mo_villager:villagers/defender",
    "display": {
        "title": {
            "text": "Wrong Target"
        },
        "description": {
            "text": "Struck Lightning on a Villager in a Village"
        },
        "icon": {
            "item": "minecraft:trident"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": true
    },
    "criteria": {
        "light": {
            "trigger": "minecraft:channeled_lightning",
            "conditions": {
                "victims": [
                    {
                        "type": "minecraft:villager",
                        "location": {
                            "dimension": "overworld",
                            "feature": "Village"
                        }
                    }
                ]
            }
        }
    },
    "requirements": [
        [
            "light"
        ]
    ],
    "rewards": {
        "experience": 140
    }
}
advancements villagers/sleeper {
	"parent": "mo_villager:villagers/customer",
    "display": {
        "title": {
            "text": "A Village Nap!"
        },
        "description": {
            "text": "Sleep in the Village"
        },
        "icon": {
            "item": "minecraft:yellow_bed"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "sleeper": {
            "trigger": "minecraft:slept_in_bed",
            "conditions": {
                "dimension": "overworld",
                "feature": "Desert_Pyramid"
            }
        }
    },
    "requirements": [
        [
            "sleeper"
        ]
    ],
    "rewards": {
        "experience": 45
    }
}
advancements villagers/terrible_decision {
	"parent": "mo_villager:villagers/customer",
    "display": {
        "title": {
            "text": "Terrible Decision :("
        },
        "description": {
            "text": "Kill a Villager"
        },
        "icon": {
            "item": "minecraft:fire_charge"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "killing": {
            "trigger": "minecraft:player_killed_entity",
            "conditions": {
                "entity": {
                    "type": "minecraft:villager"
                }
            }
        }
    },
    "requirements": [
        [
            "killing"
        ]
    ],
    "rewards": {
        "experience": 50
    }
}
advancements villagers/turtle_man {
	"parent": "mo_villager:villagers/honest_trader",
    "display": {
        "title": {
            "text": "Turtle Man"
        },
        "description": {
            "text": "Find Xisoma"
        },
        "icon": {
            "item": "minecraft:turtle_egg"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "xisoma": {
            "trigger": "minecraft:impossible"
        }
    },
    "requirements": [
        [
            "xisoma"
        ]
    ],
    "rewards": {
        "experience": 120
    }
}
advancements villagers/visitor {
	"parent": "mo_villager:villagers/root",
    "display": {
        "title": {
            "text": "A Visiter! Awesome"
        },
        "description": {
            "text": "Locate a Village"
        },
        "icon": {
            "item": "minecraft:oak_door"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "locate": {
            "trigger": "minecraft:location",
            "conditions": {
                "dimension": "overworld",
                "feature": "Village"
            }
        }
    },
    "requirements": [
        [
            "locate"
        ]
    ],
    "rewards": {
        "experience": 60
    }
}
advancements villagers/youtuber {
	"parent": "mo_villager:villagers/honest_trader",
    "display": {
        "title": {
            "text": "A YouTuber"
        },
        "description": {
            "text": "Find Wattles"
        },
        "icon": {
            "item": "minecraft:sugar"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "wattles": {
            "trigger": "minecraft:impossible"
        }
    },
    "requirements": [
        [
            "wattles"
        ]
    ],
    "rewards": {
        "experience": 120
    }
}
advancements villagers/zues {
	"parent": "mo_villager:villagers/honest_trader",
    "display": {
        "title": {
            "text": "A Dog Lover, oww!"
        },
        "description": {
            "text": "Find Zues"
        },
        "icon": {
            "item": "minecraft:bone"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false
    },
    "criteria": {
        "zues": {
            "trigger": "minecraft:impossible"
        }
    },
    "requirements": [
        [
            "zues"
        ]
    ],
    "rewards": {
        "experience": 120
    }
}
advancements villagers/root {
    "display": {
        "title": {
            "text": "Mo Villager",
            "color": "green"
        },
        "description": {
            "text": "You Sucessfully Installed Mo Villager",
            "color": "white"
        },
        "icon": {
            "item": "minecraft:diamond_sword"
        },
        "frame": "task",
        "show_toast": true,
        "announce_to_chat": true,
        "hidden": false,
        "background": "minecraft:textures/gui/advancements/backgrounds/adventure.png"
    },
    "criteria": {
        "beginning": {
            "trigger": "minecraft:impossible"
        }
    },
    "requirements": [
        [
            "beginning"
        ]
    ],
    "rewards": {
        "experience": 10
    }
}

loot_tables entites/villager {
  "type": "minecraft:entity",
  "pools": [
    {
      "rolls": 3,
      "entries": [
        {
          "type": "minecraft:item",
          "functions": [
            {
              "function": "minecraft:set_count",
              "count": {
                "min": -0.0,
                "max": 2.0,
                "type": "minecraft:uniform"
              }
            },
            {
              "function": "minecraft:looting_enchant",
              "count": {
                "min": 0.0,
                "max": 1.0
              }
            }
          ],
          "name": "minecraft:emerald"
        }
      ]
    }
  ]
}
