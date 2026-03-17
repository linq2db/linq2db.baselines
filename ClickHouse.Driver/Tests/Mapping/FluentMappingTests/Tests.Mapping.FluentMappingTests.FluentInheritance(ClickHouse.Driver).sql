-- ClickHouse.Driver ClickHouse

SELECT
	t1.Gender,
	t1.PersonID,
	t1.LastName,
	t1.FirstName
FROM
	Person t1
WHERE
	t1.PersonID = 1
LIMIT 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Gender,
	t1.PersonID,
	t1.LastName,
	t1.FirstName
FROM
	Person t1
WHERE
	t1.PersonID = 3
LIMIT 1

