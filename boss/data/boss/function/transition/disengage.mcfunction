# disengage from combat mode 

# freeze other activity
tag @e[tag=aj.boss.root] add frozen
tag @e[tag=emperor] remove combat
tag @e[tag=aj.boss.root] remove combat
tag @e[tag=toggling_combat] remove toggling_combat

execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_w/stop
execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_a/stop
execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_s/stop
execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_d/stop

execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/disengage/play
execute as @a[tag=emperor] run schedule function boss:transition/disengage_delay 0.9s

say Combat Disengaged!