BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toUnixTimestamp64Milli(t.DateTimeValue) % 1000
FROM
	LinqDataTypes t

