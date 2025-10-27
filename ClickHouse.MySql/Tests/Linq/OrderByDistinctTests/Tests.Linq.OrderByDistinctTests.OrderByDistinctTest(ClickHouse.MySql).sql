BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT 0, 3

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
GROUP BY
	x.DuplicateData
ORDER BY
	maxOrNull(x.OrderData1)
LIMIT 0, 3

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT 0, 3

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
GROUP BY
	x.DuplicateData
ORDER BY
	minOrNull(x.OrderData1) DESC
LIMIT 0, 3

