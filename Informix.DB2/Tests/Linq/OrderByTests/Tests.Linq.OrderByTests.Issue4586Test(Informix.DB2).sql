BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 1 FIRST 2
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName LIKE 'J%' ESCAPE '~'
ORDER BY
	x.PersonID

