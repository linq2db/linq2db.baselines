-- Informix.DB2 Informix
SELECT
	l.PersonID,
	r.PersonID,
	r.Gender
FROM
	Person l
		INNER JOIN Person r ON l.Gender = r.Gender

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

