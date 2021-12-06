execute at @s unless block ~ ~ ~ minecraft:air run tp ~ ~3 ~
execute at @s if block ~ ~ ~ minecraft:air run tp @a[tag=cc_brtp] ~ ~ ~
execute at @s if block ~ ~ ~ minecraft:air run tag @a[tag=cc_brtp] remove cc_brtp
execute at @s if block ~ ~ ~ minecraft:air run kill @s
