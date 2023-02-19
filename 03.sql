-- -----------------------------------------------------------------
-- 3. Driver and vehicle assigned of active routes
-- -----------------------------------------------------------------
SELECT 
	r.description AS "Route",
	CONCAT(d.last_name,' ', d.first_name) AS "Driver",
	d.identification AS "Identification", 
	v.description AS "Vehicle", 
	v.YEAR AS "Model",
	v.make AS "Brand", 
	v.capacity AS "Capacity"
FROM routes AS r 
INNER JOIN drivers AS d ON r.driver_id = d.id 
INNER JOIN vehicles AS v ON r.vehicle_id = v.id 
WHERE r.active 
ORDER BY r.description, d.last_name, d.first_name;

