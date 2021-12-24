
#時間で撃つ
 #スパイクボール
 execute if score @s shotdelay2 matches 400 run function mecha_santa:entity/mecha_santa/spike_fire
 execute if score @s shotdelay2 matches 600 run function mecha_santa:entity/mecha_santa/spike_fire

 #プレゼント
 execute if score @s shotdelay2 matches 100 run function mecha_santa:entity/mecha_santa/presents
 execute if score @s shotdelay2 matches 300 run function mecha_santa:entity/mecha_santa/presents
 execute if score @s shotdelay2 matches 500 run function mecha_santa:entity/mecha_santa/presents
 execute if score @s shotdelay2 matches 700 run function mecha_santa:entity/mecha_santa/presents
 execute if score @s shotdelay2 matches 900 run function mecha_santa:entity/mecha_santa/presents

 #スノークリスタル
 execute if score @s shotdelay2 matches 300 run summon vex ~ ~5 ~ {Health:2f,LifeTicks:800,Tags:["mecha","mecha_snowcystal"],ArmorItems:[{},{},{},{id:"minecraft:music_disc_11",Count:1b,tag:{CustomModelData:9}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:2},{Name:"generic.follow_range",Base:40},{Name:"generic.knockback_resistance",Base:10},{Name:"generic.attack_damage",Base:6}]}
 execute if score @s shotdelay2 matches 500 run summon vex ~ ~5 ~ {Health:2f,LifeTicks:800,Tags:["mecha","mecha_snowcystal"],ArmorItems:[{},{},{},{id:"minecraft:music_disc_11",Count:1b,tag:{CustomModelData:9}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:2},{Name:"generic.follow_range",Base:40},{Name:"generic.knockback_resistance",Base:10},{Name:"generic.attack_damage",Base:6}]}
