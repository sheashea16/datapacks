# change motion nbt to zero

say stop motion!

execute as @e[type=armor_stand,tag=base] at @s rotated as @p run data modify entity @s Motion[0] set value 0.0
execute as @e[type=armor_stand,tag=base] at @s rotated as @p run data modify entity @s Motion[2] set value 0.0