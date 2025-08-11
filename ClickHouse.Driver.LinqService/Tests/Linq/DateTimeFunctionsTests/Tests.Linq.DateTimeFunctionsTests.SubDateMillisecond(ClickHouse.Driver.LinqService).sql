BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	toUnixTimestamp64Milli(toDateTime64(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.DateTimeValue) + toInt64(toFloat64(2023456789000000))), 3)) - toUnixTimestamp64Milli(toDateTime64(t.DateTimeValue, 3))
FROM
	LinqDataTypes t

