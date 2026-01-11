execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{lobbyAction:1}}}}] run return run function dp:lobby/join_queue
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{lobbyAction:2}}}}] run return run function dp:lobby/leave_queue
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{lobbyAction:3}}}}] run return run function dp:lobby/give_settings
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{settingsAction:1}}}}] run return run function dp:lobby/give_hotbar