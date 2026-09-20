# this is where we get the version of the kit
$function iss:internal/load/fallback with storage iss data.fallback.$(id)
clear @s
data merge entity @s {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["iss.load"]}
data modify entity @s equipment set from storage iss load.equipment