-- -----------------------------------------------------------------
-- 6. All routes that had a schedule in 2023
-- -----------------------------------------------------------------
SELECT  
	r.description AS "Route", 
	s.date AS "Date"
FROM routes AS r 
INNER JOIN schedules AS s ON r.id = s.route_id
WHERE s.date BETWEEN '2023-01-01' AND '2023-12-31'
ORDER BY s.date, r.description;
