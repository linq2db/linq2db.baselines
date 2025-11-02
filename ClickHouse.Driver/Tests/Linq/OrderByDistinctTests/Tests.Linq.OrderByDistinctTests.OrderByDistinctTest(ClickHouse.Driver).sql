-- ClickHouse.Driver ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT 0, 3

-- ClickHouse.Driver ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
GROUP BY
	x.DuplicateData
ORDER BY
	max(x.OrderData1)
LIMIT 0, 3

-- ClickHouse.Driver ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT 0, 3

-- ClickHouse.Driver ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
GROUP BY
	x.DuplicateData
ORDER BY
	min(x.OrderData1) DESC
LIMIT 0, 3

