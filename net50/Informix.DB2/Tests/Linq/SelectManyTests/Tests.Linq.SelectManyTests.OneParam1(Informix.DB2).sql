BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.FirstName,
	c_1.PersonID,
	c_1.LastName,
	c_1.MiddleName,
	c_1.Gender
FROM
	Person cp
		INNER JOIN Person c_1 ON 1=1
WHERE
	c_1.PersonID = 1

