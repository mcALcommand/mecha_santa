#speed
scoreboard players set @s Al.Speed 10

#Motion
tp @s @s
data modify entity @s Motion[1] set value 0.1d
function mecha_santa:motion

#クロスボウをCharged:1bに
item replace entity @s weapon.mainhand with minecraft:crossbow{Charged:1b}

#リセット
scoreboard players reset @s Al.Speed