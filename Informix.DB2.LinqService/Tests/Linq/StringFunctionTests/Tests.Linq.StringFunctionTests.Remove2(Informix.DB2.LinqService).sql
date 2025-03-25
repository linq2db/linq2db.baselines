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
	Substr(p.FirstName, 1, 1) || Substr(p.FirstName, (LENGTH(p.FirstName || '.') - 1) - (LENGTH(p.FirstName || '.') - 4) + 1, LENGTH(p.FirstName || '.') - 4) = 'Jn' AND
	p.PersonID = 1

