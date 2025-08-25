BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toDate32(addMonths(t.DateTimeValue, 2))
FROM
	LinqDataTypes t

