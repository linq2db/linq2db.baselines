BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toMinute(addMinutes(t.DateTimeValue, -8))
FROM
	LinqDataTypes t

