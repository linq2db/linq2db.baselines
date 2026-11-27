-- ClickHouse.Driver ClickHouse
SELECT
	positionUTF8(p.FirstName, 'x', toUInt32(10))
FROM
	Person p
ORDER BY
	p.PersonID

-- ClickHouse.Driver ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

