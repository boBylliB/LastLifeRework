# LastLifeRework
A rework of the minecraft Last Life datapack by Wooferscoots, based on the Last Life YouTube series hosted by Grian.  
Built for Version 1.18, but might work on other versions

Last Life is a social, multiplayer minecraft gamemode in which each player gets anywhere from 3-6 lives at the start of the game, with the goal of being the last player standing.  
Player names are color coded based on life count, with 1 life being the most unique as red lives are able to initiate fights with any player while 2 lives and above cannot.  
Red lives and anyone with more than 1 life cannot team together, but red lives can team with other red lives and non-red lives can team with other non-red lives.  
Last Life also comes with a Boogeyman system. One or multiple boogeymen are selected from any non-red players, and they MUST get a kill on a non-red player before the session ends.  
If the session ends and a boogeyman has not yet gotten a kill, then that boogeyman is immediately dropped down to 1 life.  

The two main features that distinguish this datapack from the original concept by Grian (other than slight changes in functionality) are the target and the health boost system.

## Core Gameplay Features:
#### Limited Lives  
- Each player is given a random amount of lives from 3-6 at the start of the game, and only has those lives to survive  
- You can also choose to give one of your lives to another player through a command  
#### PvP Restrictions  
- Players with more than one life cannot initiate fights unless they are the boogeyman, but they can retaliate and finish those fights  
#### The Last Life  
- Once a player reaches one life remaining, their name becomes red and they lose all ties/friendships/teams with any players that have more than one life  
- This also frees any player with one life to be able to initiate fights with anyone they choose  
- Red players will commonly team up with a couple other red players to attack and loot more effectively  
#### The Boogeyman  
- Every session a number of boogeymen will be selected based on the amount of players who have more than one life  
  - By default, this limiter is 6, so: 1-5 = 1 boogeyman, 6-11 = 2 boogeymen, 12-17 = 3 boogeymen, etc.  
- The boogeyman will always be drawn from players who have more than one life  
- The boogeyman's objective is to kill another player who has more than one life before the end of the session, in order to be "cured" of their boogeyman curse  
- If the boogeyman fails in getting that kill before the session ends, they are stripped of their lives and brought down to 1 life remaining  
#### The Target  
- Every session that a boogeyman is chosen, if there are more than one boogeyman then a target is also selected  
  - This limiter can also be changed but by default it is 6 so that it coincides with the default boogeyman limiter  
  - There is only ever one target chosen, even if there are more than two boogeymen  
- This target is revealed only to the target themselves, and the boogeymen of the session  
- The boogeymen do not have to kill the target to be cured, but the first boogeyman to kill the target receives an extra life as a reward  
- The target is also reset at the end of the session, so once the next session starts the player is no longer the target  
#### Death's Grace  
- If a player dies for the last time, they become a spectator  
- They also receive the ability to give a single heart of extra health to a living player of their choosing  
  - The only restriction on this is that the player has to be alive, so even red names can receive a health boost  
- This health boost is permanent, and lasts the rest of the game  
  - Although a single heart might not seem like a lot, the idea with it being permanent is that a player might rack up multiple extra hearts through being the social favorite  
  - A player with that kind of advantage has a much better chance of winning a last stand battle over someone who has no health boost  

## Recipe Changes
There are a couple recipe tweaks in this game to add some balance and add some things that might be difficult or impossible to get with a limited world size due to the border  
#### Removed:  
- Enchanting Table  
  - The enchanting table is no longer craftable, but one spawns at [x=0, z=0] by default.  
  - If you want to start your game somewhere else in the world, it's recommended to place down a single enchanting table at spawn from creative mode  
  - The enchanting table can be moved by players, but this way there is only one and its rarer to have enchantments  
- Bookshelves  
  - Bookshelves are also no longer craftable, in order to limit the power of enchantments that you can apply  
  - This is mainly a balance thing as with enchantments being rare this makes the power imbalance not as large  
#### Tweaked  
- TNT  
  - TNT is now easier to craft, since it takes less gunpowder.  
  - P = paper, S = sand, G = gunpowder  
>       P S P
>       S G S
>       P S P
#### Added  
- Slimeballs  
  - Slimeballs are now craftable by placing one rotten flesh into a crafting slot  
  - 1 rotten flesh = 1 slimeball  
- Name tags  
  - Name tags are now craftable  
  - S = string, P = paper  
>         S
>         P
- Saddles  
  - Saddles are once again craftable  
  - L = leather  
>         L
>       L   L
- Spore Blossom  
  - Spore blossoms are craftable for decoration  
  - 1 lilac + 1 moss block = 1 spore blossom  

## Setup/OP Commands
/function last_life:load  
This will bring up a message in chat you can click on the configure how you would like to play.  

/scoreboard players set <user> LastLifeLifes <amount>  
change how many lives a player has  

/function last_life:addnewplayers  
to add late joining players  

/execute as <user> run function last_life:boogey/cure  
if the player who killed as boogey wasnt the final blow  

/function last_life:uninstall  
removes scoreboards and teams. Use this when restarting as well  

/scoreboard players set $Boogeymen LastLifeBooeyMan <amount>  
manually sets how many boogeymen you want to have each round (not required to set if you want 1)  

/scoreboard players set $Boogeymen LastLifeBooeyLim <amount>  
changes the player limit for when the amount of boogeymen should increase from one to two  
  
/scoreboard players set $Boogeymen LastLifeTargetLim <amount>  
changes the player limit for when a target should be added  
  
## Playing Commands
/trigger LastLifeGive  
Gives the closest player to you one of your lives  

/trigger LastLifeCheck  
Tells the amount of lives you have  

/trigger LastLifeRound set <amount>  
Sets how long the sessions are in minutes. Only available with the boogeyman selected  
This is also how you start the boogeyman selection process, so remember to use this command at the beginning of every session if you are including the boogeyman mechanic  

/trigger LastLifeTime  
Tells how much time is left in the session if the session length for the boogeyman is chosen  
