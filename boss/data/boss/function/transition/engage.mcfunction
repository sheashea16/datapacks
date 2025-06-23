# engaging in combat

tag @e[tag=emperor] add combat
tag @e[tag=aj.boss.root] add combat

# freeze other activity
tag @e[tag=aj.boss.root] add frozen

execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/running_w/stop
execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/running_a/stop
execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/running_s/stop
execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/running_d/stop

execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/engange/play

execute as @a[tag=emperor] run schedule function boss:transition/engage_delay 1.4s

say Combat Engaged!