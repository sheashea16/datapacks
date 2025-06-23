# summon the armor stand that will be base
execute as @e[tag=emperor] run summon armor_stand ~ ~ ~ {Tags:["base"],Invulnerable:1b, Invisible:1b}
attribute @n[type=minecraft:armor_stand, tag=base] minecraft:step_height base set 1.0
 
# summon the rig at player position
execute as @e[tag=emperor] run function animated_java:boss/summon {args:{}}
tp @e[tag=aj.boss.root] ~ ~ ~ facing entity @s

# summon interaction entity above the rig
execute as @e[tag=aj.boss.root] run summon interaction ~ ~ ~ {width:0f,height:-1.95f,Tags:["offset"]}
ride @n[type=interaction, tag=offset] mount @n[tag=base]

# make rig ride the interaction entity
execute as @e[tag=aj.boss.root] run ride @s mount @n[type=interaction,tag=offset]

# summon another interaction entity above the rig
execute as @e[tag=aj.boss.root] run summon interaction ~ ~ ~ {width:0f,height:0.95f,Tags:["mount"]}
ride @n[type=interaction, tag=mount] mount @n[tag=aj.boss.root]

# ride the interaction entity above the rig
ride @n[tag=emperor] mount @n[type=interaction,tag=mount]

# give player with emperor tag invisibility
effect give @a[tag=emperor] invisibility infinite 1 true