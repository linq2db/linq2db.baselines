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
	((LENGTH(p.LastName || '.') - 1) - CharIndex('p', Reverse(p.LastName))) - (LENGTH('p.') - 1) = 1 AND
	CharIndex('p', p.LastName) <> 0 AND p.PersonID = 1

