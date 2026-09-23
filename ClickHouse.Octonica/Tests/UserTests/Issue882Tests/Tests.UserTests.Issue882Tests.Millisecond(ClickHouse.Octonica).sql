-- ClickHouse.Octonica ClickHouse
SELECT
	((toUnixTimestamp64Milli(t.DateTimeValue) % toInt64(1000) + 1000) % 1000) % 7
FROM
	LinqDataTypes t

