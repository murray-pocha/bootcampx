SELECT s.name AS student_name, COUNT(ar.id) AS total_assistance_requests
FROM students s
JOIN assistance_requests ar ON s.id = ar.student_id
WHERE s.name = 'Elliot Dickinson'
GROUP BY s.name;