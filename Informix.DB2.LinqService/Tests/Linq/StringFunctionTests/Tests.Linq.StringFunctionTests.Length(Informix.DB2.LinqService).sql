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
	CHAR_LENGTH(p.FirstName || '.') = 5 AND p.PersonID = 1

