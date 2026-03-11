-- ClickHouse.Octonica ClickHouse

SELECT
	(toUnixTimestamp64Milli(t.DateTimeValue) % 1000) % 7
FROM
	LinqDataTypes t

