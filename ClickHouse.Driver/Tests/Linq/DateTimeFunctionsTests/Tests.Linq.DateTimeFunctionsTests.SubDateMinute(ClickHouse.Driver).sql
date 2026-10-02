-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(addMinutes(t.DateTimeValue, toFloat64(100))) - toUnixTimestamp64Nano(t.DateTimeValue), toInt64(100))) / toFloat64(600000000)
FROM
	LinqDataTypes t

