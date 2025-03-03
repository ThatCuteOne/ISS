# save to storage
$data modify storage data.inventory player.inventory.$(player_id).$(id) set from entity @s Inventory
$title @s actionbar [{"color":"green","text":"Successfully saved inventory with id: "},{"color":"gold","text":"$(id)"}]