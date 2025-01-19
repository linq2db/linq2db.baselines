BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT 0, 3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
GROUP BY
	x.DuplicateData
LIMIT 0, 3

