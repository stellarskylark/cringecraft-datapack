#
# Description: Teleport player to/from backrooms
# Called by: advancement cc:backroomsclip
# Entity @s: Player
#

execute at @s[tag=madeline] run tag @a[distance=0..3] add cc_brtp

execute at @s[tag=cc_brtp] unless predicate cc:inbackrooms run function cc:backroomstp
execute at @s[tag=cc_brtp] if predicate cc:inbackrooms run function cc:overworldtp
