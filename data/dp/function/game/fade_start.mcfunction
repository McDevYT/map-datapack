execute unless entity @p[tag=queue] run return run tellraw @a[tag=inLobby] "No players in queue"
execute if entity @p[tag=player] run return run tellraw @a[tag=inLobby] "Game already started"
execute as @a[tag=queue] run function dp:utils/fade {start: 10, stay: 30, end: 20}
schedule function dp:game/start_game 15