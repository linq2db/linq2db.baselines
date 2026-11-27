-- Informix.DB2 Informix
SELECT
	CharIndex('o', p.FirstName, 1) * 2
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

