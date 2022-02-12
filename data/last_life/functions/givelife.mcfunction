execute as @s at @s run tellraw @s ["",{"text":"You gave your life to ","color":"white"},{"selector":"@p[scores={LastLifeGive=0},team=!0life]"}]
execute as @s at @s run tellraw @p[scores={LastLifeGive=0},team=!0life] ["",{"text":"You recieved a life from ","color":"white"},{"selector":"@s"}]
execute as @s at @s run scoreboard players remove @s LastLifeLifes 1
execute as @s at @s run particle totem_of_undying ~ ~1 ~ 1 1 1 0 50 normal @a
execute as @s at @s run playsound item.totem.use master @a ~ ~ ~ .75 1
execute as @s at @s at @p[scores={LastLifeGive=0},team=!0life] run particle happy_villager ~ ~1 ~ 1 1 1 0 50 normal @a
execute as @s at @p[scores={LastLifeGive=0},team=!0life] run title @p title "You recieved a life"
execute as @s at @s run scoreboard players add @p[scores={LastLifeGive=0},team=!0life] LastLifeLifes 1
execute as @s at @s run scoreboard players set @s LastLifeGive 0

