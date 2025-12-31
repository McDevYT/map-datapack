tellraw @a [{"text":"Datapack reload: "},{"text": "SUCCESS","color": "#87e71a","bold": true}]

team add lobby
team modify lobby friendlyFire false

scoreboard objectives add leave trigger
scoreboard objectives add usedCarrot used:carrot_on_a_stick
scoreboard objectives add die deathCount

scoreboard objectives add disconnects minecraft.custom:minecraft.leave_game

scoreboard objectives add respawnTime dummy

team add player
team add spectator