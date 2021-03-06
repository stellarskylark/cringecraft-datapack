#
# Description: Handle player interactions with /trigger
# Called by: cc:trigger_cc
# Entity @s: Player
#

# 1, 10-19, 100-199 -- Madeline and backrooms stuff
# 2, 20-29, 200-299 -- Descrai and teleportation stuff
# 3, 30-39, 300-399 -- Potato and naturalism stuff

# Backrooms Teleportation
execute if entity @s[scores={cc_trigger=1},tag=madeline] run function cc:brclip
# Reset brtp tag
execute if entity @s[scores={cc_trigger=10},tag=madeline] run tag @a[tag=cc_brtp] remove cc_brtp
execute at @s[scores={cc_trigger=11},tag=madeline] if predicate cc:inbackrooms run give @s honey_bottle{display:{Name:'"Almond Water"', Lore:['"Smells faintly of cyanide."']}} 16

# 2 - for Descrai; 1-5 - waypoint; 0-2 - tp, check, set, in that order
execute if entity @s[scores={cc_trigger=210..252}] run function cc:descraitp
execute if entity @s[scores={cc_trigger=299}] run function cc:descraitp

# Potato's naturalist powers, weather control + giving power items
execute if entity @s[scores={cc_trigger=30},tag=potato] run weather clear
execute if entity @s[scores={cc_trigger=31},tag=potato] run weather rain
execute if entity @s[scores={cc_trigger=32},tag=potato] run weather thunder
execute if entity @s[scores={cc_trigger=33},tag=potato] run loot give @s loot cc:infinitebonemeal
execute if entity @s[scores={cc_trigger=34},tag=potato] run loot give @s loot cc:lightningbow

# xandeyn's horse summoning
execute if entity @s[scores={cc_trigger=4},tag=xandeyn] run function cc:summonxandeynhorse

# Reset trigger score and guarantee it's still available
scoreboard players set @s cc_trigger 0
scoreboard players enable @s cc_trigger
