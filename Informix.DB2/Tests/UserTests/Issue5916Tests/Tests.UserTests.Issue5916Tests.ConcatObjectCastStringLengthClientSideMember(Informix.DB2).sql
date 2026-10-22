-- Informix.DB2 Informix
SELECT
	CHAR_LENGTH(p.FirstName || '.') - 1,
	'X'::NVarChar(255),
	p.FirstName
FROM
	Person p
WHERE
	p.PersonID > 2
UNION ALL
SELECT
	CHAR_LENGTH(p_1.LastName || '.') - 1,
	'X'::NVarChar(255),
	p_1.FirstName
FROM
	Person p_1
WHERE
	p_1.PersonID <= 2

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

