-- Write a SQL query to find all the defenders who scored a goal for their teams.
SELECT sc.country_name AS team_name, pm.player_name AS defender_name, COUNT(*) AS total_score
FROM euro_cup_2016.goal_details AS gd
JOIN euro_cup_2016.player_mast AS pm
	ON gd.player_id= pm.player_id
JOIN euro_cup_2016.soccer_country AS sc
	ON gd.team_id= sc.country_id
WHERE pm.posi_to_play = 'DF'
GROUP BY sc.country_name,pm.player_name
ORDER BY sc.country_name;