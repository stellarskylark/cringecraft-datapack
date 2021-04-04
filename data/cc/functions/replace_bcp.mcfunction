# 
# Description: Replace titled book with Book of Cringy Prayer
# Called by: cc:tick_cc
# Entity @s: Player
#
# Replaces the written book from the player's inventory
#
execute store result score #cc_success cc_tmp run clear @s minecraft:written_book{title:"Prayers"} 1
execute if score #cc_success cc_tmp matches 1.. run loot give @s loot cc:bcp

tag @s remove cc_bcpcraft
