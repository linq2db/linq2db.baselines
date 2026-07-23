-- ClickHouse.Driver ClickHouse
SELECT
	x.Id,
	toInt64(ROW_NUMBER() OVER (ORDER BY x.BoolValue, x.Id)),
	toInt64(ROW_NUMBER() OVER (ORDER BY x.IntValue % 20 = 0, x.Id)),
	toInt64(ROW_NUMBER() OVER (PARTITION BY x.BoolValue ORDER BY x.Id)),
	toInt64(ROW_NUMBER() OVER (PARTITION BY x.IntValue % 20 = 0 ORDER BY x.Id)),
	toInt64(ROW_NUMBER() OVER (PARTITION BY x.NullableBoolValue ORDER BY x.Id))
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

