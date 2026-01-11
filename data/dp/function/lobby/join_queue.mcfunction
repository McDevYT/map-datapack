tag @s add queue

clear @s
item replace entity @s hotbar.4 with carrot_on_a_stick[custom_name=[{"text":"Ready!","italic":false,"bold":true,"color":"#3fd419"},{"text":" (Right-Click)","italic":false,"bold":false,"color":"gray"}],unbreakable={},custom_model_data={strings:['ready']},custom_data={noDrop:1b,lobbyAction:2}]

function dp:lobby/give_outfit