-- Informix.DB2 Informix

SELECT
	nm.FirstName
FROM
	Person nm
WHERE
	CHAR_LENGTH(nm.FirstName || '.') <> 1

-- Informix.DB2 Informix

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

