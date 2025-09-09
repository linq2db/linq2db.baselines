BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toHour(addHours(t.DateTimeValue, 22))
FROM
	LinqDataTypes t

