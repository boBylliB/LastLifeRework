title @s title {"text":"You killed the target!","color":"green"}
tellraw @s ["",{"text":"Since you ","color":"gray"},{"text":"killed the target ","color":"gold"},{"text":"you have received an ","color":"gray"},{"text":"extra life ","color":"green"},{"text":" as well as being ","color":"gray"},{"text":"cured ","color":"green"},{"text":"of boogeyman.","color":"gray"}]
execute as @s at @s run particle crimson_spore ~ ~1 ~ 1 1 1 0 100 normal @a
execute as @s at @s run playsound entity.ender_dragon.growl master @a ~ ~ ~ .75 .8
scoreboard players add @s LastLifeLifes 1
tag @a remove LastLifeTarget