schedule function last_life:tick 1t
execute as @a if score @s LastLifeVers matches 1 run function last_life:config/thirdlife
execute as @a if score @s LastLifeVers matches 2 run function last_life:config/lastlife

execute as @a if score @s LastLifeRecipe matches 2 run function last_life:config/enable_recipe
execute as @a if score @s LastLifeRecipe matches 1 run function last_life:config/disable_recipe

execute as @a if score @s LastLifeBorder matches 2 run function last_life:config/enable_border
execute as @a if score @s LastLifeBorder matches 1 run function last_life:config/disable_border

execute as @a if score @s LastLifeBoogeyc matches 2 run function last_life:config/enable_boogey
execute as @a if score @s LastLifeBoogeyc matches 1 run function last_life:config/disable_boogey

execute as @a at @s if score @s LastLifeStart matches 1 run function last_life:start
execute as @a at @s if score @s LastLifeStart matches 1 run scoreboard players set @a LastLifeStart 0

execute as @a at @s if score @s LastLifeDeath matches 1 run function last_life:death
execute as @a at @s if score @s LastLifeDeath matches 1 run scoreboard players remove @s LastLifeLifes 1
execute as @a at @s if score @s LastLifeDeath matches 1 run scoreboard players set @a LastLifeDeath 0

#check lives
execute as @a at @s if score @s LastLifeCheck matches 1.. run function last_life:check

#gives lives trigger
execute as @a[scores={LastLifeGive=1..},team=!0life] at @s run function last_life:givelife

#check time left in round
execute as @a at @s if score @s LastLifeTime matches 1.. run function last_life:boogey/timeleft

#join team based on lives
execute as @a unless entity @s[team=0life] if score @s LastLifeLifes matches ..0 run team join 0life
execute as @a unless entity @s[team=1life] if score @s LastLifeLifes matches 1 run team join 1life
execute as @a unless entity @s[team=2life] if score @s LastLifeLifes matches 2 run team join 2life
execute as @a unless entity @s[team=3life] if score @s LastLifeLifes matches 3 run team join 3life
execute as @a unless entity @s[team=4life] if score @s LastLifeLifes matches 4 run team join 4life
execute as @a unless entity @s[team=5+life] if score @s LastLifeLifes matches 5.. run team join 5+life
execute as @a[team=0life] run gamemode spectator @s

#kills LastLifeEnchanter
function last_life:enchanterspawn
function last_life:enable_trigger

#boogeyman
execute as @a[scores={LastLifeBoogeyKi=1..}] if score @s LastLifeBooeyMan matches 1 run function last_life:boogey/cure

execute if score $Boogeymen ResetDelay matches 100.. run scoreboard players set @a KilledBy 0
execute if score $Boogeymen ResetDelay matches 100.. run scoreboard players set $Boogeymen ResetDelay 0
execute if entity @p[scores={KilledBy=1..}] run scoreboard players add $Boogeymen ResetDelay 1

#health boost
execute as @a[scores={LastLifeLifes=0},tag=!ShownBoostSelect] run function last_life:healthboost/setup
execute as @a[scores={HeartCount=..0}] run scoreboard players set @s HealthValue 20
execute as @a[scores={LastLifeLifes=1..}] run function last_life:healthboost/sethealth

execute as @a if score @s PlayerSelect matches 1.. run function last_life:healthboost/selected
execute as @a if score @s ConfirmSelect matches 1 run function last_life:healthboost/confirm

#change the config to be boogey man ammount

#use trigger to set boogey time boogey will be called on trigger /trigger LastLifeRound set xx
execute as @a[scores={LastLifeRound=..-1}] at @s if score @s LastLifeRound matches ..-1 run function last_life:boogey/error
execute as @a[scores={LastLifeRound=1..9}] at @s if score @s LastLifeRound matches 1..9 run function last_life:boogey/error
execute as @a[scores={LastLifeRound=10..}] at @s if score @s LastLifeRound matches 10.. unless score #running LastLifeRound matches 1 run function last_life:boogey/5minwarning

execute if score $tick LastLifeTimer matches 0 run scoreboard players add $second LastLifeTimer 1
scoreboard players add $tick LastLifeTimer 1
execute if score $tick LastLifeTimer matches 20.. run scoreboard players set $tick LastLifeTimer 0

execute if score $second LastLifeTimer matches 60 run scoreboard players add $minute LastLifeTimer 1
execute if score $second LastLifeTimer matches 60 run scoreboard players set $second LastLifeTimer 0

execute if score #running LastLifeRound matches 1 as @a[scores={LastLifeRound=10..}] if score $minute LastLifeTimer >= @s LastLifeRound run function last_life:boogey/fail