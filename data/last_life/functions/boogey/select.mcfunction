scoreboard players set @a LastLifeBooeyMan 0
scoreboard players reset @a LastLifeBoogeyKi
# Actually selecting the boogeyman
execute if score $Boogeymen LastLifeBooeyMan matches 0.. run function last_life:boogey/manualselect
execute unless score $Boogeymen LastLifeBooeyMan matches 0.. run function last_life:boogey/autoselect
execute unless score $Boogeymen LastLifeTargetLim matches -1 run function last_life:boogey/targetselect
title @a times 20 60 20
execute as @a[tag=!LastLifeTarget] at @s if score @s LastLifeBooeyMan matches 1 run title @s title {"text":"The Boogeyman.","color":"red"}
execute as @a[tag=!LastLifeTarget] at @s unless score @s LastLifeBooeyMan matches 1 run title @s title {"text":"NOT the Boogeyman.","color":"green"}
execute as @a[tag=LastLifeTarget] at @s run title @s title {"text":"The TARGET.","color":"gold"}
schedule function last_life:boogey/tell 1s