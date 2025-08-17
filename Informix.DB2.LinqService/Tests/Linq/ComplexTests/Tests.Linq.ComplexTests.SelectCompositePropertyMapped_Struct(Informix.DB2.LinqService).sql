BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2 DISTINCT
	u.city,
	u.street,
	u.building_number
FROM
	UserStruct u

