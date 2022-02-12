scoreboard players operation $ttime LastLifeRound = @a[scores={LastLifeRound=10..}] LastLifeRound
scoreboard players operation $ttime LastLifeRound -= $minute LastLifeTimer
tellraw @s ["",{"score":{"name":"$ttime","objective":"LastLifeRound"},"color":"gray"},{"text":" minutes left in session","color":"gray"}]
scoreboard players set @s LastLifeTime 0
scoreboard players enable @s LastLifeTime
