-- ClickHouse.Driver ClickHouse
SELECT
	lengthUTF8(p.FirstName) as Length_1,
	toString('X') as c1,
	p.FirstName
FROM
	Person p
WHERE
	p.PersonID > 2
UNION ALL
SELECT
	lengthUTF8(p_1.LastName) as Length_1,
	toString('X') as c1,
	p_1.FirstName as FirstName
FROM
	Person p_1
WHERE
	p_1.PersonID <= 2

-- ClickHouse.Driver ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

