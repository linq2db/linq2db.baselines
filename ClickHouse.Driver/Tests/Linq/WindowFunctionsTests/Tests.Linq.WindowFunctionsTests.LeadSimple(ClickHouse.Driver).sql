-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	LEAD(t.IntValue) OVER (ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

