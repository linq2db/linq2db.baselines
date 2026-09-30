-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.DateTimeValue) + toInt64(toFloat64(2023456789000000))), 7)) - toUnixTimestamp64Nano(toDateTime64(t.DateTimeValue, 7)), toInt64(100))) / toFloat64(10000)
FROM
	LinqDataTypes t

