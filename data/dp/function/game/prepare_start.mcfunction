tag @a[tag=queue] add player
tag @a[tag=player] remove inLobby
tag @a[tag=player] remove queue
tag @a[tag=player] add announcements

team join player @a[tag=player]
effect clear @a[tag=player]
effect give @a[tag=player] slowness 4 100 true
execute as @a[tag=player] run attribute @s jump_strength base set 0

item replace entity @a armor.head with glass[enchantments={binding_curse:true}, enchantment_glint_override=true]

spreadplayers 999 0 3 200 true @a[tag=player]

schedule function dp:game/start 4s