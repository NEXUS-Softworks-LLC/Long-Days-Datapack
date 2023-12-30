execute store result score gm_player_percentage longdays.day_stats run gamerule playersSleepingPercentage
scoreboard players operation player_percentage longdays.day_stats = gm_player_percentage longdays.day_stats
execute store result score player_amount longdays.day_stats run execute if entity @a[gamemode=!spectator,gamemode=!creative]
scoreboard players operation player_percentage longdays.day_stats *= player_amount longdays.day_stats
scoreboard players operation player_percentage longdays.day_stats /= 100 longdays.day_stats