BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	nm.MiddleName
FROM
	Person nm
WHERE
	NOT (nm.MiddleName IS NULL OR lengthUTF8(nm.MiddleName) = 0 AND nm.MiddleName IS NOT NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

