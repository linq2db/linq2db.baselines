-- ClickHouse.Driver ClickHouse
SELECT
	p.PersonID
FROM
	Person p
WHERE
	'M' IN (p.Gender, 'M')

-- ClickHouse.Driver ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

