-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	NTH_VALUE(t.IntValue = 20, toInt64(2)) OVER (PARTITION BY t.CategoryId ORDER BY t.Id),
	NTH_VALUE(t.IntValue, toInt64(2)) OVER (PARTITION BY t.CategoryId ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t
ORDER BY
	t.Id

