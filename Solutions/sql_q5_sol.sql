-- Write a SQL query to find the number of bookings that happened in stoppage time.
SELECT COUNT(*) AS num_of_bookings
FROM euro_cup_2016.player_booked
WHERE play_schedule = 'ST';