-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(addHours(t.DateTimeValue, toFloat64(100))) - toUnixTimestamp64Nano(t.DateTimeValue), toInt64(100))) / toFloat64(36000000000)
FROM
	LinqDataTypes t

