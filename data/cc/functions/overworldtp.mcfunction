summon minecraft:armor_stand ~ ~ ~ {NoAI:1, Invulnerable:1, NoGravity:1, Invisible:1}
tag @e[type=minecraft:armor_stand,distance=0..1] add cc_brtparmor
execute in minecraft:overworld run tp @a[tag=cc_brtp] ~ 60 ~
execute as @e[tag=cc_brtparmor] at @e[tag=cc_brtparmor] in minecraft:overworld run tp ~ 60 ~
