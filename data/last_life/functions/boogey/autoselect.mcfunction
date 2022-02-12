scoreboard players set $Boogeymen LastLifeBooeyMan 0
execute unless score $Boogeymen LastLifeBooeyLim matches 1.. run scoreboard players set $Boogeymen LastLifeBooeyLim 6
execute as @a[scores={LastLifeLifes=2..}] run scoreboard players add $Boogeymen LastLifeBooeyMan 1
scoreboard players operation $Boogeymen LastLifeBooeyMan /= $Boogeymen LastLifeBooeyLim
scoreboard players add $Boogeymen LastLifeBooeyMan 1
function last_life:boogey/manualselect
scoreboard players set $Boogeymen LastLifeBooeyMan -1