#speed
scoreboard players set @s[tag=mecha_presents_Init] Al.Speed 25

tp @s @s

execute facing entity @e[type=marker,tag=mecha_Spread_presents,limit=1,sort=nearest,distance=..60] feet run function mecha_santa:motion

tag @s remove mecha_presents_Init
