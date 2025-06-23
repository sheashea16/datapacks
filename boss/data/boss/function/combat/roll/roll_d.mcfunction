# play rolling animation and add frozen tag
execute as @a[tag=emperor] run tag @s add rolling_d

say rolling_d!

tag @e[tag=aj.boss.root, tag=combat] add frozen

execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_d/stop
execute as @e[tag=aj.boss.root, tag=combat] run function animated_java:boss/animations/roll_d/play

execute as @a[tag=emperor, tag=combat] run schedule function boss:transition/roll_delay 1s