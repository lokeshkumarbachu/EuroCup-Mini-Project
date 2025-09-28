-- write a SQL query to find the match number for the game with the highest number of penalty shots, and which countries played that match.
SELECT match_no, COUNT(*) AS max_penalty_shots
FROM euro_cup_2016.penalty_shootout 
GROUP By match_no
ORDER BY max_penalty_shots DESC
LIMIT 1;
