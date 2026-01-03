execute if score @s jetpack matches ..0 run return run title @s actionbar [{"text":"jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]

scoreboard players operation #temp settings = @s jetpack

scoreboard players operation #temp settings *= 10 constants

execute unless score jp_max_tank settings matches 0 run scoreboard players operation #temp settings /= jp_max_tank settings
scoreboard players add #temp settings 1
execute if score #temp settings matches 11.. run scoreboard players set #temp settings 10

execute if score #temp settings matches 1 run return run title @s actionbar [{"text":"jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■","color":"aqua"},{"text":"■■■■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score #temp settings matches 2 run return run title @s actionbar [{"text":"jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■","color":"aqua"},{"text":"■■■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score #temp settings matches 3 run return run title @s actionbar [{"text":"jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■","color":"aqua"},{"text":"■■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score #temp settings matches 4 run return run title @s actionbar [{"text":"jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■","color":"aqua"},{"text":"■■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score #temp settings matches 5 run return run title @s actionbar [{"text":"jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■","color":"aqua"},{"text":"■■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score #temp settings matches 6 run return run title @s actionbar [{"text":"jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■","color":"aqua"},{"text":"■■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score #temp settings matches 7 run return run title @s actionbar [{"text":"jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■","color":"aqua"},{"text":"■■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score #temp settings matches 8 run return run title @s actionbar [{"text":"jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■■","color":"aqua"},{"text":"■■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score #temp settings matches 9 run return run title @s actionbar [{"text":"jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■■■","color":"aqua"},{"text":"■","color":"gray"},{"text":"]","color":"yellow"}]
execute if score #temp settings matches 10 run title @s actionbar [{"text":"jetpack","color":"aqua"}," ",{"text":"[","color":"yellow"},{"text":"■■■■■■■■■■","color":"aqua"},{"text":"]","color":"yellow"}]