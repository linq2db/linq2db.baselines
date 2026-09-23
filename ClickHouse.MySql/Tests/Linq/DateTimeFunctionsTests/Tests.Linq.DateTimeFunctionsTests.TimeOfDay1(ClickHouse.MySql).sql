-- ClickHouse.MySql ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(t.DateTimeValue) - toUnixTimestamp64Nano(toDateTime64(toDate32(t.DateTimeValue), 7))) / 100)
FROM
	LinqDataTypes t

