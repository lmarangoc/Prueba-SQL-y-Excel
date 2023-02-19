-- -----------------------------------------------------------------
-- 1. Name, identification, dob, ssn and phone of active drivers
-- -----------------------------------------------------------------
SELECT 
	CONCAT(last_name, ' ', first_name) AS "Full name", 
	identification AS "Identification", 
	dob AS "Date of birth", 
	ssn AS "Social Security Number", 
	phone AS "Phone number"
FROM drivers
WHERE active 
ORDER BY "Full name";

