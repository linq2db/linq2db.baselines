-- ClickHouse.MySql ClickHouse

SELECT
	x.FirstName
FROM
	Person x
UNION ALL
SELECT
	x_1.FirstName as FirstName
FROM
	Person x_1
WHERE
	x_1.FirstName = 'A'

-- ClickHouse.MySql ClickHouse

SELECT
	x.FirstName
FROM
	Person x
UNION ALL
SELECT
	x_1.FirstName as FirstName
FROM
	Person x_1
WHERE
	x_1.FirstName = 'A'

