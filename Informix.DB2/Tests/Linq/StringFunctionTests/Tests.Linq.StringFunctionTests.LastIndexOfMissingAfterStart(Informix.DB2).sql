-- Informix.DB2 Informix
SELECT
	CASE
		WHEN CharIndex('x', p.FirstName, 2) = 0 THEN -1
		ELSE (CHAR_LENGTH(p.FirstName || '.') - 1) - CharIndex('x', Reverse(Substr(p.FirstName, 2, CHAR_LENGTH(p.FirstName || '.') - 2)))
	END
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

