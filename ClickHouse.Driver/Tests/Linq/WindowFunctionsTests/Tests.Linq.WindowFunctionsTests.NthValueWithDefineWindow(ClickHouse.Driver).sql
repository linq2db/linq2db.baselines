-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	NTH_VALUE(t.IntValue, toInt64(2)) OVER (PARTITION BY t.CategoryId ORDER BY t.Id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM
	WindowFunctionTestEntity t

