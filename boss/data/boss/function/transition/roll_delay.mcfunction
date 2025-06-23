# remove frozen tag after roll delay

tag @e[tag=aj.boss.root, tag=combat] remove frozen
tag @e[tag=emperor, tag=combat] remove rolling_w
tag @e[tag=emperor, tag=combat] remove rolling_d
tag @e[tag=emperor, tag=combat] remove rolling_a
tag @e[tag=emperor, tag=combat] remove rolling_s

execute as @e[tag=aj.boss.root, tag=combat] run function animated_java:boss/animations/roll_w/stop
execute as @e[tag=aj.boss.root, tag=combat] run function animated_java:boss/animations/roll_d/stop
execute as @e[tag=aj.boss.root, tag=combat] run function animated_java:boss/animations/roll_a/stop
execute as @e[tag=aj.boss.root, tag=combat] run function animated_java:boss/animations/roll_s/stop


# keep movement
execute as @a[tag=emperor,tag=walking_combat_w] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_w/play
execute as @a[tag=emperor,tag=walking_combat_a] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_a/play
execute as @a[tag=emperor,tag=walking_combat_s] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_s/play
execute as @a[tag=emperor,tag=walking_combat_d] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_d/play

say stop rolling!