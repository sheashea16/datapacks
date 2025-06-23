# give player the walking tag
execute as @a[tag=emperor] run tag @s remove stopping_w
execute as @a[tag=emperor] run tag @s add walking_w

execute as @e[tag=emperor] run say walking_w!

# play walking animation

execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/idle/stop

execute as @e[tag=aj.boss.root, tag=!frozen] run function animated_java:boss/animations/running_w/play

