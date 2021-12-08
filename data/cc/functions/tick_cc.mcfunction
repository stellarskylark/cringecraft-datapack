#
# Description: Things that require action every tick
# Called by: #minecraft:tick
#

# Mess with armor stand spawned to find ground when leaving backrooms
execute as @e[tag=cc_brtparmor] run function cc:overworldtparmor

# Check if lightning arrow has hit ground
execute as @e[tag=thorfury] at @s if predicate cc:arrowinground run summon minecraft:lightning_bolt
execute as @e[tag=thorfury] at @s if predicate cc:arrowinground run kill @s
