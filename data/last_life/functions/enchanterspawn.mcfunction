execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ rose_bush run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ lilac run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ sunflower run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ peony run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ tall_grass run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ large_fern run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ vine run fill ~ ~ ~ ~ ~-10 ~ air destroy
#trees
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ oak_log run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ spruce_log run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ dark_oak_log run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ birch_log run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ jungle_log run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ acacia_log run fill ~ ~ ~ ~ ~-10 ~ air destroy

execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ oak_leaves run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ spruce_leaves run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ dark_oak_leaves run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ birch_leaves run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ jungle_leaves run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ acacia_leaves run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ azalea_leaves run fill ~ ~ ~ ~ ~-10 ~ air destroy
execute at @e[type=falling_block,tag=LastLifeEnchanter] if block ~ ~-5 ~ flowering_azalea_leaves run fill ~ ~ ~ ~ ~-10 ~ air destroy


execute at @e[type=falling_block,tag=LastLifeEnchanter] run particle flame ~ ~ ~ 0.1 0.1 0.1 0 1 normal @a
execute at @e[type=falling_block,tag=LastLifeEnchanter] run playsound entity.tnt.primed master @a ~ ~ ~ .75 2
execute at @e[type=falling_block,tag=LastLifeEnchanter] unless block ~ ~-2 ~ air run playsound block.enchantment_table.use master @a ~ ~ ~ 1.5 1
execute at @e[type=falling_block,tag=LastLifeEnchanter] unless block ~ ~-2 ~ air run playsound entity.phantom.flap master @a ~ ~ ~ 2 1.5
execute at @e[type=falling_block,tag=LastLifeEnchanter] unless block ~ ~-2 ~ air run particle poof ~ ~ ~ 1.5 1.5 1.5 0 5 normal @a
execute at @e[type=falling_block,tag=LastLifeEnchanter] unless block ~ ~-2 ~ air run setblock ~ ~-1 ~ minecraft:structure_block{posX:-3,posY:-1,posZ:-3,sizeX:7,sizeY:10,sizeZ:7,mode:"LOAD",name:"lastlife:lastlife_enchant",powered:0b} replace
execute at @e[type=falling_block,tag=LastLifeEnchanter] unless block ~ ~-2 ~ air run setblock ~ ~ ~ minecraft:redstone_block
execute as @e[type=falling_block,tag=LastLifeEnchanter] at @s unless block ~ ~-2 ~ air run kill @s