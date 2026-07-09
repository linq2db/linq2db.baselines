-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	AVG(DISTINCT t.IntValue) OVER (PARTITION BY t.CategoryId)
FROM
	WindowFunctionTestEntity t

