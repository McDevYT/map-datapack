execute as @s[team=!red] if block ~ ~-0.5 ~ red_concrete run tellraw @s [{"text":"You joined ", "color":"gold"},{"text":"Team Red",bold:1b,"color":"red"},{"text":"!",color:"gold"}]
execute as @s[team=!red] if block ~ ~-0.5 ~ red_concrete run team join red

execute as @s[team=!green] if block ~ ~-0.5 ~ lime_concrete run tellraw @s [{"text":"You joined ", "color":"gold"},{"text":"Team Green",bold:1b,"color":"green"},{"text":"!",color:"gold"}]
execute as @s[team=!green] if block ~ ~-0.5 ~ lime_concrete run team join green

execute as @s[team=!spectator] if block ~ ~-0.5 ~ glass run tellraw @s [{"text":"You are now a ", "color":"gold"},{"text":"Spectator",bold:1b,"color":"aqua"},{"text":"!",color:"gold"}]
execute as @s[team=!spectator] if block ~ ~-0.5 ~ glass run team join spectator