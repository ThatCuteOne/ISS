
scoreboard players set is_loading temp 1

#debug commands
#$say $(id)
#$tellraw @a {"nbt":"player.inventory_$(id)_temp","storage":"data.inventory"}
#----------------

data modify entity @e[tag=iss.player_save,limit=1] ArmorItems[3] set from storage data.inventory temp[0]

# get Slot Number 
execute store result score Slot temp run data get storage data.inventory temp[0].Slot



# remove
scoreboard players operation accurate_slot temp = Slot temp
execute if score Slot temp matches 9..35 run scoreboard players remove accurate_slot temp 9


# store Slot number in to Storage
execute store result storage data.inventory player.restore.slot_number int 1 run scoreboard players get accurate_slot temp 


# hotbar loader
execute if score Slot temp matches 0..8 run data modify storage data.inventory player.restore.slot set value "hotbar"
execute if score Slot temp matches 0..8 run function iss:player/load_logic/generic_slot with storage data.inventory player.restore


# inventory slot loader
execute if score Slot temp matches 9..35 run data modify storage data.inventory player.restore.slot set value "inventory"
execute if score Slot temp matches 9..35 run function iss:player/load_logic/generic_slot with storage data.inventory player.restore

#offhand loader
execute if score Slot temp matches -106 run item replace entity @s weapon.offhand from entity @e[tag=iss.player_save,limit=1] armor.head

# armor loader
execute if score Slot temp matches 100 run item replace entity @s armor.feet from entity @e[tag=iss.player_save,limit=1] armor.head
execute if score Slot temp matches 101 run item replace entity @s armor.legs from entity @e[tag=iss.player_save,limit=1] armor.head
execute if score Slot temp matches 102 run item replace entity @s armor.chest from entity @e[tag=iss.player_save,limit=1] armor.head
execute if score Slot temp matches 103 run item replace entity @s armor.head from entity @e[tag=iss.player_save,limit=1] armor.head




data remove storage data.inventory temp[0]
execute if data storage data.inventory temp[0] run return run function iss:player/load/load_inventory


kill @e[tag=iss.player_save]
# 0 - 8 = Hotbar
# 9-35 = Inventory 0-26
# -106 = offhand
# 100-103 = Armor von den boots aus


