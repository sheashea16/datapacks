# spectate the camera above the rig

execute as @e[tag=emperor] run gamemode spectator
execute as @e[tag=aj.boss.root] run function animated_java:boss/as_camera {name:"pov", command:"spectate @s @p"}
