-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	SUM(DISTINCT t.IntValue) OVER (PARTITION BY t.CategoryId)
FROM
	WindowFunctionTestEntity t

