SELECT c.name AS cohort_name, 
       SUM(ar.completed_at - ar.started_at) AS total_duration
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assistance_requests ar ON s.id = ar.student_id
WHERE ar.completed_at IS NOT NULL AND ar.started_at IS NOT NULL
GROUP BY c.name
ORDER BY total_duration;