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