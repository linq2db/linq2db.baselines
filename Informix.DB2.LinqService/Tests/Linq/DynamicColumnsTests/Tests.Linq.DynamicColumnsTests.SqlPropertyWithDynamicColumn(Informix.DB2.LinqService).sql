BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	x.PersonID,
	x.FirstName,
	x.LastName,
	x.MiddleName
FROM
	Person x
WHERE
	x.FirstName = 'John'

