# give player the combat tag
execute as @a[tag=emperor] run tag @s remove stopping_combat_s
execute as @a[tag=emperor] run tag @s add walking_combat_s

execute as @e[tag=emperor] run say combat_s!

# play combat animation

execute as @e[tag=aj.boss.root, tag=!frozen] run function animated_java:boss/animations/attack_s/play
