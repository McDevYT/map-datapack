execute unless score gameState globalValues matches 0 run return run tellraw @a[tag=inLobby] {text:"Game already started",color:"yellow"}
execute unless entity @p[tag=queue] run return run tellraw @a[tag=inLobby] {text:"No players in queue",color:"yellow"}
execute as @a[tag=queue] run function dp:utils/fade {start: 10, stay: 30, end: 20}
schedule function dp:game/prepare_start 15
