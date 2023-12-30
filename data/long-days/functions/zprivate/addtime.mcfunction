# reset timer
scoreboard players set tick_timer longdays.day_stats 0

# increment time
time add 1t

# check moon phase if config is set
execute if score check_moon_phase longdays.config matches 1 run function long-days:zprivate/checkphase