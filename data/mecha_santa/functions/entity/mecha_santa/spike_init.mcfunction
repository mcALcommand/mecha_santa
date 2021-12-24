#speed
scoreboard players set @s[tag=mecha_spike_Init] Al.Speed 20

tp @s @s

execute facing entity @e[type=marker,tag=mecha_Spread_spike,limit=1,sort=nearest,distance=..60] feet run function mecha_santa:motion

kill @e[type=marker,tag=mecha_Spread_spike]

tag @s remove mecha_spike_Init
