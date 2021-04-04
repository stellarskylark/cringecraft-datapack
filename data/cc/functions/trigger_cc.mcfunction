#
# Description: Things that happen under specific triggers
# Called by: #minecraft:tick
# Entity @s: none
#

# Craft the Book of Cringy Prayer, and reset people with the hidden achievement
execute as @a[tag=cc_bcpcraft] run function cc:replace_bcp
execute as @a[advancements={cc:bcp_hidden=true}] run advancement revoke @s only cc:bcp_hidden

# Handle player interactions
execute as @a[scores={cc_trigger=1..}] run function cc:player_triggers

# Passive deity effects, only check if score is actually high enough to receive an effect
execute as @a[scores={cc_ccpfavor=1..}] run function cc:ccpbuffs
