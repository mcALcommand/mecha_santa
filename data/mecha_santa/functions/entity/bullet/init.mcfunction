#Init処理
execute facing entity @e[type=marker,tag=mecha_Spread,limit=1,sort=nearest,distance=..100] feet run tp @s ~ ~-0.15 ~ ~ ~
tag @s remove bullet.Init
scoreboard players set @s bullet.Range 400
