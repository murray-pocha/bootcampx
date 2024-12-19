SELECT a.day AS day, 
       COUNT(a.id) AS number_of_assignments, 
       SUM(a.duration) AS total_duration
FROM assignments a
GROUP BY a.day
ORDER BY a.day;