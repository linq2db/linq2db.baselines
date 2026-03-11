-- ClickHouse.Driver ClickHouse

SELECT
	x.FirstName
FROM
	Person x
UNION ALL
SELECT
	x_1.FirstName as FirstName
FROM
	Person x_1,
	Patient z
WHERE
	x_1.FirstName = 'A' OR z.PersonID = 1

