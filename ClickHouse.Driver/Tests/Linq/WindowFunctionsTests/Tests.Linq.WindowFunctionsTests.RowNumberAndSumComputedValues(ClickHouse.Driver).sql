-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	toInt64(ROW_NUMBER() OVER (PARTITION BY t.CategoryId ORDER BY t.Id)),
	SUM(t.IntValue) OVER (PARTITION BY t.CategoryId)
FROM
	WindowFunctionTestEntity t

