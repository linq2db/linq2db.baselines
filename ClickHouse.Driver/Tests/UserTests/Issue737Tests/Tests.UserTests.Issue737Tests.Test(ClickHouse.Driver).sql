-- ClickHouse.Driver ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
		CROSS JOIN Person y
WHERE
	1 = 0

-- ClickHouse.Driver ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
		CROSS JOIN Person y
WHERE
	1 = 0

