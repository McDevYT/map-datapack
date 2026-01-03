
tellraw @a[tag=announcements] {text:"Game started", color:"gold"}
execute as @a[tag=player] run attribute @s jump_strength base reset
execute as @a[tag=player] run attribute @s gravity base set 0.04