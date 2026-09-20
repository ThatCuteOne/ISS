execute store result storage temp id int 1 run scoreboard players set kit_id iss.vars 0
execute store result storage temp player_id int 1 run scoreboard players get @s iss.player.id
scoreboard players set fail_count iss.vars 0
function iss:internal/delete_layouts/loop with storage temp
