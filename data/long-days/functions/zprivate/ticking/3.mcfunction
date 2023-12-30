#> Scrapped function, checkphase is now run every tick if the setting is enabled

# get new daytime
execute store result score day_time longdays.day_stats run time query daytime
# if new day, check moon phase
execute if score day_time longdays.day_stats matches 0 run function long-days:zprivate/checkphase