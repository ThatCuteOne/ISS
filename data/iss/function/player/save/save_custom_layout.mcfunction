$data modify storage data.inventory player.inventory.$(player_id).$(id) set from entity @s Inventory
$data modify storage data.inventory player.inventory.$(player_id).$(id)[].equipment set from entity @s equipment{}
$execute if score actionbar_data iss.settings matches 1 run \
        title @s actionbar [{color:green,text:"Successfully saved player layout with id: "},\
                            {color:gold,text:"$(id)"},\
                            {color:green,text:" and playerid: "},\
                            {color:gold,text:"$(player_id)"}]