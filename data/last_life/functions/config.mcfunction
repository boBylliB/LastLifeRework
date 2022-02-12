tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["           Third Life / Last Life",{"text":" / ","color":"gray"},"by Wooferscoots                  "]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
execute if score #version LastLifeconfig matches 1 run tellraw @s ["",{"text":"[ ❤ ]","color":"gray"}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"All start with three lives","color":"gray"}]}},{"text":" Third Life","color":"green"}]
execute unless score #version LastLifeconfig matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger LastLifeVers set 1"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"gray"},{"text":"Third Life","color":"green"},{"text":".","color":"gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"All start with three lives","color":"gray"}]}},{"text":" Third Life","color":"green"}]
execute if score #version LastLifeconfig matches 2 run tellraw @s ["",{"text":"[ ❤ ]","color":"gray"}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"Amount of lives chosen at random for each player, between 2 and 6","color":"gray"}]}},{"text":" Last Life","color":"red"}]
execute unless score #version LastLifeconfig matches 2 run tellraw @s ["",{"text":"[ ❌ ]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger LastLifeVers set 2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"gray"},{"text":"Last Life","color":"red"},{"text":".","color":"gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"Amount of lives chosen at random for each player, between 2 and 6","color":"gray"}]}},{"text":" Last Life","color":"red"}]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
execute if score #recipe LastLifeconfig matches 1 run tellraw @s ["",{"text":"[ ❤ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger LastLifeRecipe set 1"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"gray"},{"text":"Custom Recipes","color":"white"},{"text":".","color":"gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"Custom recipes as shown in Last Life Season 1","color":"gray"}]}},{"text":" Custom Recipes","color":"white"}]
execute unless score #recipe LastLifeconfig matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger LastLifeRecipe set 2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"gray"},{"text":"Custom Recipes","color":"white"},{"text":".","color":"gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"Custom recipes as shown in Last Life Season 1","color":"gray"}]}},{"text":" Custom Recipes","color":"white"}]

#world border
execute if score #border LastLifeconfig matches 1 run tellraw @s ["",{"text":"[ ❤ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger LastLifeBorder set 1"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"gray"},{"text":"World Border","color":"white"},{"text":".","color":"gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"Border set to 1500 by default change with /worldborder set XXX after game has started (must be op)","color":"gray"}]}},{"text":" World Border","color":"white"}]
execute unless score #border LastLifeconfig matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger LastLifeBorder set 2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"gray"},{"text":"World Border","color":"white"},{"text":".","color":"gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"Border set to 1500 by default change with /worldborder set XXX after game has started (must be op)","color":"gray"}]}},{"text":" World Border","color":"white"}]

#add toggle for boogie man
execute if score #boogey LastLifeconfig matches 1 run tellraw @s ["",{"text":"[ ❤ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger LastLifeBoogeyc set 1"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"gray"},{"text":"Boogey Man","color":"white"},{"text":".","color":"gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"A Boogey Man will be chosen. Use /trigger LastLifeRound set XXX after game has started to set how often the boogieman will be chosen. Must be called manually after each session end","color":"gray"}]}},{"text":" Boogey Man","color":"white"}]
execute unless score #boogey LastLifeconfig matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger LastLifeBoogeyc set 2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"gray"},{"text":"Boogey Man","color":"white"},{"text":".","color":"gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"A Boogey Man will be chosen. Use /trigger LastLifeRound set XXX after game has started to set how often the boogieman will be chosen. Must be called manually after each session end","color":"gray"}]}},{"text":" Boogey Man","color":"white"}]

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text":"[ ☠ ]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger LastLifeStart set 1"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to start ","color":"gray"},{"text":"Third Life","color":"light_purple"},{"text":".","color":"gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"Starts Third/Last Life; double check settings chosen","color":"gray"}]}},{"text":" Start","color":"light_purple"}]
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
gamerule sendCommandFeedback false
function last_life:config/enable_trigger
