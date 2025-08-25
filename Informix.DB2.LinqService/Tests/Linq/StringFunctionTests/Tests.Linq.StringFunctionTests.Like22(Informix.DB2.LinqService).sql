BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	NOT p.FirstName LIKE '%h~%n%' ESCAPE '~' AND p.PersonID = 1

