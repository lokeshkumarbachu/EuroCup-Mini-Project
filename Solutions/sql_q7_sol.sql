-- write a SQL query to find all the venues where matches with penalty shootouts were played
SELECT *
FROM euro_cup_2016.soccer_venue
WHERE venue_id IN
	(SELECT venue_id
    FROM euro_cup_2016.match_mast
    WHERE match_no IN
		(SELECT DISTINCT match_no
        FROM euro_cup_2016.penalty_shootout))