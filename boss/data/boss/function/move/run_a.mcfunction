# give player the walking tag
execute as @a[tag=emperor] run tag @s remove stopping_a
execute as @a[tag=emperor] run tag @s add walking_a

execute as @e[tag=emperor] run say walking_a!

# play walking animation

execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/idle/stop

execute as @e[tag=aj.boss.root, tag=!frozen] run function animated_java:boss/animations/running_a/play
