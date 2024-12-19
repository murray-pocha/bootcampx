SELECT c.name AS cohort_name, 
       AVG(ar.completed_at - ar.started_at) AS average_assistance_request_duration
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assistance_requests ar ON s.id = ar.student_id
WHERE ar.completed_at IS NOT NULL AND ar.started_at IS NOT NULL
GROUP BY c.name
ORDER BY average_assistance_request_duration DESC
LIMIT 1;