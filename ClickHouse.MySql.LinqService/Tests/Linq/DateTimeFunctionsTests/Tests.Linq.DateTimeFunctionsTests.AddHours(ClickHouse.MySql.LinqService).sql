BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toHour(addHours(t.DateTimeValue, toFloat64(22)))
FROM
	LinqDataTypes t

