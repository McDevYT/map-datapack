scoreboard players reset @s leave

xp set @s 0 levels
xp set @s 0 points

tp @s 0 65 0 0 0
spawnpoint @s 0 65 0 0 0

clear @s

team leave @s
team join lobby @s

tag @s add inLobby
tag @s remove inGame
tag @s remove playingGame

gamemode adventure @s

effect clear @s


