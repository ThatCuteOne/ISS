clear @s
data remove storage data.inventory temp
$execute if data storage data.inventory player.inventory.$(player_id).$(id) run data modify storage data.inventory temp set from storage data.inventory player.inventory.$(player_id).$(id)
$execute unless data storage data.inventory player.inventory.$(player_id).$(id) run data modify storage data.inventory temp set from storage data.inventory player.inventory.-1.$(id)
summon armor_stand 0 0 0 {Tags:["iss.player_save"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
function iss:player/load/load_inventory