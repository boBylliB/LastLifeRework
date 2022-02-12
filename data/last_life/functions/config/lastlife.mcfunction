scoreboard players set #version LastLifeconfig 2
scoreboard players set #recipe LastLifeconfig 1
scoreboard players set #border LastLifeconfig 1
scoreboard players set #boogey LastLifeconfig 1
function last_life:config
execute as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ .5 2
