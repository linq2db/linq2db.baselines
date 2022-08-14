BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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

