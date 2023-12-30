# if dayscale <= 1 and daysim is on, turn it off
execute if score day_scale longdays.config matches ..1 if score day_scale_on longdays.config matches 1 run function long-days:zprivate/config/disable_day_sim

schedule function long-days:zprivate/ticking/0_20t 20t