# what happens when the player right clicks

advancement revoke @s only boss:right_click

say Right Clicked!

# toggle combat mode on / off

execute as @e[tag=aj.boss.root] run function animated_java:boss/animations/idle/stop

tag @e[tag=aj.boss.root] add toggling_combat

execute if entity @e[tag=aj.boss.root, tag=combat, tag=!frozen] run function boss:transition/disengage
execute if entity @e[tag=aj.boss.root, tag=!combat, tag=toggling_combat] run function boss:transition/engage



