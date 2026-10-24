-- ClickHouse.Driver ClickHouse
SELECT
	p.PersonID,
	toInt32(2) as L
FROM
	Person p
WHERE
	p.PersonID = 1
UNION ALL
SELECT
	p_1.PersonID as PersonID,
	toInt32(0) as L
FROM
	Person p_1
WHERE
	p_1.PersonID = 2

-- ClickHouse.Driver ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

