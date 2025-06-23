# play rolling animation and add frozen tag
execute as @a[tag=emperor] run tag @s add rolling_s

say rolling_s!

tag @e[tag=aj.boss.root, tag=combat] add frozen

execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_s/stop
execute as @e[tag=aj.boss.root, tag=combat] run function animated_java:boss/animations/roll_s/play

execute as @a[tag=emperor, tag=combat] run schedule function boss:transition/roll_delay 1s