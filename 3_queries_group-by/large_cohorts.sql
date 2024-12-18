SELECT c.name AS cohort_name, COUNT(*) AS total_students
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
GROUP BY c.name
HAVING COUNT(*) >= 18
ORDER BY total_students ASC;
