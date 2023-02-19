-- -----------------------------------------------------------------
-- 4. City and age of active drivers
-- -----------------------------------------------------------------
SELECT 
	city AS "City", 
	(DATE_PART('YEAR', CURRENT_DATE) - DATE_PART('YEAR', dob)) AS "Age" 
FROM drivers
WHERE active 
GROUP BY city, "Age" 
ORDER BY city;

