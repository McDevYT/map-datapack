tellraw @a [{"text":"Datapack reload: "},{"text": "OK","color": "#87e71a","bold": true}]

team add lobby
team modify lobby friendlyFire false

scoreboard objectives add leave trigger
scoreboard objectives add usedCarrot used:carrot_on_a_stick

scoreboard objectives add disconnects minecraft.custom:minecraft.leave_game

team add green
team add red
team add spectator

team modify green color green
team modify green seeFriendlyInvisibles true
team modify red color red
team modify red seeFriendlyInvisibles true