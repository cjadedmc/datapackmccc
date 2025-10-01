tellraw @a [{"bold":false,"color":"dark_purple","italic":false,"text":"--------------------------------\n"},{"bold":false,"color":"red","italic":false,"text":"SPECIAL WARDEN EVENT NOW ACTIVE\n"},{"color":"light_purple","text":"Killing a Warden Drops 2 hearts.\n"},{"bold":false,"color":"light_purple","italic":false,"text":"Event ends in 5 hours.\n"},{"bold":false,"italic":false,"text":"--------------------------------"}]
execute as @a run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
scoreboard players set enable wardenevent 1
schedule function mccc:disablewardenevent 200s