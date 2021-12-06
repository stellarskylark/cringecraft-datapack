#
# Description: Handle player interactions with /trigger
# Called by: cc:trigger_cc
# Entity @s: Player
#

# Backrooms Teleportation
execute if entity @s[scores={cc_trigger=1}] run function cc:brclip
# Reset brtp tag
execute if entity @s[scores={cc_trigger=10}] run tag @a[tag=cc_brtp] remove cc_brtp

# Reset trigger score and guarantee it's still available
scoreboard players set @s cc_trigger 0
scoreboard players enable @s cc_trigger
