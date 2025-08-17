BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	addHours(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

