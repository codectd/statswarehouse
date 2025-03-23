-- models/interface/nba_team_data.sql

select 
    team_id,
    team_name,
    team_abbr,
    wins,
    losses,
    season
from 
    {{ source('postgres', 'nba_team_data') }}
    