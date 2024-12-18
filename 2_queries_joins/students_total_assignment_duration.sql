SELECT SUM(asub.duration) AS total_time_spent
FROM students s
JOIN student_assignments asub ON s.id = asub.student_id
WHERE s.name = 'Ibrahim Schimmel';