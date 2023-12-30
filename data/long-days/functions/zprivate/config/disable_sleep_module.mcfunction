scoreboard players set sleep_module longdays.config 0

scoreboard players reset player_percentage longdays.day_stats
scoreboard players reset player_amount longdays.day_stats
scoreboard players reset players_sleeping longdays.sleep_time
scoreboard players reset conditions_met longdays.sleep_time
scoreboard players reset SkipNight longdays.sleep_time

schedule clear long-days:zprivate/sleep/sleeping

function long-days:config