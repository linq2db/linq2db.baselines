BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2
	p.PersonID,
	p.MiddleName,
	p.FirstName,
	p.LastName
FROM
	Person p
WHERE
	p.PersonID = 1

