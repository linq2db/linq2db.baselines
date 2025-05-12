BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	nm.FirstName
FROM
	Person nm
WHERE
	lengthUTF8(nm.FirstName) <> 0

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

