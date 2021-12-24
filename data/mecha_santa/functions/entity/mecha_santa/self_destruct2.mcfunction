
execute as @e[tag=mecha_explosion] at @s run loot spawn ~ ~3 ~ loot mecha_santa:mecha_loot
execute as @e[tag=mecha_explosion] at @s positioned ~ ~5 ~ run function mecha_santa:entity/mecha_santa/summon_exp
execute at @e[tag=mecha_explosion] as @e[type=item,distance=..10] run data modify entity @s Health set value 1000s
execute at @e[tag=mecha_explosion] run particle minecraft:block red_wool ~ ~3 ~ 0 0 0 0.05 100
execute as @e[tag=mecha_explosion] at @s run summon creeper ~ ~1 ~ {powered:1b,Fuse:1,ignited:1b,ExplosionRadius:5b,CustomName:'{"text":"メカサンタ","color":"red","italic":false}'}
execute as @e[tag=mecha_explosion] at @s run kill @s