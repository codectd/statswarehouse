-- models/mart/player_season_averages.sql

select 
    player_name,
    season,
    avg(points_per_game) as avg_points_per_game,
    avg(assists_per_game) as avg_assists_per_game,
    avg(rebounds_per_game) as avg_rebounds_per_game
from 
    {{ ref('nba_player_stats') }}
group by 
    player_name, season
