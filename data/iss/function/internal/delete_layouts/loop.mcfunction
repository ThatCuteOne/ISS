$scoreboard players set kit_id iss.vars $(id)
scoreboard players add kit_id iss.vars 1
execute store result storage temp id int 1 run scoreboard players get kit_id iss.vars
$execute store result storage temp player_id int 1 run scoreboard players set player_id iss.vars $(player_id)

$execute unless data storage minecraft:iss {data:{$(id):{$(player_id):{}}}} run return run function iss:internal/delete_layouts/reloop {success:0}
$function iss:internal/delete {id:$(id),player_id:$(player_id)}
function iss:internal/delete_layouts/reloop {success:1}