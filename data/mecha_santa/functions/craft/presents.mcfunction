#アイテムを召喚
execute at @s run loot spawn ~ ~ ~ loot mecha_santa:presents
data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

#レシピ没収
recipe take @s mecha_santa:presents_recipe

#チェストを消す
 clear @s chest 1

#進捗削除
 advancement revoke @s only mecha_santa:craft/presents