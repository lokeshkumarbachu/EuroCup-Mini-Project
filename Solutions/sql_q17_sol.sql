-- Write a SQL query to find the country where the most assistant referees come from, and the count of the assistant referees.

SELECT sc.country_name, COUNT(DISTINCT ar.ass_ref_id) AS total_asst_num
FROM euro_cup_2016.asst_referee_mast AS ar
LEFT JOIN euro_cup_2016.soccer_country AS sc
	ON ar.country_id = sc.country_id
GROUP BY sc.country_name
ORDER BY COUNT(ass_ref_id) DESC
LIMIT 5;