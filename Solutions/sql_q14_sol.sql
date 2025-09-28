-- . Write a SQL query to find referees and the number of bookings they made for the entire tournament. Sort your answer by the number of bookings in descending order

SELECT rm.referee_id, rm.referee_name, COUNT(*) AS total_bookings
FROM euro_cup_2016.referee_mast AS rm
LEFT JOIN euro_cup_2016.match_mast AS mm
	ON rm.referee_id = mm.referee_id
LEFT JOIN euro_cup_2016.player_booked as pb
	ON mm.match_no = pb.match_no
GROUP BY rm.referee_id, rm.referee_name
ORDER BY total_bookings DESC;