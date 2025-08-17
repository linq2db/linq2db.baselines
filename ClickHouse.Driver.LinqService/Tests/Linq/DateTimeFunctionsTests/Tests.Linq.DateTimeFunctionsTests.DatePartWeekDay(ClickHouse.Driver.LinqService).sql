BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toDayOfWeek(addDays(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

