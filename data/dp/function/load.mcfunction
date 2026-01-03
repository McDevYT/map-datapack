tellraw @a [{"text":"Datapack reload: "},{"text": "SUCCESS","color": "#87e71a","bold": true}]

team add lobby
team modify lobby friendlyFire false

scoreboard objectives add leave trigger
scoreboard objectives add usedCarrot used:carrot_on_a_stick
scoreboard objectives add die deathCount

scoreboard objectives add oxigen dummy
scoreboard objectives add jetpack dummy

scoreboard objectives add settings dummy
scoreboard objectives add constants dummy
scoreboard players set 10 constants 10

scoreboard objectives add disconnects minecraft.custom:minecraft.leave_game

scoreboard objectives add respawnTime dummy

team add player
team add spectator