execute at @s if score #version LastLifeconfig matches 2 run summon armor_stand ~ ~ ~ {Tags:["LastLife2","LastLifeLifes"],Invisible:1b,Marker:1b}
execute at @s if score #version LastLifeconfig matches 2 run summon armor_stand ~ ~ ~ {Tags:["LastLife3","LastLifeLifes"],Invisible:1b,Marker:1b}
execute at @s if score #version LastLifeconfig matches 2 run summon armor_stand ~ ~ ~ {Tags:["LastLife4","LastLifeLifes"],Invisible:1b,Marker:1b}
execute at @s if score #version LastLifeconfig matches 2 run summon armor_stand ~ ~ ~ {Tags:["LastLife5","LastLifeLifes"],Invisible:1b,Marker:1b}
execute at @s if score #version LastLifeconfig matches 2 run summon armor_stand ~ ~ ~ {Tags:["LastLife6","LastLifeLifes"],Invisible:1b,Marker:1b}
scoreboard players set @e[type=armor_stand,tag=LastLife2] LastLifeLifes 2
scoreboard players set @e[type=armor_stand,tag=LastLife3] LastLifeLifes 3
scoreboard players set @e[type=armor_stand,tag=LastLife4] LastLifeLifes 4
scoreboard players set @e[type=armor_stand,tag=LastLife5] LastLifeLifes 5
scoreboard players set @e[type=armor_stand,tag=LastLife6] LastLifeLifes 6
execute as @a[team=] run scoreboard players operation @s LastLifeLifes = @e[tag=LastLifeLifes,sort=random,limit=1] LastLifeLifes
kill @e[tag=LastLifeLifes,type=armor_stand]

execute at @s if score #version LastLifeconfig matches 2 run execute as @a[team=] at @s run playsound entity.lightning_bolt.thunder master @s ~ ~10 ~ 1 1
execute at @s if score #version LastLifeconfig matches 2 run title @a[team=] times 20 100 20
execute at @s if score #version LastLifeconfig matches 2 run execute as @a[team=] if score @s LastLifeLifes matches 2 run title @s title ["",{"score":{"name":"@s","objective":"LastLifeLifes"},"color":"gold"},{"text":" lives.","color":"green"}]
execute at @s if score #version LastLifeconfig matches 2 run execute as @a[team=] if score @s LastLifeLifes matches 3 run title @s title ["",{"score":{"name":"@s","objective":"LastLifeLifes"},"color":"yellow"},{"text":" lives.","color":"green"}]
execute at @s if score #version LastLifeconfig matches 2 run execute as @a[team=] if score @s LastLifeLifes matches 4 run title @s title ["",{"score":{"name":"@s","objective":"LastLifeLifes"},"color":"green"},{"text":" lives.","color":"green"}]
execute at @s if score #version LastLifeconfig matches 2 run execute as @a[team=] if score @s LastLifeLifes matches 5.. run title @s title ["",{"score":{"name":"@s","objective":"LastLifeLifes"},"color":"dark_green"},{"text":" lives.","color":"green"}]


execute at @s if score #version LastLifeconfig matches 2 run scoreboard players set @a[team=] LastLifeLifes 3

execute as @a[team=] run scoreboard players set @s HealthValue 20

recipe give @a[team=] *
execute if score #recipe LastLifeconfig matches 0 run recipe take @a[team=] lastlife:lastlife_tnt
execute if score #recipe LastLifeconfig matches 0 run recipe take @a[team=] lastlife:lastlife_spore
execute if score #recipe LastLifeconfig matches 0 run recipe take @a[team=] lastlife:lastlife_nametag
execute if score #recipe LastLifeconfig matches 0 run recipe take @a[team=] lastlife:lastlife_saddle
execute if score #recipe LastLifeconfig matches 0 run recipe take @a[team=] lastlife:lastlife_slimeball
execute if score #recipe LastLifeconfig matches 1 run recipe give @a[team=] lastlife:lastlife_tnt
execute if score #recipe LastLifeconfig matches 1 run recipe give @a[team=] lastlife:lastlife_spore
execute if score #recipe LastLifeconfig matches 1 run recipe give @a[team=] lastlife:lastlife_nametag
execute if score #recipe LastLifeconfig matches 1 run recipe give @a[team=] lastlife:lastlife_saddle
execute if score #recipe LastLifeconfig matches 1 run recipe give @a[team=] lastlife:lastlife_slimeball
execute if score #recipe LastLifeconfig matches 1 run recipe take @a[team=] minecraft:enchanting_table
execute if score #recipe LastLifeconfig matches 1 run recipe take @a[team=] minecraft:bookshelf
