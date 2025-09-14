clear @s
$execute unless data storage iss data.$(id).$(player_id) run return run function iss:internal/load/fallback with storage iss data.fallback.$(id)
$data modify storage iss load set from storage iss data.$(id).$(player_id)


$execute positioned 0 1000 0 summon armor_stand run function iss:internal/load/slot/get_equipment {id:$(id)}

execute store result score current_version iss.vars run data get storage iss load.version 1

$execute if score @n[tag=iss.load] iss.version matches -2147483648..2147483647 \
    unless score @n[tag=iss.load] iss.version = current_version iss.vars run return run function iss:internal/load/version_missmatch {id:$(id)}

scoreboard players operation @s iss.version = current_version iss.vars

item replace entity @s armor.feet from entity @n[tag=iss.load] armor.feet
item replace entity @s armor.legs from entity @n[tag=iss.load] armor.legs
item replace entity @s armor.chest from entity @n[tag=iss.load] armor.chest
item replace entity @s armor.head from entity @n[tag=iss.load] armor.head
item replace entity @s weapon.offhand from entity @n[tag=iss.load] weapon.offhand

function iss:internal/load/loop
kill @e[tag=iss.load]