#declare storage data.player
#declare storage data.inventory


scoreboard objectives add temp dummy
scoreboard objectives add iss.player_id dummy

tellraw @a [{"text":"[","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"","color":"white"}]}},{"text":"ISS loaded","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Made by ","color":"white"},{"text":"Pizztakio","color":"light_purple"}]}},{"text":"]","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"","color":"white"}]}}]
