scoreboard players add @s shotdelay 1
scoreboard players add @s shotdelay2 1
execute if score @s shotdelay matches 3 unless entity @s[tag=mecha_bottom] facing entity @e[type=#mecha_santa:mecha_santa_enemy,nbt={Invulnerable:0b},tag=!mecha,distance=..30] feet run tp @s ~ ~ ~ ~ ~
execute if score @s shotdelay matches 3 run function mecha_santa:entity/mecha_santa/shot
execute if score @s shotdelay matches 4.. run scoreboard players reset @s shotdelay

#phase2
execute if entity @s[tag=mecha_phase2] run function mecha_santa:entity/mecha_santa/shotdelay_phase2

#時間で撃つ
 #スパイクボール
 execute if score @s shotdelay2 matches 100 if predicate mecha_santa:chance50 run function mecha_santa:entity/mecha_santa/spike_fire
 execute if score @s shotdelay2 matches 900 if predicate mecha_santa:chance50 run function mecha_santa:entity/mecha_santa/spike_fire

 #プレゼント
 execute if score @s shotdelay2 matches 400 if predicate mecha_santa:chance50 run function mecha_santa:entity/mecha_santa/presents
 execute if score @s shotdelay2 matches 800 if predicate mecha_santa:chance50 run function mecha_santa:entity/mecha_santa/presents

 #スノークリスタル
 execute if score @s shotdelay2 matches 200 if predicate mecha_santa:chance50 run summon vex ~ ~5 ~ {Health:2f,LifeTicks:800,Tags:["mecha","mecha_snowcystal"],ArmorItems:[{},{},{},{id:"minecraft:music_disc_11",Count:1b,tag:{CustomModelData:9}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:2},{Name:"generic.follow_range",Base:40},{Name:"generic.knockback_resistance",Base:10},{Name:"generic.attack_damage",Base:6}]}
 execute if score @s shotdelay2 matches 600 if predicate mecha_santa:chance50 run summon vex ~ ~5 ~ {Health:2f,LifeTicks:800,Tags:["mecha","mecha_snowcystal"],ArmorItems:[{},{},{},{id:"minecraft:music_disc_11",Count:1b,tag:{CustomModelData:9}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:2},{Name:"generic.follow_range",Base:40},{Name:"generic.knockback_resistance",Base:10},{Name:"generic.attack_damage",Base:6}]}

#リセット
execute if score @s shotdelay2 matches 1000.. run scoreboard players reset @s shotdelay2