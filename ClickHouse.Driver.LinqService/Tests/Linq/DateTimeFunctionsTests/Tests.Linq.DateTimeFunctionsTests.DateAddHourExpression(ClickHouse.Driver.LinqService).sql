BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toHour(addHours(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

