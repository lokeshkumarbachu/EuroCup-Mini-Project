-- Write a SQL query to find the substitute players who came into the field in the first half of play, within a normal play schedule.

SELECT pio.match_no, pm.player_name, pm.player_id, pm.jersey_no, pio.time_in_out
FROM euro_cup_2016.player_in_out AS pio
LEFT JOIN euro_cup_2016.player_mast AS pm
	ON pio.player_id = pm.player_id
WHERE pio.play_half = 1
 AND  pio.in_out = 'I'
 AND  pio.play_schedule = 'NT'
ORDER BY pm.player_name ASC;