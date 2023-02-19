-- -----------------------------------------------------------------
-- 5. Most used brands and models of vehicles and active routes
-- -----------------------------------------------------------------
SELECT 
	v.make AS "Brand", 
	v.year AS "Model", 
	COUNT(1) AS "Amount"
FROM vehicles AS v
INNER JOIN routes AS r ON v.id = r.vehicle_id 
WHERE r.active AND v.active 
GROUP BY make, year
ORDER BY "Amount" DESC;
