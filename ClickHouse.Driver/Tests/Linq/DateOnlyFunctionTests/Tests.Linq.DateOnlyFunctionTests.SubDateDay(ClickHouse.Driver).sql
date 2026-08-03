-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(toInt64(toInt64((toUnixTimestamp64Nano(toDateTime64(addHours(t.DateTimeValue, toFloat64(100)), 9)) - toUnixTimestamp64Nano(toDateTime64(t.DateTimeValue, 9))) / 100))) / toFloat64(864000000000)
FROM
	LinqDataTypes t

