BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	LENGTH(p.FirstName || '.') - 1 = LENGTH('John.') - 1 AND
	p.PersonID = 1

