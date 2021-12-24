
#ダメージを与える
execute as @e[type=!#mecha_santa:unhurtable,dx=0,sort=nearest,limit=1] unless entity @s[gamemode=!adventure,gamemode=!survival] at @s run function mecha_santa:entity/bullet/hit_damage

#キル
 function mecha_santa:entity/bullet/break