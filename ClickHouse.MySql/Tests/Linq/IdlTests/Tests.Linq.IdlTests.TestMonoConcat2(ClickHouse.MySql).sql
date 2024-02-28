BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	y.FirstName
FROM
	Person y
UNION ALL
SELECT
	x.FirstName
FROM
	Person x
WHERE
	x.FirstName = 'A'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	y.FirstName
FROM
	Person y
UNION ALL
SELECT
	x.FirstName
FROM
	Person x
WHERE
	x.FirstName = 'A'

