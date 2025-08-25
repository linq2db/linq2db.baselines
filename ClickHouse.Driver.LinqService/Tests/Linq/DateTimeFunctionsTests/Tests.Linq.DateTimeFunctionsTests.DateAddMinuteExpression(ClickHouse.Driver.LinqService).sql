BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toMinute(addMinutes(t.DateTimeValue, 5))
FROM
	LinqDataTypes t

