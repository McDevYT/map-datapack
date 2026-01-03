# Handle Players die in the void
execute at @s if entity @s[tag=!dead,y=40,dy=-1000] run function dp:game/player/die

# Handle Players respawning
scoreboard players remove @s[tag=respawning] respawnTime 1
execute as @s[tag=respawning, scores={respawnTime=..0}] run function dp:game/player/respawn

# Display respawn message
execute as @s[tag=respawning] run function dp:game/ui/respawn_timer

# Handle Player deaths
execute as @s[scores={die=1..}] run function dp:game/player/die

# Handle Oxigen
execute as @s[tag=!dead, scores={oxigen=0..}] run scoreboard players remove @s oxigen 1

execute as @s[scores={oxigen=..0}] run effect give @s blindness 2 1 true

# Handle Jetpach
execute as @s[tag=!dead] run function dp:game/jetpack/handle_jetpack