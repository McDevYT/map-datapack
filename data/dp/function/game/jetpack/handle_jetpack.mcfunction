
execute if predicate dp:press_space if score @s jetpack matches 1.. run effect give @s levitation 1 3 true
execute if predicate dp:press_space if score @s jetpack matches 1.. run execute as @p at @s run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 2 normal

execute unless predicate dp:press_space run effect clear @s levitation
execute unless score @s jetpack matches 1.. run effect clear @s levitation

function dp:game/jetpack/display_fuel

execute unless block ~ ~-0.2 ~ air run scoreboard players operation @s jetpack += jp_refill_speed settings
execute if predicate dp:press_space run scoreboard players operation @s jetpack -= jp_fuel_usage settings
execute if score @s jetpack matches ..0 run scoreboard players set @s jetpack 0
execute if score @s jetpack > jp_max_tank settings run scoreboard players operation @s jetpack = jp_max_tank settings