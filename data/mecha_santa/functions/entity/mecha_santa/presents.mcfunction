tag @s add Presents_Shot_This
#プレゼント召喚
summon zombie ~ ~5 ~ {Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",Motion:[0.0,1.5,0.0],Tags:["mecha","mecha_presents","mecha_presents_Init"],ArmorItems:[{},{},{},{id:"minecraft:music_disc_11",Count:1b,tag:{CustomModelData:8}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:200000,ShowParticles:0b}]}
summon zombie ~ ~5 ~ {Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",Motion:[0.0,1.8,0.0],Tags:["mecha","mecha_presents","mecha_presents_Init"],ArmorItems:[{},{},{},{id:"minecraft:music_disc_11",Count:1b,tag:{CustomModelData:8}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:200000,ShowParticles:0b}]}
summon zombie ~ ~5 ~ {Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:empty",Motion:[0.0,2.0,0.0],Tags:["mecha","mecha_presents","mecha_presents_Init"],ArmorItems:[{},{},{},{id:"minecraft:music_disc_11",Count:1b,tag:{CustomModelData:8}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:200000,ShowParticles:0b}]}

#拡散
execute as @e[type=#mecha_santa:mecha_santa_enemy,tag=!mecha,distance=..60,nbt={Invulnerable:0b}] unless entity @s[gamemode=!survival,gamemode=!adventure] positioned as @s as @e[tag=Presents_Shot_This] positioned ^ ^-1 ^-10 run function mecha_santa:entity/bullet/spread_presents


#Init処理
execute as @e[tag=mecha_presents_Init] at @s run function mecha_santa:entity/mecha_santa/presents_init

#リセット
kill @e[type=marker,tag=mecha_Spread_presents]
tag @s remove Presents_Shot_This