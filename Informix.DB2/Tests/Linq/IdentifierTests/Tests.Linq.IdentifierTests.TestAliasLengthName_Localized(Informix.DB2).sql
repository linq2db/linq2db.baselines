BeforeExecute
-- Informix.DB2 Informix

SELECT
	z.FirstName,
	z.PersonID,
	z.LastName,
	z.MiddleName,
	z.Gender
FROM
	Person z
WHERE
	z.PersonID = 1

