$data remove storage data.inventory player.inventory.$(player_id).$(id)
$execute if score actionbar_data iss.settings matches 1 run title @s actionbar [{"color":"red","text":"Successfully reset player layout with id: "},{"color":"gold","text":"$(id)"},{"color":"red","text":" and playerid: "},{"color":"gold","text":"$(player_id)"}]
