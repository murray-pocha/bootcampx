SELECT t.name AS teacher_name, 
       s.name AS student_name, 
       a.name AS assignment_name, 
       EXTRACT(EPOCH FROM (ar.completed_at - ar.started_at)) / 60 AS duration_minutes
FROM assistance_requests ar
JOIN teachers t ON ar.teacher_id = t.id
JOIN students s ON ar.student_id = s.id
LEFT JOIN assignments a ON ar.assignment_id = a.id
WHERE ar.completed_at IS NOT NULL AND ar.started_at IS NOT NULL
ORDER BY duration_minutes ASC;