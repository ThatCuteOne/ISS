scoreboard players set is_loading temp 1

# Load Armor from equipment field // Used by layouts saved after minecraft version 1.21.5
data modify entity @e[tag=iss.player_save,limit=1] equipment.head set from storage data.inventory temp[].equipment.head
item replace entity @s \
            armor.head from entity @e[tag=iss.player_save,limit=1] armor.head
data modify entity @e[tag=iss.player_save,limit=1] equipment.head set from storage data.inventory temp[].equipment.chest
item replace entity @s \
            armor.chest from entity @e[tag=iss.player_save,limit=1] armor.head
data modify entity @e[tag=iss.player_save,limit=1] equipment.head set from storage data.inventory temp[].equipment.legs
item replace entity @s \
            armor.legs from entity @e[tag=iss.player_save,limit=1] armor.head
data modify entity @e[tag=iss.player_save,limit=1] equipment.head set from storage data.inventory temp[].equipment.feet
item replace entity @s \
            armor.feet from entity @e[tag=iss.player_save,limit=1] armor.head
data modify entity @e[tag=iss.player_save,limit=1] equipment.head set from storage data.inventory temp[].equipment.offhand
item replace entity @s \
            weapon.offhand from entity @e[tag=iss.player_save,limit=1] armor.head

data modify entity @e[tag=iss.player_save,limit=1] \
        equipment.head set from storage \
            data.inventory temp[0]
 
execute store result score Slot temp run \
        data get storage data.inventory temp[0].Slot
# remove
scoreboard players operation \
    accurate_slot temp = Slot temp
execute if score Slot temp matches 9..35 run \
        scoreboard players remove accurate_slot temp 9

execute store result storage \
        data.inventory player.restore.slot_number int 1 run \
            scoreboard players get accurate_slot temp 
# 0 - 8 = Hotbar
# 9-35 = Inventory 0-26
# -106 = offhand
# 100-103 = Armor starting at feet
# hotbar loader
execute if score Slot temp matches 0..8 run \
        data modify storage data.inventory player.restore.slot set value "hotbar"
execute if score Slot temp matches 0..8 run \
        function iss:player/load_logic/generic_slot with storage data.inventory player.restore
# inventory slot loader
execute if score Slot temp matches 9..35 run \
        data modify storage data.inventory player.restore.slot set value "inventory"
execute if score Slot temp matches 9..35 run \
        function iss:player/load_logic/generic_slot with storage data.inventory player.restore

# Load Armor + Offhand from Inventory // Used by layouts saved before minecraft version 1.21.5
execute if score Slot temp matches -106 run \
        item replace entity @s weapon.offhand from entity @e[tag=iss.player_save,limit=1] armor.head
execute if score Slot temp matches 100 run \
        item replace entity @s \
            armor.feet from entity @e[tag=iss.player_save,limit=1] armor.head
execute if score Slot temp matches 101 run \
        item replace entity @s \
            armor.legs from entity @e[tag=iss.player_save,limit=1] armor.head
execute if score Slot temp matches 102 run \
        item replace entity @s \
            armor.chest from entity @e[tag=iss.player_save,limit=1] armor.head
execute if score Slot temp matches 103 run \
        item replace entity @s \
            armor.head from entity @e[tag=iss.player_save,limit=1] armor.head

data remove storage data.inventory temp[0]
execute if data storage data.inventory temp[0] run return run function iss:player/load/load_inventory
kill @e[tag=iss.player_save]