-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	COUNT(DISTINCT t.IntValue = 20) OVER (PARTITION BY t.CategoryId)
FROM
	WindowFunctionTestEntity t
ORDER BY
	t.Id

