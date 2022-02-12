#third life start
execute if score #version LastLifeconfig matches 1 run scoreboard players set @a LastLifeLifes 3
execute if score #version LastLifeconfig matches 1 run team join 3life @a
execute if score #version LastLifeconfig matches 1 run tellraw @a {"text":"Grace period ended. Third Life started","color":"red"}
execute as @a at @s if score #version LastLifeconfig matches 1 run playsound block.note_block.harp master @s ~ ~ ~ .75 1.5
#last life start
execute if score #version LastLifeconfig matches 2 run tellraw @a {"text":"You are about to be assigned a random amount of lives.","color":"red"}
execute as @a at @s if score #version LastLifeconfig matches 2 run playsound block.note_block.harp master @s ~ ~ ~ .75 1.5
execute if score #version LastLifeconfig matches 2 run schedule function last_life:roll/_title 3s
