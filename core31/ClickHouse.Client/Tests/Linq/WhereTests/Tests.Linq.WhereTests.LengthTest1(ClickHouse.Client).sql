BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	nm.MiddleName
FROM
	Person nm
WHERE
	(CHAR_LENGTH(nm.MiddleName) <> toInt32(0) OR CHAR_LENGTH(nm.MiddleName) IS NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

