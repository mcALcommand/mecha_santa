#実行者
tag @s add Shot.This

#発砲音
 playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 3 2
 playsound minecraft:block.dispenser.launch hostile @a ~ ~ ~ 1 1.8


#弾を召喚
  #右サイド
  execute anchored eyes run particle smoke ^-4.5 ^-1 ^ 0 0 0 0.05 5
  execute anchored eyes run summon marker ^-4.5 ^-1 ^ {Tags:["bullet.Init","mecha.bullet","AL_UUID_Hit"]}

 #左サイド
  execute anchored eyes run particle smoke ^4.5 ^-1 ^ 0 0 0 0.05 5
  execute anchored eyes run summon marker ^4.5 ^-1 ^ {Tags:["bullet.Init","mecha.bullet","AL_UUID_Hit"]}

  #拡散
  execute as @e[type=#mecha_santa:mecha_santa_enemy,tag=!mecha,distance=..60,nbt={Invulnerable:0b}] unless entity @s[gamemode=!survival,gamemode=!adventure] positioned as @s as @e[tag=Shot.This] positioned ^ ^-1 ^-10 run function mecha_santa:entity/bullet/spread
  execute as @e[type=#mecha_santa:mecha_santa_enemy,tag=!mecha,distance=..60,nbt={Invulnerable:0b}] unless entity @s[gamemode=!survival,gamemode=!adventure] positioned as @s as @e[tag=Shot.This] positioned ^ ^-1 ^-10 run function mecha_santa:entity/bullet/spread

#Init処理
 execute as @e[type=marker,tag=bullet.Init] at @s run function mecha_santa:entity/bullet/init
#キル
kill @e[type=marker,tag=mecha_Spread]

#実行者剥奪
tag @s remove Shot.This
