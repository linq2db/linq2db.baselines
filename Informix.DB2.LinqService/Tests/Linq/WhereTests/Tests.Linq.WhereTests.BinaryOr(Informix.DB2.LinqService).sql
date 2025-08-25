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
	BitOr(p.PersonID, 2) = 3

