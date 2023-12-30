#> Amend new PackVersion to Storage
data merge storage long-days:data {PackVersion:"0.41"}

#> Scoreboards
scoreboard objectives add longdays.config dummy "Long Days Config"
scoreboard objectives add longdays.sleep_time dummy
scoreboard objectives add longdays.day_stats dummy
scoreboard players set tick_timer longdays.day_stats 0
scoreboard players set 8 longdays.day_stats 8
scoreboard players set 100 longdays.day_stats 100

#> Default Config
scoreboard players set day_scale longdays.config 6
scoreboard players set day_scale_on longdays.config 1
scoreboard players set check_moon_phase longdays.config 0
scoreboard players set sleep_module longdays.config 1

#> Set Gamerule
gamerule doDaylightCycle false