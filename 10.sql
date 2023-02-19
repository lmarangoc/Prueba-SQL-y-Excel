-- -----------------------------------------------------------------
-- 10. Update data in the drivers table with the information stored in the drivers_info_updated table
-- -----------------------------------------------------------------
UPDATE drivers
SET ssn = dd.ssn, dob = dd.dob, address = dd.address, city = dd.city, zip = dd.zip, phone = dd.phone
FROM (
	SELECT CAST(diu.identification AS VARCHAR) AS identification, diu.ssn, diu.dob, diu.address, diu.city, diu.zip, diu.phone  
	FROM drivers_info_updated AS diu) dd
WHERE drivers.identification = dd.identification

