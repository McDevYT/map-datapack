# Handle Leave Trigger Command
scoreboard players enable @a leave
execute as @a[scores={leave=1..}] run function dp:leave

# Handle No Drop Items
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{noDrop:1b}}}}] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{noDrop:1b}}}}] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{noDrop:1b}}}}] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s

# Handle reconnected Players
execute as @a[scores={disconnects=1..}, tag=!debugMode] run function dp:reconnected_player

# Lobby tick function for every player
execute as @a[tag=inLobby] at @s run function dp:lobby/player_tick

execute as @a[tag=inLobby, scores={die=1..}] run function dp:leave

execute if score gameState globalValues matches 2.. run function dp:game/tick

# Handle No Drop Items
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{noDrop:1b}}}}] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{noDrop:1b}}}}] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{noDrop:1b}}}}] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s

# Handle Carrot Clicked
execute as @a[scores={usedCarrot=1..}] run function dp:carrot_clicked