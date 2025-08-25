BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toDate32(addDays(t.DateTimeValue, 3))
FROM
	LinqDataTypes t

