# sprinting forward

say sprint_w!

# give player the sprinting tag
execute as @a[tag=emperor] run tag @s remove stopping_sprint_w
execute as @a[tag=emperor] run tag @s add sprint_w

# play sprinting animation

execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/idle/stop
execute as @e[tag=aj.boss.root, tag=!frozen] run function animated_java:boss/animations/running_w/stop
execute as @e[tag=aj.boss.root, tag=!frozen] run function animated_java:boss/animations/sprint_w/play