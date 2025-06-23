#This function runs every tick

# testing

# applying motion to player

#execute if entity @e[tag=emperor,tag=walking_w] run execute as @e[type=armor_stand,tag=base] at @s rotated as @p run function boss:motion/apply_motion_w
#execute if entity @e[tag=emperor,tag=walking_a] run execute as @e[type=armor_stand,tag=base] at @s rotated as @p run function boss:motion/apply_motion_a
#execute if entity @e[tag=emperor,tag=walking_s] run execute as @e[type=armor_stand,tag=base] at @s rotated as @p run function boss:motion/apply_motion_s
#execute if entity @e[tag=emperor,tag=walking_d] run execute as @e[type=armor_stand,tag=base] at @s rotated as @p run function boss:motion/apply_motion_d

# rotate the rig where the player is looking
execute as @e[type=item_display,tag=aj.boss.root] at @s rotated as @e[tag=emperor,limit=1,sort=nearest] run rotate @s ~0 ~0

execute as @e[type=item_display,tag=aj.boss.root] at @s \
  run data modify entity @s Rotation[1] set value 0f

# detect direction inputs from player(s)

# moving forward
execute as @a[tag=emperor, tag=!walking_w, tag=!combat] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} run function boss:move/run_w
execute as @a[tag=emperor, tag=!stopping_w, tag=!combat] unless predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} run function boss:move/stop_run_w

# moving leftexecute as @a[tag=emperor, tag=!walking_a, tag=!combat] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} run function boss:move/run_a

execute as @a[tag=emperor, tag=!stopping_a, tag=!combat] unless predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} run function boss:move/stop_run_a

# moving backwards
execute as @a[tag=emperor, tag=!walking_s, tag=!combat] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{backward:true}}}} run function boss:move/run_s
execute as @a[tag=emperor, tag=!stopping_s, tag=!combat] unless predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{backward:true}}}} run function boss:move/stop_run_s

# moving right
execute as @a[tag=emperor, tag=!walking_d, tag=!combat] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} run function boss:move/run_d
execute as @a[tag=emperor, tag=!stopping_d, tag=!combat] unless predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} run function boss:move/stop_run_d

# sprinting forward
execute as @a[tag=emperor, tag=!combat, tag=!sprint_w] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true,sprint:true}}}} run function boss:move/sprint/sprint_w
execute as @a[tag=emperor, tag=!combat, tag=!stopping_sprint_w] unless predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true,sprint:true}}}} run function boss:move/sprint/stop_sprint_w

# jumping
execute as @a[tag=emperor, tag=!combat] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{jump:true}}}} run execute as @e[tag=base] run function boss:motion/apply_motion_y

# combat movement for player(s)

# moving forward in combat
execute as @a[tag=emperor, tag=combat, tag=!walking_combat_w] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} run function boss:combat/combat_w
execute as @a[tag=emperor, tag=combat, tag=!stopping_combat_w] unless predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} run function boss:combat/stop_combat_w

# moving left in combat
execute as @a[tag=emperor, tag=combat, tag=!walking_combat_a] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} run function boss:combat/combat_a
execute as @a[tag=emperor, tag=combat, tag=!stopping_combat_a] unless predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} run function boss:combat/stop_combat_a

# moving backwards in combat
execute as @a[tag=emperor, tag=combat, tag=!walking_combat_s] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{backward:true}}}} run function boss:combat/combat_s
execute as @a[tag=emperor, tag=combat, tag=!stopping_combat_s] unless predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{backward:true}}}} run function boss:combat/stop_combat_s

# moving right in combat
execute as @a[tag=emperor, tag=combat, tag=!walking_combat_d] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} run function boss:combat/combat_d
execute as @a[tag=emperor, tag=combat, tag=!stopping_combat_d] unless predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} run function boss:combat/stop_combat_d

# rolling forward in combat
execute as @a[tag=emperor, tag=combat, tag=!rolling_w, tag=walking_combat_w] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{jump:true}}}} run function boss:combat/roll/roll_w

# rolling left in combat
execute as @a[tag=emperor, tag=combat, tag=!rolling_d, tag=walking_combat_d] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{jump:true}}}} run function boss:combat/roll/roll_d

# rolling right in combat
execute as @a[tag=emperor, tag=combat, tag=!rolling_a, tag=walking_combat_a] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{jump:true}}}} run function boss:combat/roll/roll_a

# rolling backwards in combat
execute as @a[tag=emperor, tag=combat, tag=!rolling_s, tag=walking_combat_s] if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{jump:true}}}} run function boss:combat/roll/roll_s

