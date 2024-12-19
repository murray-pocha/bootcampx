SELECT a.id AS assignment_id, 
       a.day, 
       a.chapter, 
       a.name AS assignment_name, 
       COUNT(ar.id) AS total_assistances
FROM assignments a
LEFT JOIN assistance_requests ar ON a.id = ar.assignment_id
GROUP BY a.id, a.day, a.chapter, a.name
ORDER BY total_assistances DESC;