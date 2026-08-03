-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(toInt64(toInt64((toUnixTimestamp64Nano(toDateTime64(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.DateTimeValue) + toInt64(toFloat64(2023456789000000))), 9)) - toUnixTimestamp64Nano(toDateTime64(t.DateTimeValue, 9))) / 100))) / toFloat64(10000)
FROM
	LinqDataTypes t

