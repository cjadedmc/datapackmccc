execute as @e[type=warden] at @s run setblock ~ ~2 ~ air destroy
execute unless entity @e[type=warden] as @e[tag=wardendrops] at @s run summon item ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Item:{id:"minecraft:command_block",count:1,components:{"minecraft:item_model":"player_head","minecraft:item_name":{"color":"gold","text":"Warden Heart"},"minecraft:profile":{name:"Lao_Bi_Deng__"}}}}
kill @e[tag=wardendrops]
execute as @e[type=warden] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["wardendrops"]}
execute as @a at @s if block ~ ~-1 ~ minecraft:sculk if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data={wardenboots:1b}] run attribute @s minecraft:movement_speed modifier add sculkspeed 0.50 add_multiplied_total
execute as @a at @s unless block ~ ~-1 ~ sculk run attribute @s minecraft:movement_speed modifier remove sculkspeed

execute as @a[team=jade] at @s if items entity @s armor.head minecraft:player_head[minecraft:custom_data={wardenhelmet:1b}] run effect give @a[team=!jade,distance=..24] minecraft:glowing 1 1 true
execute as @a[team=amethyst] at @s if items entity @s armor.head minecraft:player_head[minecraft:custom_data={wardenhelmet:1b}] run effect give @a[team=!amethyst,distance=..24] minecraft:glowing 1 1 true
execute as @a[team=topaz] at @s if items entity @s armor.head minecraft:player_head[minecraft:custom_data={wardenhelmet:1b}] run effect give @a[team=!topaz,distance=..24] minecraft:glowing 1 1 true
execute as @a[team=sapphire] at @s if items entity @s armor.head minecraft:player_head[minecraft:custom_data={wardenhelmet:1b}] run effect give @a[team=!sapphire,distance=..24] minecraft:glowing 1 1 true
execute as @a[team=ruby] at @s if items entity @s armor.head minecraft:player_head[minecraft:custom_data={wardenhelmet:1b}] run effect give @a[team=!ruby,distance=..24] minecraft:glowing 1 1 true


scoreboard players set @a wardenrage 0

execute as @a[scores={health=..10}] if items entity @s armor.* minecraft:player_head[minecraft:custom_data={wardenhelmet:1b}] if items entity @s armor.* minecraft:leather_chestplate[minecraft:custom_data={wardenchestplate:1b}] if items entity @s armor.* minecraft:leather_leggings[minecraft:custom_data={wardenleggings:1b}] if items entity @s armor.* minecraft:leather_boots[minecraft:custom_data={wardenboots:1b}] run effect give @s minecraft:speed 1 1 true
execute as @a[scores={health=..10}] if items entity @s armor.* minecraft:player_head[minecraft:custom_data={wardenhelmet:1b}] if items entity @s armor.* minecraft:leather_chestplate[minecraft:custom_data={wardenchestplate:1b}] if items entity @s armor.* minecraft:leather_leggings[minecraft:custom_data={wardenleggings:1b}] if items entity @s armor.* minecraft:leather_boots[minecraft:custom_data={wardenboots:1b}] run effect give @s minecraft:strength 1 1 true
execute as @a[scores={health=..10}] if items entity @s armor.* minecraft:player_head[minecraft:custom_data={wardenhelmet:1b}] if items entity @s armor.* minecraft:leather_chestplate[minecraft:custom_data={wardenchestplate:1b}] if items entity @s armor.* minecraft:leather_leggings[minecraft:custom_data={wardenleggings:1b}] if items entity @s armor.* minecraft:leather_boots[minecraft:custom_data={wardenboots:1b}] run effect give @s minecraft:resistance 1 1 true
execute as @a[scores={health=..10}] if items entity @s armor.* minecraft:player_head[minecraft:custom_data={wardenhelmet:1b}] if items entity @s armor.* minecraft:leather_chestplate[minecraft:custom_data={wardenchestplate:1b}] if items entity @s armor.* minecraft:leather_leggings[minecraft:custom_data={wardenleggings:1b}] if items entity @s armor.* minecraft:leather_boots[minecraft:custom_data={wardenboots:1b}] run scoreboard players set @s wardenrage 1
execute as @a[scores={wardenrage=1,ltwardenrage=0}] at @s run playsound minecraft:entity.warden.roar master @a ~ ~ ~ 100 1 0.1
execute as @a run scoreboard players operation @s ltwardenrage = @s wardenrage
scoreboard players set count bats 0
execute as @e[type=tnt_minecart] run scoreboard players add count bats 1

execute as @e[tag=omeganuke] at @s run summon tnt ~ ~ ~ {explosion_power:127,block_state:{Name:"minecraft:glowstone"}} 

