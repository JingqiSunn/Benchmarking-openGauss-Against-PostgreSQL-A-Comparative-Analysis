drop table if exists common_player_info cascade;
create table Common_Player_info(
person_id text,
first_name text,
last_name text,
display_first_last text,
display_last_comma_first text,
display_fi_last text,
player_slug text, 
birthdate text,
school text,
country text,
last_affiliation text,
height text,
weight text,
season_exp text,
jersey text,
position text,
rosterstatus text,
games_played_current_season_flag text,
team_id text,
team_name text,
team_abbreviation text,
team_code text,
team_city text,
playercode text,
from_year text,
to_year text,
dleague_flag text,
nba_flag text,
games_played_flag text,
draft_year text,
draft_round text,
draft_number text,
greatest_75_flag text
);
\copy Common_Player_info FROM '/tmp/trash/common_player_info.csv' DELIMITER ',' CSV HEADER;
drop table if exists draft_combine_stats cascade;
create table draft_combine_stats(
season text,
player_id text,
first_name text,
last_name text,
player_name text,
position text,
height_wo_shoes text,
height_wo_shoes_ft_in text,
height_w_shoes text,
height_w_shoes_ft_in text,
weight text,
wingspan text,
wingspan_ft_in text,
standing_reach text,
standing_reach_ft_in text,
body_fat_pct text,
hand_length text,
hand_width text,
standing_vertical_leap text,
max_vertical_leap text,
lane_agility_time text,
modified_lane_agility_time text,
three_quarter_sprint text,
bench_press text,
spot_fifteen_corner_left text,
spot_fifteen_break_left text,
spot_fifteen_top_key text,
spot_fifteen_break_right text,
spot_fifteen_corner_right text,
spot_college_corner_left text,
spot_college_break_left text,
spot_college_top_key text,
spot_college_break_right text,
spot_college_corner_right text,
spot_nba_corner_left text,
spot_nba_break_left text,
spot_nba_top_key text,
spot_nba_break_right text,
spot_nba_corner_right text,
off_drib_fifteen_break_left text,
off_drib_fifteen_top_key text,
off_drib_fifteen_break_right text,
off_drib_college_break_left text,
off_drib_college_top_key text,
off_drib_college_break_right text,
on_move_fifteen text,
on_move_college text
);
\copy draft_combine_stats FROM '/tmp/trash/draft_combine_stats.csv' DELIMITER ',' CSV HEADER;
drop table if exists draft_history cascade;
create table draft_history(
person_id text,
player_name text,
season text,
round_number text,
round_pick text,
overall_pick text,
draft_type text,
team_id text,
team_city text,
team_name text,
team_abbreviation text,
organization text,
organization_type text,
player_profile_flag text
);
\copy draft_history FROM '/tmp/trash/draft_history.csv' DELIMITER ',' CSV HEADER;
drop table if exists game cascade;
create table game(
season_id text,
team_id_home text,
team_abbreviation_home text,
team_name_home text,
game_id text,
game_date text,
matchup_home text,
wl_home text,
min text,
fgm_home text,
fga_home text,
fg_pct_home text,
fg3m_home text,
fg3a_home text,
fg3_pct_home text,
ftm_home text,
fta_home text,
ft_pct_home text,
oreb_home text,
dreb_home text,
reb_home text,
ast_home text,
stl_home text,
blk_home text,
tov_home text,
pf_home text,
pts_home text,
plus_minus_home text,
video_available_home text,
team_id_away text,
team_abbreviation_away text,
team_name_away text,
matchup_away text,
wl_away text,
fgm_away text,
fga_away text,
fg_pct_away text,
fg3m_away text,
fg3a_away text,
fg3_pct_away text,
ftm_away text,
fta_away text,
ft_pct_away text,
oreb_away text,
dreb_away text,
reb_away text,
ast_away text,
stl_away text,
blk_away text,
tov_away text,
pf_away text,
pts_away text,
plus_minus_away text,
video_available_away text,
season_type text
);
\copy game FROM '/tmp/trash/game.csv' DELIMITER ',' CSV HEADER;
DROP table if exists game_info cascade;
create table game_info(
game_id text,
game_date text,
attendance text,
game_time text
);
\copy game_info FROM '/tmp/trash/game_info.csv' DELIMITER ',' CSV HEADER;
DROP table if exists game_data_20000_rows cascade;
create table game_data_20000_rows(
game_id text,
game_date text,
attendance text,
game_time text
);
\copy game_data_20000_rows FROM '/tmp/trash/game_data_20000_rows.csv' DELIMITER ',' CSV HEADER;
DROP table if exists game_summary cascade;
create table game_summary(
game_date_est text,
game_sequence text,
game_id text,
game_status_id text,
game_status_text text,
gamecode text,
home_team_id text,
visitor_team_id text,
season text,
live_period text,
live_pc_time text,
natl_tv_broadcaster_abbreviation text,
live_period_time_bcast text,
wh_status text
);
\copy game_summary FROM '/tmp/trash/game_summary.csv' DELIMITER ',' CSV HEADER;
DROP table if exists inactive_players cascade;
create table inactive_players(
game_id text,
player_id text,
first_name text,
last_name text,
jersey_num text,
team_id text,
team_city text,
team_name text,
team_abbreviation text
);
\copy inactive_players FROM '/tmp/trash/inactive_players.csv' DELIMITER ',' CSV HEADER;
DROP table if exists line_score cascade;
create table line_score(
game_date_est text,
game_sequence text,
game_id text,
team_id_home text,
team_abbreviation_home text,
team_city_name_home text,
team_nickname_home text,
team_wins_losses_home text,
pts_qtr1_home text,
pts_qtr2_home text,
pts_qtr3_home text,
pts_qtr4_home text,
pts_ot1_home text,
pts_ot2_home text,
pts_ot3_home text,
pts_ot4_home text,
pts_ot5_home text,
pts_ot6_home text,
pts_ot7_home text,
pts_ot8_home text,
pts_ot9_home text,
pts_ot10_home text,
pts_home text,
team_id_away text,
team_abbreviation_away text,
team_city_name_away text,
team_nickname_away text,
team_wins_losses_away text,
pts_qtr1_away text,
pts_qtr2_away text,
pts_qtr3_away text,
pts_qtr4_away text,
pts_ot1_away text,
pts_ot2_away text,
pts_ot3_away text,
pts_ot4_away text,
pts_ot5_away text,
pts_ot6_away text,
pts_ot7_away text,
pts_ot8_away text,
pts_ot9_away text,
pts_ot10_away text,
pts_away text
);
\copy line_score FROM '/tmp/trash/line_score.csv' DELIMITER ',' CSV HEADER;
DROP table if exists officials cascade;
create table officials(
game_id text,
official_id text,
first_name text,
last_name text,
jersey_num text
);
\copy officials FROM '/tmp/trash/officials.csv' DELIMITER ',' CSV HEADER;
DROP table if exists other_stats cascade;
create table other_stats(
game_id text,
league_id text,
team_id_home text,
team_abbreviation_home text,
team_city_home text,
pts_paint_home text,
pts_2nd_chance_home text,
pts_fb_home text,
largest_lead_home text,
lead_changes text,
times_tied text,
team_turnovers_home text,
total_turnovers_home text,
team_rebounds_home text,
pts_off_to_home text,
team_id_away text,
team_abbreviation_away text,
team_city_away text,
pts_paint_away text,
pts_2nd_chance_away text,
pts_fb_away text,
largest_lead_away text,
team_turnovers_away text,
total_turnovers_away text,
team_rebounds_away text,
pts_off_to_away text
);
\copy other_stats FROM '/tmp/trash/other_stats.csv' DELIMITER ',' CSV HEADER;
DROP table if exists play_by_play cascade;
create table play_by_play(  
game_id text,
eventnum text,
eventmsgtype text,
eventmsgactiontype text,
period text,
wctimestring text,
pctimestring text,
homedescription text,
neutraldescription text,
visitordescription text,
score text,
scoremargin text,
person1type text,
player1_id text,
player1_name text,
player1_team_id text,
player1_team_city text,
player1_team_nickname text,
player1_team_abbreviation text,
person2type text,
player2_id text,
player2_name text,
player2_team_id text,
player2_team_city text,
player2_team_nickname text,
player2_team_abbreviation text,
person3type text,
player3_id text,
player3_name text,
player3_team_id text,
player3_team_city text,
player3_team_nickname text,
player3_team_abbreviation text,
video_available_flag text
);
\COPY play_by_play from '/tmp/trash/play_by_play.csv' DELIMITER ',' CSV HEADER;
DROP table if exists player cascade;
create table player(
id text,
full_name text,
first_name text,
last_name text,
is_active text
);
\copy player FROM '/tmp/trash/player.csv' DELIMITER ',' CSV HEADER;
DROP table if exists team cascade;
create table team(
id text,
full_name text,
abbreviation text,
nickname text,
city text,
state text,
year_founded text
);
\copy team FROM '/tmp/trash/team.csv' DELIMITER ',' CSV HEADER;
DROP table if exists team_details cascade;
create table team_details(
team_id text,
abbreviation text,
nickname text,
yearfounded text,
city text,
arena text,
arenacapacity text,
owner text,
generalmanager text,
headcoach text,
dleagueaffiliation text,
facebook text,
instagram text,
twitter text
);
\copy team_details FROM '/tmp/trash/team_details.csv' DELIMITER ',' CSV HEADER;
DROP table if exists team_history cascade;
create table team_history(
team_id text,
city text,
nickname text,
year_founded text,
year_active_till text
);
\copy team_history FROM '/tmp/trash/team_history.csv' DELIMITER ',' CSV HEADER;
DROP table if exists team_info_common cascade;
create table team_info_common(
team_id text,
season_year text,
team_city text,
team_name text,
team_abbreviation text,
team_conference text,
team_division text,
team_code text,
team_slug text,
w text,
l text,
pct text,
conf_rank text,
div_rank text,
min_year text,
max_year text,
league_id text,
season_id text,
pts_rank text,
pts_pg text,
reb_rank text,
reb_pg text,
ast_rank text,
ast_pg text,
opp_pts_rank text,
opp_pts_pg text
);
\copy team_info_common FROM '/tmp/trash/team_info_common.csv' DELIMITER ',' CSV HEADER;

