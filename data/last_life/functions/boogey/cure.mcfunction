title @s[scores={LastLifeBooeyMan=1}] times 20 60 20
execute unless entity @p[tag=LastLifeTarget,scores={KilledBy=1..}] run title @s[scores={LastLifeBooeyMan=1}] title {"text":"You are cured!","color":"green"}
execute if entity @p[tag=LastLifeTarget,scores={KilledBy=1..}] run function last_life:boogey/targetkilled

scoreboard players set @s LastLifeBooeyMan 0