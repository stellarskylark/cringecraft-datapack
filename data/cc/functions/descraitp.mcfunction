
# Teleport to waypoint
execute at @e[tag=cc_tp1] if entity @s[scores={cc_trigger=210}] run tp @s ~ ~ ~
execute at @e[tag=cc_tp2] if entity @s[scores={cc_trigger=220}] run tp @s ~ ~ ~
execute at @e[tag=cc_tp3] if entity @s[scores={cc_trigger=230}] run tp @s ~ ~ ~
execute at @e[tag=cc_tp4] if entity @s[scores={cc_trigger=240}] run tp @s ~ ~ ~
execute at @e[tag=cc_tp5] if entity @s[scores={cc_trigger=250}] run tp @s ~ ~ ~

# Get waypoint info
execute if entity @s[scores={cc_trigger=211}] run tellraw @s ["Waypoint 1: ", {"nbt":"CustomName", "entity":"@e[tag=cc_tp1]", "interpret":true}, " ", {"nbt":"Pos", "entity":"@e[tag=cc_tp1]"}]
execute if entity @s[scores={cc_trigger=221}] run tellraw @s ["Waypoint 2: ", {"nbt":"CustomName", "entity":"@e[tag=cc_tp2]", "interpret":true}, " ", {"nbt":"Pos", "entity":"@e[tag=cc_tp2]"}]
execute if entity @s[scores={cc_trigger=231}] run tellraw @s ["Waypoint 3: ", {"nbt":"CustomName", "entity":"@e[tag=cc_tp3]", "interpret":true}, " ", {"nbt":"Pos", "entity":"@e[tag=cc_tp3]"}]
execute if entity @s[scores={cc_trigger=241}] run tellraw @s ["Waypoint 4: ", {"nbt":"CustomName", "entity":"@e[tag=cc_tp4]", "interpret":true}, " ", {"nbt":"Pos", "entity":"@e[tag=cc_tp4]"}]
execute if entity @s[scores={cc_trigger=251}] run tellraw @s ["Waypoint 5: ", {"nbt":"CustomName", "entity":"@e[tag=cc_tp5]", "interpret":true}, " ", {"nbt":"Pos", "entity":"@e[tag=cc_tp5]"}]

# Print all waypoint info
execute if entity @s[scores={cc_trigger=299}] run tellraw @s ["Waypoint 1: ", {"nbt":"CustomName", "entity":"@e[tag=cc_tp1]", "interpret":true}, " ", {"nbt":"Pos", "entity":"@e[tag=cc_tp1]"}, "\n", "Waypoint 2: ", {"nbt":"CustomName", "entity":"@e[tag=cc_tp2]", "interpret":true}, " ", {"nbt":"Pos", "entity":"@e[tag=cc_tp2]"}, "\n", "Waypoint 3: ", {"nbt":"CustomName", "entity":"@e[tag=cc_tp3]", "interpret":true}, " ", {"nbt":"Pos", "entity":"@e[tag=cc_tp3]"}, "\n", "Waypoint 4: ", {"nbt":"CustomName", "entity":"@e[tag=cc_tp4]", "interpret":true}, " ", {"nbt":"Pos", "entity":"@e[tag=cc_tp4]"}, "\n", "Waypoint 5: ", {"nbt":"CustomName", "entity":"@e[tag=cc_tp5]", "interpret":true}, " ", {"nbt":"Pos", "entity":"@e[tag=cc_tp5]"}]

# Set waypoint
execute at @e[tag=cc_tp1] if entity @s[scores={cc_trigger=212}] run function cc:removewaypoint
execute at @s align xyz if entity @s[scores={cc_trigger=212}] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["cc_tp1"], CustomNameVisible:1, Invulnerable:1, NoGravity:1, NoAI:1, CustomName:'"Unnamed"', Invisible:1}
execute at @s align xyz if entity @s[scores={cc_trigger=212}] run forceload add ~ ~

execute at @e[tag=cc_tp2] if entity @s[scores={cc_trigger=222}] run function cc:removewaypoint
execute at @s align xyz if entity @s[scores={cc_trigger=222}] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["cc_tp2"], CustomNameVisible:1, Invulnerable:1, NoGravity:1, NoAI:1, CustomName:'"Unnamed"', Invisible:1}
execute at @s align xyz if entity @s[scores={cc_trigger=222}] run forceload add ~ ~

execute at @e[tag=cc_tp3] if entity @s[scores={cc_trigger=232}] run function cc:removewaypoint
execute at @s align xyz if entity @s[scores={cc_trigger=232}] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["cc_tp3"], CustomNameVisible:1, Invulnerable:1, NoGravity:1, NoAI:1, CustomName:'"Unnamed"', Invisible:1}
execute at @s align xyz if entity @s[scores={cc_trigger=232}] run forceload add ~ ~

execute at @e[tag=cc_tp4] if entity @s[scores={cc_trigger=242}] run function cc:removewaypoint
execute at @s align xyz if entity @s[scores={cc_trigger=242}] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["cc_tp4"], CustomNameVisible:1, Invulnerable:1, NoGravity:1, NoAI:1, CustomName:'"Unnamed"', Invisible:1}
execute at @s align xyz if entity @s[scores={cc_trigger=242}] run forceload add ~ ~

execute at @e[tag=cc_tp5] if entity @s[scores={cc_trigger=252}] run function cc:removewaypoint
execute at @s align xyz if entity @s[scores={cc_trigger=252}] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["cc_tp5"], CustomNameVisible:1, Invulnerable:1, NoGravity:1, NoAI:1, CustomName:'"Unnamed"', Invisible:1}
execute at @s align xyz if entity @s[scores={cc_trigger=252}] run forceload add ~ ~

