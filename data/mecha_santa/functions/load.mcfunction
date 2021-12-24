
#スコア作成
scoreboard objectives add bullet.Range dummy
scoreboard objectives add shotdelay dummy
scoreboard objectives add shotdelay2 dummy
scoreboard objectives add mecha_health dummy
scoreboard objectives add mecha_summon minecraft.used:minecraft.carrot_on_a_stick

#motion_vector
 forceload add 0 0 0 0
 kill @e[type=area_effect_cloud,tag=Al.Vector0]
 execute unless entity @e[type=area_effect_cloud,tag=Al.Vector0] run summon area_effect_cloud 0 0 0 {Tags:["Al.Vector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}

#motion_score 
 scoreboard objectives add Al.Ope dummy
 scoreboard objectives add Al.Speed dummy