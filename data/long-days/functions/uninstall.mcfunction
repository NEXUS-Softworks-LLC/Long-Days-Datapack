#> Remove Scoreboards
scoreboard objectives remove longdays.day_stats
scoreboard objectives remove longdays.sleep_time
scoreboard objectives remove longdays.config

#> Clear Scheduled Functions
schedule clear long-days:zprivate/sleep/sleeping
schedule clear long-days:zprivate/ticking/0_20t

#> Clear Storage
data remove storage long-days:data PackVersion

#> Restore Gamerule
gamerule doDaylightCycle true

#> Disable Datapack
datapack disable "file/long-days"