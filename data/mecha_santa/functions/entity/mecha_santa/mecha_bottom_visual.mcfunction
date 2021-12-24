data modify entity @s Rotation[1] set value 0f
execute unless entity @s[nbt={Motion:[0.0d,0.0d,0.0d]}] run item modify entity @s armor.head mecha_santa:custommodeldata_7
execute if entity @s[nbt={Motion:[0.0d,0.0d,0.0d]}] run item modify entity @s armor.head mecha_santa:custommodeldata_1