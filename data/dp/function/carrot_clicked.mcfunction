scoreboard players reset @s usedCarrot
execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 10

execute as @s[tag=inLobby] run return run function dp:lobby/carrot_clicked