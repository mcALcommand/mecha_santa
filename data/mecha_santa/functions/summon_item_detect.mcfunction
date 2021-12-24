#storage 取得
 data modify storage al.slot Item.Mainhand set from entity @s SelectedItem
 data modify storage al.slot Item.Offhand set from entity @s Inventory[{Slot:-106b}]

#プレゼント箱
 execute if data storage al.slot Item.Mainhand.tag.AlData{ItemName:"mecha_summon"} run function mecha_santa:entity/mecha_santa/summon_stanby

 execute if data storage al.slot Item.Offhand.tag.AlData{ItemName:"mecha_summon"} run function mecha_santa:entity/mecha_santa/summon_stanby

#storage 削除
 data remove storage al.slot Item
 scoreboard players reset @s mecha_summon