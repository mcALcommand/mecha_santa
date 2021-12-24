
#パーティクル
 particle minecraft:dust 1 0 0 1 ^ ^ ^ 0 0 0 0 1 force

#前進
 execute if entity @s[scores={bullet.Range=1..}] run tp @s ^ ^ ^0.25 ~ ~

#スコア減算
 scoreboard players remove @s bullet.Range 1

#衝突判定
 execute positioned ~-0.5 ~0.0 ~-0.5 positioned ~0.3 ~-0.1 ~0.3 if entity @e[dx=0,type=!#mecha_santa:unhurtable,type=!ender_dragon,sort=nearest,tag=!mecha,limit=1] unless entity @s[gamemode=!adventure,gamemode=!survival] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=!#mecha_santa:unhurtable,tag=!mecha,nbt={Invulnerable:0b},sort=nearest,limit=1] at @s run function mecha_santa:entity/bullet/hit

#壁の判定
 execute unless block ~ ~ ~ #mecha_santa:no_collision run function mecha_santa:entity/bullet/break

#ループ
 execute if entity @s[scores={bullet.Range=1..}] at @s run function mecha_santa:entity/bullet/move

#キル
 execute if entity @s[scores={bullet.Range=0}] run kill @s