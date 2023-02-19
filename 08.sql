-- -----------------------------------------------------------------
-- 8. Hours of service of a vehicle
-- -----------------------------------------------------------------
SELECT 
	v.description AS "Vehicle", 
	r.description AS "Route", 
	COUNT(EXTRACT(HOUR FROM (s.date + s.end_time - s.start_time))) AS "Duration (Hours)" 
FROM schedules AS s
INNER JOIN routes AS r ON s.route_id = r.id
INNER JOIN vehicles AS v ON r.vehicle_id = v.id
GROUP BY v.description, r.description
ORDER BY v.description;

