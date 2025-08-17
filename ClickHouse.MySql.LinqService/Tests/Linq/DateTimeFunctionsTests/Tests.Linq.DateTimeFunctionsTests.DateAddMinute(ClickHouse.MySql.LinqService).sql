BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toMinute(addMinutes(t.DateTimeValue, 5))
FROM
	LinqDataTypes t

