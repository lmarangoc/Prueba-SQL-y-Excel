-- -----------------------------------------------------------------
-- 7. Hours of service by route and year.
-- -----------------------------------------------------------------
SELECT 
	r.description AS "Route", 
	EXTRACT(YEAR FROM (s.date)) AS "Year", 
	COUNT(EXTRACT(HOUR FROM (s.date + s.end_time - s.start_time))) AS "Duration (Hours)"
FROM schedules AS s 
INNER JOIN routes AS r ON s.route_id = r.id 
GROUP BY "Year", r.description
ORDER BY r.description , "Year", "Duration";


