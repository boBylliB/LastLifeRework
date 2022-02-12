#random lives
execute at @s if score #version LastLifeconfig matches 2 run summon armor_stand ~ ~ ~ {Tags:["LastLife3","LastLifeLifes"],Invisible:1b,Marker:1b}
execute at @s if score #version LastLifeconfig matches 2 run summon armor_stand ~ ~ ~ {Tags:["LastLife4","LastLifeLifes"],Invisible:1b,Marker:1b}
execute at @s if score #version LastLifeconfig matches 2 run summon armor_stand ~ ~ ~ {Tags:["LastLife5","LastLifeLifes"],Invisible:1b,Marker:1b}
execute at @s if score #version LastLifeconfig matches 2 run summon armor_stand ~ ~ ~ {Tags:["LastLife6","LastLifeLifes"],Invisible:1b,Marker:1b}
scoreboard players set @e[type=armor_stand,tag=LastLife3] LastLifeLifes 3
scoreboard players set @e[type=armor_stand,tag=LastLife4] LastLifeLifes 4
scoreboard players set @e[type=armor_stand,tag=LastLife5] LastLifeLifes 5
scoreboard players set @e[type=armor_stand,tag=LastLife6] LastLifeLifes 6
execute as @a[team=!] run scoreboard players operation @s LastLifeLifes = @e[tag=LastLifeLifes,sort=random,limit=1] LastLifeLifes
kill @e[tag=LastLifeLifes,type=armor_stand]

execute at @s if score #version LastLifeconfig matches 1 run scoreboard players set @a[team=!] LastLifeLifes 3
