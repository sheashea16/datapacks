# delay for disengagement

tag @e[tag=aj.boss.root] remove frozen

# keep movement
execute as @a[tag=emperor,tag=walking_w] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/running_w/play
execute as @a[tag=emperor,tag=walking_a] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/running_a/play
execute as @a[tag=emperor,tag=walking_s] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/running_s/play
execute as @a[tag=emperor,tag=walking_d] run execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/running_d/play