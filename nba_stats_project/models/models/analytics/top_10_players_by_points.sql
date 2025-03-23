-- models/analytics/top_10_players_by_points.sql

select 
    player_name,
    career_avg_points_per_game
from 
    {{ ref('player_career_averages') }}
order by 
    career_avg_points_per_game desc
limit 10
