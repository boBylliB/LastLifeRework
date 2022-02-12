scoreboard players set $HealthBoostVars NextID 1
tag @a[tag=Sorted] remove Sorted
tag @s add ShownBoostSelect
scoreboard players set @s ConfirmSelect 0
scoreboard players enable @s ConfirmSelect
function last_life:healthboost/sort
function last_life:healthboost/select