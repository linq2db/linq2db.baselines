-- ClickHouse.Octonica ClickHouse
SELECT
	positionUTF8(p.FirstName, 'J', toUInt32(1))
FROM
	Person p
ORDER BY
	p.PersonID

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

