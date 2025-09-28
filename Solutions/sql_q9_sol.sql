-- Write a SQL query to find the goalkeeper’s name and jersey number, playing for Germany, who played in Germany’s group stage matches.
SELECT player_name, jersey_no
FROM euro_cup_2016.player_mast
WHERE player_id IN 
	(SELECT player_gk
    FROM euro_cup_2016.match_details
    WHERE play_stage ='G'
    AND team_id IN
		(SELECT country_id 
        FROM euro_cup_2016.soccer_country
        WHERE country_name = 'Germany'));