-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(addHours(t.DateTimeValue, toFloat64(100)), 7)) - toUnixTimestamp64Nano(toDateTime64(t.DateTimeValue, 7)), toInt64(100))) / toFloat64(36000000000)
FROM
	LinqDataTypes t

