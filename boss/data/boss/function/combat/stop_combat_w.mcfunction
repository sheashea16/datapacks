# give player the combat tag
execute as @a[tag=emperor] run tag @s add stopping_combat_w
execute as @a[tag=emperor] run tag @s remove walking_combat_w

execute as @e[tag=emperor] run say stopping combat_w!

# play combat animation

execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_w/stop

# stop motion
execute as @e[type=armor_stand,tag=base] run function boss:motion/stop_motion