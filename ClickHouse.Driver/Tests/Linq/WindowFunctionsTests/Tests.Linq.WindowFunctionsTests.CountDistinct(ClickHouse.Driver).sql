-- ClickHouse.Driver ClickHouse

SELECT
	t.Id,
	COUNT(DISTINCT t.IntValue) OVER (PARTITION BY t.CategoryId)
FROM
	WindowFunctionTestEntity t

