
title @s title {text:"You Died!",color:"red"}
title @s times 0 5 4

title @s[scores={respawnTime=0..20}] subtitle [{text:"Respawning in: ", color: "yellow"}, {text:"1s", color:"gray"}]
title @s[scores={respawnTime=21..40}] subtitle [{text:"Respawning in: ", color: "yellow"}, {text:"2s", color:"gray"}]
title @s[scores={respawnTime=41..60}] subtitle [{text:"Respawning in: ", color: "yellow"}, {text:"3s", color:"gray"}]
title @s[scores={respawnTime=61..80}] subtitle [{text:"Respawning in: ", color: "yellow"}, {text:"4s", color:"gray"}]
title @s[scores={respawnTime=81..100}] subtitle [{text:"Respawning in: ", color: "yellow"}, {text:"5s", color:"gray"}]