execute store result storage temp player_id int 1 run scoreboard players get @s iss.player_id
$data modify storage temp id set value $(id)
function iss:player/load/pre_load_data with storage temp