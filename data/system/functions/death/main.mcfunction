execute if score @s Death matches 1 at @s as @e[type=marker,tag=tower,distance=..12] at @s run summon area_effect_cloud ~ ~-4 ~ {Tags:["capture"],Duration:140}

execute if score @s Death matches 5 run gamemode spectator @s
execute if score @s Death matches 1 run effect give @s darkness 6 0 true
execute if score @s Death matches 1 run effect give @s blindness 6 0 true
execute if score @s Death matches 1 run title @s times 20 40 20
execute if score @s Death matches 1 run title @s subtitle {"text":"You will respawn soon"}
execute if score @s Death matches 1 run title @s title {"text":"YOU DIED","bold":true,"color":"dark_gray"}
execute if score @s Death matches 5 run tp @s 501 500 468 -73 62
execute if score @s Death matches 1 run clear @s carrot_on_a_stick
execute if score @s Death matches 1 run give @s[scores={SelectedClass=3,item5=0}] arrow 1




scoreboard players add @s Death 1
execute if score @s Death matches 90 if score $lobby_select obj2 matches 1 run tp @s 912 9 451 0.9 3.7
execute if score @s Death matches 90 if score $lobby_select obj2 matches 2 run tp @s 1030.174 10 448.098 -0.8 -0.5
execute if score @s Death matches 90 run gamemode adventure @s
execute if score @s Death matches 90.. run scoreboard players reset @s Death

execute as @a[scores={Death=..90}] run schedule function system:death/main 1t replace
