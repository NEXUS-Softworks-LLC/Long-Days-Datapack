advancement revoke @s only long-days:entities/player_sleep
# update player percentage
function long-days:zprivate/sleep/get_player_percentage
# tellraw if sleep module is off and playerSleepPercentage gamerule <= 100
# (there is an extra message that displays in the player's actonbar title slot when the gamerule is > 100)
execute if score sleep_module longdays.config matches 0 if score gm_player_percentage longdays.day_stats <= 100 longdays.day_stats run tellraw @s {"text":"You can't seem to close your eyes...","color":"gray"}
# start sleep loop if config module is on and sleep loop has not already triggered
execute if score sleep_module longdays.config matches 1 run schedule function long-days:zprivate/sleep/sleeping 1t