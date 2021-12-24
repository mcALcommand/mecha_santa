tag @s add Spike.Shot.This
#ちくちくするものを召喚する
summon armor_stand ~ ~5 ~ {Invulnerable:1b,Small:1b,Invisible:1b,Motion:[0.0,0.5,0.0],Tags:["mecha","mecha_spike","mecha_spike_Init"],ArmorItems:[{},{},{},{id:"minecraft:music_disc_11",Count:1b,tag:{CustomModelData:6}}]}

#拡散
execute as @e[type=#mecha_santa:mecha_santa_enemy,tag=!mecha,distance=..60,nbt={Invulnerable:0b}] unless entity @s[gamemode=!survival,gamemode=!adventure] positioned as @s as @e[tag=Spike.Shot.This] positioned ^ ^-1 ^-10 run function mecha_santa:entity/bullet/spread_spike

#Init処理
execute as @e[tag=mecha_spike_Init] at @s run function mecha_santa:entity/mecha_santa/spike_init

#リセット
tag @s remove Spike.Shot.This