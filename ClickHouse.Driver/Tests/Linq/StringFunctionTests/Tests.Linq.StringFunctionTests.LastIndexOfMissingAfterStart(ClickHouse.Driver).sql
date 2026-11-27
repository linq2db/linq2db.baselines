-- ClickHouse.Driver ClickHouse
SELECT
	CASE
		WHEN positionUTF8(p.FirstName, 'x', toUInt32(2)) = 0 THEN -1
		ELSE lengthUTF8(p.FirstName) - positionUTF8(reverseUTF8(Substring(p.FirstName, 2, lengthUTF8(p.FirstName) - 1)), 'x')
	END
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

