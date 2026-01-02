attribute @s jump_strength base reset
scoreboard players reset @s leave
scoreboard players reset @s die
scoreboard players reset @s respawnTime

xp set @s 0 levels
xp set @s 0 points

tp @s 0 65 0 0 0
spawnpoint @s 0 65 0 0 0

clear @s

team leave @s
team join lobby @s

tag @s add inLobby
tag @s remove player
tag @s remove announcements
tag @s remove queue
tag @s remove spectator
tag @s remove respawning
tag @s remove dead

gamemode adventure @s

effect clear @s


