# stop playing animation if not moving
execute as @a[tag=emperor] run tag @s remove walking_d
execute as @a[tag=emperor] run tag @s add stopping_d

execute as @e[tag=emperor] run say stopping_d!

execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/running_d/stop

execute as @e[tag=aj.boss.root, tag=!combat] run function animated_java:boss/animations/idle/play

# stop motion
execute as @e[type=armor_stand,tag=base] run function boss:motion/stop_motion