#体力
execute if entity @s[tag=mecha_core] store result score @s mecha_health run data get entity @s Health


#見た目を調整
execute if entity @s[tag=mecha_bottom] if entity @a[distance=..40] run function mecha_santa:entity/mecha_santa/mecha_bottom_visual
execute if entity @s[tag=mecha_top] if entity @a[distance=..40] run data modify entity @s Rotation[0] set from entity @e[tag=mecha_core,distance=..5,limit=1,sort=nearest] Rotation[0]

#弾を撃つ
 execute if entity @s[tag=mecha_bottom] if predicate mecha_santa:battle_mode as @e[tag=mecha_core,limit=1,sort=nearest,distance=..2] at @s if entity @e[type=#mecha_santa:mecha_santa_enemy,nbt={Invulnerable:0b},tag=!mecha,distance=..60] run function mecha_santa:entity/mecha_santa/shotdelay

#近接ダメージ
execute if entity @s[tag=mecha_bottom] as @e[type=!#mecha_santa:unhurtable,nbt={Invulnerable:0b,HurtTime:0s},tag=!mecha,distance=..4] unless entity @s[gamemode=!adventure,gamemode=!survival] at @s run function mecha_santa:entity/mecha_santa/meel_damage

#pilligerの方の処理
execute if entity @s[tag=mecha_bottom] if data entity @s HandItems[0].tag{Charged:0b} run function mecha_santa:entity/mecha_santa/motion

#スパイクボール
execute if entity @s[tag=mecha_spike] as @e[type=!#mecha_santa:unhurtable,nbt={Invulnerable:0b,HurtTime:0s},tag=!mecha,distance=..1] unless entity @s[gamemode=!adventure,gamemode=!survival] at @s run function mecha_santa:entity/mecha_santa/meel_damage
execute if entity @s[tag=mecha_spike] run function mecha_santa:entity/mecha_santa/spike_break_delay

#自爆
 execute if entity @s[tag=mecha_top,tag=!mecha_explosion] unless predicate mecha_santa:mecha_top_self run function mecha_santa:entity/mecha_santa/self_destruct
 execute if entity @s[tag=mecha_presents,nbt={OnGround:1b}] run function mecha_santa:entity/mecha_santa/presents_explosion

#ダメージ音
 execute if entity @s[tag=mecha_core,nbt={HurtTime:10s}] run playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 10 1
 execute if entity @s[tag=mecha_bottom] unless predicate mecha_santa:death run function mecha_santa:entity/mecha_santa/death


#phase2
 execute if entity @s[tag=mecha_core,tag=!mecha_phase2,scores={mecha_health=..250}] run tag @s add mecha_phase2
 execute if entity @s[tag=mecha_top,tag=!mecha_phase2] if predicate mecha_santa:phase2 run function mecha_santa:entity/mecha_santa/mecha_top_phase2


