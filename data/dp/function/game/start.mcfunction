
tellraw @a[tag=announcements] {text:"Game started", color:"gold"}
execute as @a[tag=player] run attribute @s jump_strength base set 0.6