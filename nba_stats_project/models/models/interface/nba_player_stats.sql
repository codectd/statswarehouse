-- models/interface/nba_player_stats.sql

select 
    player_id,
    player_name,
    team_abbr,
    season,
    age,
    pos,
    games_played as g,
    games_started as gs,
    minutes_per_game as mp,
    field_goals as fg,
    field_goals_attempted as fga,
    field_goal_percentage as fg_pct,
    three_point_field_goals as 3p,
    three_point_field_goals_attempted as 3pa,
    three_point_percentage as 3p_pct,
    two_point_field_goals as 2p,
    two_point_field_goals_attempted as 2pa,
    two_point_percentage as 2p_pct,
    effective_field_goal_percentage as efg_pct,
    free_throws as ft,
    free_throws_attempted as fta,
    free_throw_percentage as ft_pct,
    offensive_rebounds as orb,
    defensive_rebounds as drb,
    total_rebounds as trb,
    assists as ast,
    steals as stl,
    blocks as blk,
    turnovers as tov,
    personal_fouls as pf,
    points as pts,
    awards
from 
    {{ source('postgres', 'nba_player_stats') }}
