SELECT s.name AS student_name, 
       AVG(sub.duration) AS avg_completion_time, 
       AVG(a.duration) AS avg_suggested_time
FROM students s
JOIN assignment_submissions sub ON s.id = sub.student_id
JOIN assignments a ON sub.assignment_id = a.id
WHERE s.end_date IS NULL
GROUP BY s.name
HAVING AVG(sub.duration) < AVG(a.duration)
ORDER BY avg_completion_time ASC;