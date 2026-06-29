-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	MIN(DISTINCT t.IntValue) OVER (PARTITION BY t.CategoryId)
FROM
	WindowFunctionTestEntity t

