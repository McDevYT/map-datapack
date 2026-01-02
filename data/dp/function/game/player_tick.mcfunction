# Handle Players die in the void
execute at @s if entity @s[y=40,dy=-1000] run function dp:game/die

# Handle Players respawning
scoreboard players remove @s[tag=respawning] respawnTime 1
execute as @s[tag=respawning, scores={respawnTime=..0}] run function dp:game/respawn

# Display respawn message
title @s[tag=respawning] title {text:"You Died!",color:"red"}
title @s[tag=respawning] times 0 5 4

title @s[tag=respawning, scores={respawnTime=0..20}] subtitle [{text:"Respawning in: ", color: "yellow"}, {text:"1s", color:"gray"}]
title @s[tag=respawning, scores={respawnTime=21..40}] subtitle [{text:"Respawning in: ", color: "yellow"}, {text:"2s", color:"gray"}]
title @s[tag=respawning, scores={respawnTime=41..60}] subtitle [{text:"Respawning in: ", color: "yellow"}, {text:"3s", color:"gray"}]
title @s[tag=respawning, scores={respawnTime=61..80}] subtitle [{text:"Respawning in: ", color: "yellow"}, {text:"4s", color:"gray"}]
title @s[tag=respawning, scores={respawnTime=81..100}] subtitle [{text:"Respawning in: ", color: "yellow"}, {text:"5s", color:"gray"}]

# Handle Player deaths
execute as @s[scores={die=1..}] run function dp:game/die

# Handle Oxigen
execute as @s[tag=!dead, scores={oxigen=0..}] run scoreboard players remove @s oxigen 1

execute as @s[scores={oxigen=..0}] run effect give @s blindness 2 1 true

execute if predicate dp:press_space if score @s jetpack matches 1.. run effect give @s levitation 1 1 true
execute if predicate dp:press_space if score @s jetpack matches 1.. run scoreboard players remove @s jetpack 1
execute if predicate dp:press_space if score @s jetpack matches 1.. run execute as @p at @s run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 2 normal

execute unless predicate dp:press_space run effect clear @s levitation
execute unless score @s jetpack matches 1.. run effect clear @s levitation

execute if score @s jetpack matches ..0 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 1..10 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■","color":"aqua"},{"text":"■■■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 11..20 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■","color":"aqua"},{"text":"■■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 21..30 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■","color":"aqua"},{"text":"■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 31..40 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■","color":"aqua"},{"text":"■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 41..50 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■","color":"aqua"},{"text":"■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 51..60 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■","color":"aqua"},{"text":"■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 61..70 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■","color":"aqua"},{"text":"■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 71..80 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■■","color":"aqua"},{"text":"■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 81..90 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■■","color":"aqua"},{"text":"■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 91.. run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■■■","color":"aqua"},{"text":"]","color":"yellow"}]

execute unless predicate dp:press_space run scoreboard players add @s jetpack 1
execute if predicate dp:press_space run scoreboard players remove @s jetpack 1
execute if score @s jetpack matches ..0 run scoreboard players set @s jetpack 0
execute if score @s jetpack matches 100.. run scoreboard players set @s jetpack 100