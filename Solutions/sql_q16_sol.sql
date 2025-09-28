-- Write a SQL query to find referees and the number of matches they worked in each venue.

SELECT rm.referee_id, rm.referee_name, sv.venue_name, COUNT(mm.match_no) AS total_matches
FROM euro_cup_2016.referee_mast AS rm
LEFT JOIN euro_cup_2016.match_mast AS mm
	ON rm.referee_id = mm.referee_id
LEFT JOIN euro_cup_2016.soccer_venue as sv
	ON mm.venue_id = sv.venue_id
GROUP BY rm.referee_id, rm.referee_name, sv.venue_name
ORDER BY total_matches DESC;