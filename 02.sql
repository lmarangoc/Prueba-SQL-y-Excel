-- -----------------------------------------------------------------
-- 2. Description, model, brand and capacity of active vehicles
-- -----------------------------------------------------------------
SELECT 
	description AS "Description", 
	year AS "Model", 
	make AS "Brand", 
	capacity AS "Capacity"   
FROM vehicles 
WHERE active 
ORDER BY make, year;