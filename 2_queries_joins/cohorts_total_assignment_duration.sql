SELECT c.name AS cohort_name, SUM(sub.duration) AS total_duration
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assignment_submissions sub ON s.id = sub.student_id
WHERE c.name = 'FEB12'
GROUP BY c.name;