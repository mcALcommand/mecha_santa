item modify entity @s weapon.mainhand mecha_santa:item_remove
playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 10 0
summon area_effect_cloud ~ ~0.5 ~ {Particle:"enchant",Radius:5f,Duration:60,Age:0,Tags:["mecha_summon"]}
schedule function mecha_santa:entity/mecha_santa/summon_mecha_santa 60t