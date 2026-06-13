-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	NTH_VALUE(t.IntValue, toInt64(2)) OVER (PARTITION BY t.CategoryId ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

