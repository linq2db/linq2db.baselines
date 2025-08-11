BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT DISTINCT
	x.DuplicateData,
	x.OrderData2
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData2 DESC
LIMIT 0, 3

