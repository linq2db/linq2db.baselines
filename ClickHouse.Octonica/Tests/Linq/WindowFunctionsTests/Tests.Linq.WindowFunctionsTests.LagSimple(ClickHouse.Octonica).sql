-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	LAG(t.IntValue) OVER (ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

