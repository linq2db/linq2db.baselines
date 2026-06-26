-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	toFloat64(t.IntValue) / SUM(t.IntValue) OVER (PARTITION BY t.CategoryId)
FROM
	WindowFunctionTestEntity t

