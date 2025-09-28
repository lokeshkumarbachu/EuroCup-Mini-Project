-- Write a SQL query to find the highest number of foul cards given in one match.
SELECT match_no, COUNT(*) AS num_booked
FROM euro_cup_2016.player_booked
GROUP BY match_no
HAVING COUNT(*) >= ALL (
    SELECT COUNT(*)
    FROM euro_cup_2016.player_booked
    GROUP BY match_no
);