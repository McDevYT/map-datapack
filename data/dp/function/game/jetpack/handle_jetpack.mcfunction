
execute if predicate dp:press_space if score @s jetpack matches 1.. run effect give @s levitation 1 3 true
execute if predicate dp:press_space if score @s jetpack matches 1.. run scoreboard players remove @s jetpack 1
execute if predicate dp:press_space if score @s jetpack matches 1.. run execute as @p at @s run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 2 normal

execute unless predicate dp:press_space run effect clear @s levitation
execute unless score @s jetpack matches 1.. run effect clear @s levitation

execute if score @s jetpack matches ..0 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 1..10 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■","color":"aqua"},{"text":"■■■■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 11..20 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■","color":"aqua"},{"text":"■■■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 21..30 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■","color":"aqua"},{"text":"■■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 31..40 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■","color":"aqua"},{"text":"■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 41..50 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■","color":"aqua"},{"text":"■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 51..60 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■","color":"aqua"},{"text":"■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 61..70 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■","color":"aqua"},{"text":"■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 71..80 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■■","color":"aqua"},{"text":"■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 81..90 run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■■■","color":"aqua"},{"text":"■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score @s jetpack matches 91.. run title @s actionbar [{"text":"Jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■■■■","color":"aqua"},{"text":"]","color":"yellow"}]

execute as @s[tag=!dead] unless predicate dp:press_space run scoreboard players add @s jetpack 1
execute as @s[tag=!dead] if predicate dp:press_space run scoreboard players remove @s jetpack 1
execute if score @s jetpack matches ..0 run scoreboard players set @s jetpack 0
execute if score @s jetpack matches 100.. run scoreboard players set @s jetpack 100