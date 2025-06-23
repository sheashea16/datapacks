# delay for engagement

tag @e[tag=aj.boss.root] remove frozen

# keep movement
execute as @a[tag=emperor,tag=walking_combat_w] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_w/play
execute as @a[tag=emperor,tag=walking_combat_a] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_a/play
execute as @a[tag=emperor,tag=walking_combat_s] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_s/play
execute as @a[tag=emperor,tag=walking_combat_d] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/attack_d/play