SELECT s.name AS student_name, AVG(sub.duration) AS avg_completion_time
FROM students s
JOIN assignment_submissions sub ON s.id = sub.student_id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY avg_completion_time DESC;