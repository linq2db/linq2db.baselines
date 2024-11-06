BeforeExecute
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
	startsWith(x.FirstName, 'J') = true
ORDER BY
	x.PersonID
LIMIT 1, 2

