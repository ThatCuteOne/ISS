data modify entity @n[tag=iss.load] equipment.head set from storage iss load.Inventory[0]
execute store result score slot iss.vars run data get storage iss load.Inventory[0].Slot
execute store result storage iss load.slot int 1 run scoreboard players get slot iss.vars
function iss:internal/load/slot/ with storage iss load

data remove storage iss load.Inventory[0]
execute if data storage iss load.Inventory[0] run function iss:internal/load/loop