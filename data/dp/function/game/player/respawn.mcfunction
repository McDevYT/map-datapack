tag @s remove respawning
tag @s remove dead

scoreboard players operation @s jetpack = jp_max_tank settings

spreadplayers 1000 0 3 200 false @s
scoreboard players reset @s respawnTime
gamemode adventure @s