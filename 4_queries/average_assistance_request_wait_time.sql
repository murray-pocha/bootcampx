SELECT AVG(started_at - created_at) AS average_time_to_start
FROM assistance_requests
WHERE started_at IS NOT NULL AND created_at IS NOT NULL;