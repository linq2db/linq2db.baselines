-- Informix.DB2 Informix
SELECT
	g_1.Gender,
	COUNT(*)
FROM
	Person g_1
GROUP BY
	g_1.Gender

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

