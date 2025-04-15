data modify entity @n[tag=iss.load] equipment.head set from storage iss load.Inventory[0]
execute store result score slot iss.vars run data get storage iss load.Inventory[0].Slot
execute store result storage iss load.slot int 1 run scoreboard players get slot iss.vars
execute if score slot iss.vars matches 0..8 run function iss:internal/load/slot/hotbar with storage iss load
execute if score slot iss.vars matches 9..35 run function iss:internal/load/slot/inventory/
data remove storage iss load.Inventory[0]
execute if data storage iss load.Inventory[0] run function iss:internal/load/loop