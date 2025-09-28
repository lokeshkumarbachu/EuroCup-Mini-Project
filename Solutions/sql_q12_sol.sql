-- Write a SQL query that returns the total number of goals scored by each position on each country’s team. Do not include positions which scored no goals.
SELECT sc.country_name,pm.posi_to_play, COUNT(*) AS total_score
FROM euro_cup_2016.goal_details AS gd
JOIN euro_cup_2016.player_mast AS pm
	ON gd.player_id= pm.player_id
JOIN euro_cup_2016.soccer_country sc
	ON gd.team_id= sc.country_id
GROUP BY sc.country_name, pm.posi_to_play; 