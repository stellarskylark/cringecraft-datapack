#
# Description: Things that happen under specific triggers
# Called by: #minecraft:tick
# Entity @s: none
#

# Handle player interactions
execute as @a[scores={cc_trigger=1..}] run function cc:player_triggers
