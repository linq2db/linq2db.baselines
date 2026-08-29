-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	NTH_VALUE(t.IntValue, toInt64(2)) OVER ()
FROM
	WindowFunctionTestEntity t

