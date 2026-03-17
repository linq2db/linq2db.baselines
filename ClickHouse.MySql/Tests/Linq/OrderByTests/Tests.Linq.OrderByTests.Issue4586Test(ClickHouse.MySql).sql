-- ClickHouse.MySql ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	startsWith(x.FirstName, 'J')
ORDER BY
	x.PersonID DESC
LIMIT 1, 2

