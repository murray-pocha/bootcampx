SELECT c.name AS cohort_name, COUNT(sub.id) AS total_submissions
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assignment_submissions sub ON s.id = sub.student_id
GROUP BY c.name
ORDER BY total_submissions DESC;