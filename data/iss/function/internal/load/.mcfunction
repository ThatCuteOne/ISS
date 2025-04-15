clear @s
$execute unless data storage iss data.$(id).$(player_id) run return run function iss:internal/load/fallback with storage iss data.$(id)
$data modify storage iss load set from storage iss data.$(id).$(player_id)

execute positioned 0 1000 0 summon armor_stand run function iss:internal/load/slot/get_equipment

item replace entity @s armor.feet from entity @n[tag=iss.load] armor.feet
item replace entity @s armor.legs from entity @n[tag=iss.load] armor.legs
item replace entity @s armor.chest from entity @n[tag=iss.load] armor.chest
item replace entity @s armor.head from entity @n[tag=iss.load] armor.head
item replace entity @s weapon.offhand from entity @n[tag=iss.load] weapon.offhand

function iss:internal/load/loop
kill @e[tag=iss.load]