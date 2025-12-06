-- Informix.DB2 Informix

SELECT
	nm.MiddleName
FROM
	Person nm
WHERE
	NOT (nm.MiddleName IS NULL OR CHAR_LENGTH(nm.MiddleName || '.') = 1)

-- Informix.DB2 Informix

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

