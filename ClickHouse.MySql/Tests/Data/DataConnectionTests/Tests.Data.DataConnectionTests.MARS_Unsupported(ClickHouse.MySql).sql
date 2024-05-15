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

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.PersonID,
	t1.Taxonomy
FROM
	Doctor t1
WHERE
	t1.PersonID = 1

