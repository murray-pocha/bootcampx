SELECT DISTINCT t.name AS instructor_name, c.name AS cohort_name
FROM teachers t
JOIN assistance_requests ar ON t.id = ar.teacher_id
JOIN students s ON ar.student_id = s.id
JOIN cohorts c ON s.cohort_id = c.id
WHERE c.name = 'JUL02'
ORDER BY instructor_name;