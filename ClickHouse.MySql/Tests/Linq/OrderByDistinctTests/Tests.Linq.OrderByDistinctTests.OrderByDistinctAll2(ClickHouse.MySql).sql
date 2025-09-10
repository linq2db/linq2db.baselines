BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.PersonID,
	r.LastName,
	r.FirstName
FROM
	Person r
ORDER BY
	r.FirstName
LIMIT 1, 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

