--  Write a SQL query to find the referees who booked the most number of players.
SELECT rm.referee_id, rm.referee_name, COUNT(DISTINCT pb.player_id) AS total_booked_players
FROM euro_cup_2016.referee_mast AS rm
LEFT JOIN euro_cup_2016.match_mast AS mm
	ON rm.referee_id = mm.referee_id
LEFT JOIN euro_cup_2016.player_booked as pb
	ON mm.match_no = pb.match_no
GROUP BY rm.referee_id, rm.referee_name
ORDER BY total_booked_players DESC;