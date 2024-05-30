BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.PersonID,
	x.FirstName,
	x.LastName,
	x.MiddleName
FROM
	Person x
WHERE
	x.FirstName = 'John'

