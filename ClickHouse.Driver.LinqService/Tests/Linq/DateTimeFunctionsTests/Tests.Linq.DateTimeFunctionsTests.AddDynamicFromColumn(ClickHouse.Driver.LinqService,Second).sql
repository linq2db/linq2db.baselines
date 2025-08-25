BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	addSeconds(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

