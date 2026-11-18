-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	LAG(t.IntValue = 20) OVER (ORDER BY t.Id),
	LAG(t.IntValue) OVER (ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t
ORDER BY
	t.Id

