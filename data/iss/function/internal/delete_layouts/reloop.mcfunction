$scoreboard players set success iss.vars $(success)
execute unless score success iss.vars matches 1.. run scoreboard players add fail_count iss.vars 1
execute if score success iss.vars matches 1.. run scoreboard players set fail_count iss.vars 0
execute if score fail_count iss.vars matches 20.. run return fail
function iss:internal/delete_layouts/loop with storage temp