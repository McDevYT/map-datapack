clear @s

item replace entity @s hotbar.4 with carrot_on_a_stick[custom_name=[{"text":"Not Ready!","italic":false,"bold":false,"color":"#ee4343"},{"text":" (Right-Click)","italic":false,"bold":false,"color":"gray"}],unbreakable={},custom_model_data={strings:['not_ready']},custom_data={noDrop:1b,lobbyAction:1}]
item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name=[{"text":"Settings","italic":false,"bold":false,"color":"#45b0f8"},{"text":" (Right-Click)","italic":false,"bold":false,"color":"gray"}],unbreakable={},custom_model_data={strings:['settings']},custom_data={noDrop:1b,lobbyAction:3}]

function dp:lobby/give_outfit