
#ヒット音
 playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

#ダメージ設定
 data modify storage score_damage: Argument set value {Damage:2.5}

#ダメージを与える
 execute if entity @s[type=!end_crystal] run function score_damage:api/attack
 data remove storage score_damage: Argument