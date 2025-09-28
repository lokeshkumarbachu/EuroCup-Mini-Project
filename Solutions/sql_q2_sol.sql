-- Write a SQL query to find the number of matches that were won by penalty shootout.
SELECT count(distinct ps.match_no) AS wins
FROM euro_cup_2016.penalty_shootout AS ps
LEFT JOIN euro_cup_2016.match_details AS md
	ON ps.match_no = md.match_no
WHERE md.win_lose = 'W';
