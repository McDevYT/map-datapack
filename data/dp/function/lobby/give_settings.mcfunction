clear @s

function dp:lobby/give_outfit

item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name=[{"text":"Return","italic":false,"bold":false,"color":"#ee4343"},{"text":" (Right-Click)","italic":false,"bold":false,"color":"gray"}],unbreakable={},custom_model_data={strings:['return']},custom_data={noDrop:1b,settingsAction:1}]
