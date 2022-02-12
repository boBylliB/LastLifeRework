tellraw @a {"text":"The Boogeymen is being chosen in 5 minutes.","color":"red"}
execute as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~10 ~ 1 1
schedule function last_life:boogey/1minwarning 240s
scoreboard players set #running LastLifeRound 1
scoreboard players set $tick LastLifeTimer 0
scoreboard players set $second LastLifeTimer 0
scoreboard players set $minute LastLifeTimer 0