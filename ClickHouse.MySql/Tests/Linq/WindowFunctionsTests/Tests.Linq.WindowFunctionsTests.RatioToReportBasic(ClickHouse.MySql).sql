-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	toFloat64(t.IntValue) / NULLIF(toFloat64(SUM(t.IntValue) OVER (PARTITION BY t.CategoryId)), toFloat64(0))
FROM
	WindowFunctionTestEntity t

