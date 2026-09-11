-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.DateTimeValue) + toInt64(toFloat64(2023456789000000)))) - toUnixTimestamp64Nano(t.DateTimeValue), toInt64(100))) / toFloat64(10000)
FROM
	LinqDataTypes t

