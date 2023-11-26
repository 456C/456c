
# success

execute as @s[scores={item1=0}] run scoreboard players set @s healing 6
execute as @s[scores={item1=0}] run scoreboard players set @s slowHealing 20
execute as @s[scores={item1=0}] run effect give @s speed 7 0 false
execute as @s[scores={item1=0}] run effect give @s resistance 7 1 false
execute as @s[scores={item1=0}] run effect give @s strength 6 1 false
execute as @s[scores={item1=0}] at @s run playsound block.honey_block.place master @a[distance=..20] ~ ~ ~ 20 0.5 
execute as @s[scores={item1=0}] at @s run playsound item.bottle.fill_dragonbreath master @a[distance=..20] ~ ~ ~ 20 0.5 
execute as @s[scores={item1=0}] at @s run playsound entity.player.burp master @a[distance=..20] ~ ~ ~ 20 1 

# cooldown 
scoreboard players set @s[scores={item1=0}] item1 17


# failure

execute as @s[scores={right_click=1..,item1=1..}] run playsound block.note_block.bass master @s ~ ~ ~ 100 0.1

# show Timer if held

# tag @s[nbt=!{SelectedItem:{ tag:{dragonheart:1b}, id:"minecraft:beetroot"}}] remove item1
# tag @s[nbt={SelectedItem:{ tag:{dragonheart:1b}, id:"minecraft:beetroot"}}] add item1 

# loop

execute as @s[scores={item1=1}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 20 1.6
execute unless entity @s[scores={right_click=1..}] run scoreboard players remove @s[scores={item1=1..}] item1 1
