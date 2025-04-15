execute store result storage iss macro.player_id int 1 run scoreboard players get @s iss.player.id
$data modify storage iss macro.id set value $(id)
function iss:internal/load/ with storage iss macro