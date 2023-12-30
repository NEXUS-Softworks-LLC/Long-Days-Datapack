scoreboard players set players_sleeping longdays.sleep_time 0
scoreboard players set conditions_met longdays.sleep_time 0
scoreboard players set SkipNight longdays.sleep_time 0

execute as @a[gamemode=!spectator] at @s if block ~ ~ ~ #beds[occupied=true] run scoreboard players add players_sleeping longdays.sleep_time 1

execute as @a[gamemode=!spectator] store result score @s longdays.sleep_time run data get entity @s SleepTimer
execute as @a[gamemode=!spectator] if score @s longdays.sleep_time matches 99.. run scoreboard players add conditions_met longdays.sleep_time 1

execute if score conditions_met longdays.sleep_time = players_sleeping longdays.sleep_time if score players_sleeping longdays.sleep_time >= player_percentage longdays.day_stats run scoreboard players set SkipNight longdays.sleep_time 1

execute if score SkipNight longdays.sleep_time matches 1 run function long-days:zprivate/sleep/day_set_morning
execute if predicate long-days:check_nighttime run schedule function long-days:zprivate/sleep/sleeping 1t