-- -----------------------------------------------------------------
-- 9. Hours of service of a driver
-- -----------------------------------------------------------------
SELECT 
	CONCAT(d.last_name,' ', d.first_name) AS "Driver",
	d.identification AS "Identification", 
	COUNT(EXTRACT(HOUR FROM (s.date + s.end_time - s.start_time))) AS "Duration (Hours)" 
FROM schedules AS s 
INNER JOIN routes AS r ON s.route_id = r.id 
INNER JOIN drivers AS d ON r.driver_id = d.id
GROUP BY d.identification, d.last_name, d.first_name  
ORDER BY "Driver";
