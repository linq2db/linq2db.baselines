-- ClickHouse.MySql ClickHouse
SELECT
	x.Id,
	toInt64(ROW_NUMBER() OVER (ORDER BY x.IntValue = 20, x.Id)),
	toInt64(ROW_NUMBER() OVER (PARTITION BY x.IntValue = 20 ORDER BY x.Id))
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

