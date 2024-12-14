SELECT id, name, cohort_id
FROM students
WHERE email is NULL
OR phone is NULL;