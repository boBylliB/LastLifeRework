scoreboard players set #version LastLifeconfig 1
scoreboard players reset #recipe LastLifeconfig
scoreboard players set #border LastLifeconfig 1
scoreboard players reset #boogey LastLifeconfig
function last_life:config
execute as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ .5 2
