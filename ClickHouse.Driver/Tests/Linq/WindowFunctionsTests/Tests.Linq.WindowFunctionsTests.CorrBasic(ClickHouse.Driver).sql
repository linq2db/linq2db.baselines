-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	CORR(t.DoubleValue, t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

