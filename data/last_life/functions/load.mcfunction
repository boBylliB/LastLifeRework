#scoreboards
scoreboard objectives add LastLifeLifes dummy "Lives"
scoreboard objectives add LastLifeBooeyMan dummy "Are Boogey Man?"
scoreboard objectives add LastLifeBooeyLim dummy "How many players per boogey?"
scoreboard objectives add LastLifeTarget dummy "Are Target of Boogey?"
scoreboard objectives add LastLifeTargetLim dummy "Number of players above which a target is selected"
scoreboard objectives add LastLifeBoogeyKi playerKillCount "Boogey Man Kills"
scoreboard objectives add LastLifeconfig dummy
scoreboard objectives add LastLifeVers trigger
scoreboard objectives add LastLifeRecipe trigger
scoreboard objectives add LastLifeBorder trigger
scoreboard objectives add LastLifeBoogeyc trigger "config"
scoreboard objectives add LastLifeRound trigger  "round amount timer"
scoreboard objectives add LastLifeTime trigger  "time left for boogey to kill"
scoreboard objectives add LastLifeDeath deathCount "Death"
scoreboard objectives add LastLifeRoll dummy
scoreboard objectives add LastLifeGive trigger "used to give lives to nearest player"
scoreboard objectives add LastLifeCheck trigger "check ammount of lives"
scoreboard objectives add LastLifeTimer dummy

scoreboard objectives add KilledBy minecraft.killed_by:minecraft.player
scoreboard objectives add ResetDelay dummy

scoreboard objectives add PlayerID dummy
scoreboard objectives add NextID dummy
scoreboard objectives add Sorted dummy
scoreboard objectives add PlayerSelect trigger
scoreboard objectives add PlayerSelected dummy
scoreboard objectives add ConfirmSelect trigger
scoreboard objectives add HealthValue dummy

scoreboard objectives add LastLifeStart trigger


#boogey rounds

#teams
team add gracelife {"text":"Grace Life","color":"gray"}
team add 0life {"text":"No Life","color":"dark_gray"}
team add 1life {"text":"Last Life","color":"red"}
team add 2life {"text":"Two Lives","color":"gold"}
team add 3life {"text":"Three Lives","color":"yellow"}
team add 4life {"text":"Four Lives","color":"green"}
team add 5+life {"text":"Five to Six Lives","color":"dark_green"}

team modify gracelife color gray
team modify gracelife friendlyFire false
team modify 0life color dark_gray
team modify 1life color red
team modify 2life color gold
team modify 3life color yellow
team modify 4life color green
team modify 5+life color dark_green

scoreboard players set $tick LastLifeTimer 0
scoreboard players set $second LastLifeTimer 0
scoreboard players set $minute LastLifeTimer 0

scoreboard players set @a VoteID 0
scoreboard players set $VoteVars NextID 1

execute as @a run function last_life:config
