-- ClickHouse.Driver ClickHouse
SELECT
	(toUnixTimestamp64Milli(t.DateTimeValue) % toInt64(1000) + 1000) % 1000
FROM
	LinqDataTypes t

