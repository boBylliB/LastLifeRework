tellraw @s [{"text":"End of session","color":"gray"}]
tellraw @s [{"text":"Session has ended use /trigger LastLifeRound set xxx to start another session","color":"gray"}]
title @a[scores={LastLifeBooeyMan=1}] times 20 60 20
title @a[scores={LastLifeBooeyMan=1}] title {"text":"You have failed.","color":"red"}
tellraw @a[scores={LastLifeBooeyMan=1}] ["",{"text":"You failed to kill a green or yellow name last session as the boogeyman. As punishment, you have dropped to your ","color":"gray"},{"text":"Last Life","color":"red"},{"text":". All alliances are severed and you are now hostile to all players. You may team with others on their Last Life if you wish. ","color":"gray"}]
scoreboard players set @a[scores={LastLifeBooeyMan=1}] LastLifeLifes 1
scoreboard players set @a[scores={LastLifeBooeyMan=1}] LastLifeBooeyMan 0
title @a[tag=LastLifeTarget] title {"text":"You have survived.","color":"green"}
tag @a remove LastLifeTarget
execute as @a at @s run scoreboard objectives remove LastLifeRound
execute as @a at @s run scoreboard objectives add LastLifeRound trigger "round amount timer"
scoreboard players set #running LastLifeRound 0
execute if score #boogey LastLifeconfig matches 1 run scoreboard players enable @a LastLifeRound

