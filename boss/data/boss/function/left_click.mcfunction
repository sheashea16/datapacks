# what happens when player left clicks

say Left Clicked!

# check for chain attack
execute as @e[tag=aj.boss.root, tag=combat, tag=chain] run function animated_java:boss/animations/swing_2/play

# if left click is pressed while not in combat

execute if entity @e[tag=emperor, tag=!combat] run advancement revoke @s only boss:left_click

# attack animation, stop all movement

execute as @e[tag=aj.boss.root, tag=combat] run function animated_java:boss/animations/attack_w/stop
execute as @e[tag=aj.boss.root, tag=combat] run function animated_java:boss/animations/attack_a/stop
execute as @e[tag=aj.boss.root, tag=combat] run function animated_java:boss/animations/attack_s/stop
execute as @e[tag=aj.boss.root, tag=combat] run function animated_java:boss/animations/attack_d/stop

# delay amount
execute as @a[tag=emperor, tag=combat] run schedule function boss:transition/attack_delay 0.75s

tag @e[tag=aj.boss.root, tag=combat, tag=!chain] add frozen

execute as @e[tag=aj.boss.root, tag=combat, tag=!chain] run function animated_java:boss/animations/swing_1/play