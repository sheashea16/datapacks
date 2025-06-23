# play rolling animation and add frozen tag
execute as @a[tag=emperor] run tag @s add rolling_a

say rolling_a!

tag @e[tag=aj.boss.root, tag=combat] add frozen

execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_a/stop
execute as @e[tag=aj.boss.root, tag=combat] run function animated_java:boss/animations/roll_a/play

execute as @a[tag=emperor, tag=combat] run schedule function boss:transition/roll_delay 1s