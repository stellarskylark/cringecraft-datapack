#
# Description: Handle player interactions with /trigger
# Called by: cc:trigger_cc
# Entity @s: Player
#

## Deity favor
# these first four lines are a hacky workaround to ensure that they have a scoreboard value initialized
execute if entity @s[scores={cc_trigger=1}] run scoreboard players add @s cc_ccpfavor 0
execute if entity @s[scores={cc_trigger=1}] run scoreboard players add @s cc_nigelfavor 0
execute if entity @s[scores={cc_trigger=1}] run scoreboard players add @s cc_shoopfavor 0
execute if entity @s[scores={cc_trigger=1}] run scoreboard players add @s cc_admindebt 0
execute if entity @s[scores={cc_trigger=1}] run tellraw @s ["",{"text":"Your deity favor is:","underlined":true},{"text":"\n"},{"text":"  ChickenCowPig - ","italic":true},{"score":{"name":"*","objective":"cc_ccpfavor"},"color":"yellow"},{"text":"\n"},{"text":"  Shoop - ","italic":true},{"score":{"name":"*","objective":"cc_shoopfavor"},"color":"yellow"},{"text":"\n"},{"text":"  Nigel - ","italic":true},{"score":{"name":"*","objective":"cc_nigelfavor"},"color":"yellow"},{"text":"\n"},{"text":"Your Administrator debt is:","underlined":true},{"text":"\n"},{"text":"  Administrator","italic":true},{"text":" - "},{"score":{"name":"*","objective":"cc_admindebt"},"color":"dark_red"}]


# Reset trigger score and guarantee it's still available
scoreboard players set @s cc_trigger 0
scoreboard players enable @s cc_trigger
