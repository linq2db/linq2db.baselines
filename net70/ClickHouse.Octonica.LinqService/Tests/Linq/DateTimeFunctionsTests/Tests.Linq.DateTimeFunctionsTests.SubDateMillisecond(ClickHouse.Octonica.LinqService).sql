BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toFloat64((toUnixTimestamp64Milli(toDateTime64(fromUnixTimestamp64Nano(toInt64(toUnixTimestamp64Nano(toDateTime64(t.DateTimeValue, 9)) + toInt64(toFloat64(2023456789)) * 1000000)), 3)) - toUnixTimestamp64Milli(toDateTime64(t.DateTimeValue, 3))) * 10000 / 10000)
FROM
	LinqDataTypes t

