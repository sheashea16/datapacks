# make attack cooldown for 0.75 seconds

advancement revoke @a[tag=emperor, limit=1] only boss:left_click

tag @e[tag=aj.boss.root, tag=combat] remove frozen

# keep movement
execute as @a[tag=emperor,tag=walking_combat_w] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_w/play
execute as @a[tag=emperor,tag=walking_combat_a] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_a/play
execute as @a[tag=emperor,tag=walking_combat_s] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_s/play
execute as @a[tag=emperor,tag=walking_combat_d] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_d/play

# set delay for time window for attack 2

execute as @e[tag=aj.boss.root, tag=combat] run tag @s add chain
execute as @e[tag=aj.boss.root] run schedule function boss:transition/attack2_delay 10t