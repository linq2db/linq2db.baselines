BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toDayOfWeek(addDays(t.DateTimeValue, 1)) - 1
FROM
	LinqDataTypes t

