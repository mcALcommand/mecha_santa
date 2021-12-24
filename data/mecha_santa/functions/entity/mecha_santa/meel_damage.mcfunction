

#ヒット音
 playsound minecraft:block.bone_block.break neutral @a ~ ~ ~ 1.5 1

#ダメージ設定
 data modify storage score_damage: Argument set value {Damage:6.0}

#ダメージを与える
 execute if entity @s[type=!end_crystal] run function score_damage:api/attack
 data remove storage score_damage: Argument