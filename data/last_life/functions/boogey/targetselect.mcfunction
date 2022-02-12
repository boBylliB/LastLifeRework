execute unless score $Boogeymen LastLifeTargetLim matches 0.. run scoreboard players set $Boogeymen LastLifeTargetLim 6
execute as @a[scores={LastLifeLifes=2..}] run scoreboard players add $Boogeymen LastLifeTarget 1
scoreboard players operation $Boogeymen LastLifeTarget /= $Boogeymen LastLifeTargetLim
execute if score $Boogeymen LastLifeTarget matches 1.. run tag @r[scores={LastLifeLifes=2..,LastLifeBooeyMan=0}] add LastLifeTarget