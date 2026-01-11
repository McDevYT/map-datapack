# Handle Players die in the void
execute at @s if entity @s[tag=!dead,y=40,dy=-1000] run tp @s 0 65 0

function dp:game/jetpack/handle_jetpack