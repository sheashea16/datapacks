# function on load

# gives all players "emperor" tag
tag @a add emperor

# create scoreboard to keep track of motion
scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy

# unlock all inputs for player
#execute as @p run function inputs:unlock {arg:all}


