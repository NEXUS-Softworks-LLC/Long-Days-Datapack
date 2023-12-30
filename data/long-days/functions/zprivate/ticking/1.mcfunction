# if daysim is off, turn it on
execute if score day_scale_on longdays.config matches 0 run function long-days:zprivate/config/enable_day_sim
# if daysim is on, tick sim
execute if score day_scale_on longdays.config matches 1 run function long-days:zprivate/ticking/2