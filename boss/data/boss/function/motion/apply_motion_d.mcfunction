# applying motion to base
say motion_d!

# store the current position
execute store result score @s motion_x1 run data get entity @s Pos[0] 1000
#execute store result score @s motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s motion_z1 run data get entity @s Pos[2] 1000

# store the position of right locator
#execute store result score @s motion_x2 run data get entity @s Pos[0] 1000
#execute store result score @s motion_y2 run data get entity @s Pos[1] 1000
#execute store result score @s motion_z2 run data get entity @s Pos[2] 1000

execute store result score @s motion_x2 run data get entity @n[type=interaction,limit=1,tag=right] Pos[0] 1000
execute store result score @s motion_z2 run data get entity @n[type=interaction,limit=1,tag=right] Pos[2] 1000

# store the result
execute store result entity @s Motion[0] double 0.0005 \
    run scoreboard players operation @s motion_x2 -= @s motion_x1
execute store result entity @s Motion[2] double 0.0005 \
    run scoreboard players operation @s motion_z2 -= @s motion_z1