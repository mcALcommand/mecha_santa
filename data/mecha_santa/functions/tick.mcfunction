
#mecha_santa
execute as @e[tag=mecha] at @s run function mecha_santa:entity/mecha_santa/main

#弾を飛ばす
 execute as @e[type=marker,tag=mecha.bullet] at @s run function mecha_santa:entity/bullet/move

#召喚
 execute as @a at @s if score @s mecha_summon matches 1.. run function mecha_santa:summon_item_detect


