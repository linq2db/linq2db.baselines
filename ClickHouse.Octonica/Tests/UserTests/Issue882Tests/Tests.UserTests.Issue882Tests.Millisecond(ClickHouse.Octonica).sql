-- ClickHouse.Octonica ClickHouse
SELECT
	((toUnixTimestamp64Milli(toDateTime64(t.DateTimeValue, 7)) % toInt64(1000) + 1000) % 1000) % 7
FROM
	LinqDataTypes t

