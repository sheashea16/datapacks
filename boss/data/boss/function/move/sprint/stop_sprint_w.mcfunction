# stop playing animation if not moving
execute as @a[tag=emperor] run tag @s remove sprint_w
execute as @a[tag=emperor] run tag @s add stopping_sprint_w

execute as @e[tag=emperor] run say stopping_sprint_w!

# stop sprinting animation
execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/sprint_w/stop

# keep movement
execute as @a[tag=emperor,tag=walking_w] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/running_w/play

# stop motion
execute as @e[type=armor_stand,tag=base] run function boss:motion/stop_motion