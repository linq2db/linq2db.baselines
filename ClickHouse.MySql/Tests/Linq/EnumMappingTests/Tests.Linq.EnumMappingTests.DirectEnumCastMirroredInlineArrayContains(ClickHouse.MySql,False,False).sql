-- ClickHouse.MySql ClickHouse
SELECT
	p.PersonID
FROM
	Person p
WHERE
	'F' IN (p.Gender)

-- ClickHouse.MySql ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

