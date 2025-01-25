BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT DISTINCT
	x.DuplicateData,
	x.OrderData1
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1
LIMIT 0, 3

