execute in overworld positioned 0.0 0.0 0.0 run tp @e[type=area_effect_cloud,tag=Al.Vector0,limit=1] ^ ^ ^-0.1

data modify storage al.storage Vector set from entity @e[tag=Al.Vector0,limit=1] Pos

execute store result score #X Al.Ope run data get storage al.storage Vector[0] 10000
execute store result score #Z Al.Ope run data get storage al.storage Vector[2] 10000

scoreboard players operation #X Al.Ope *= @s Al.Speed
scoreboard players operation #Z Al.Ope *= @s Al.Speed

execute store result storage al.storage Vector[0] double -0.0001 run scoreboard players get #X Al.Ope
execute store result storage al.storage Vector[2] double -0.0001 run scoreboard players get #Z Al.Ope

data modify entity @s Motion[0] set from storage al.storage Vector[0]
data modify entity @s Motion[2] set from storage al.storage Vector[2]

data remove storage al.storage Vector
scoreboard players reset #X Al.Ope
scoreboard players reset #Z Al.Ope