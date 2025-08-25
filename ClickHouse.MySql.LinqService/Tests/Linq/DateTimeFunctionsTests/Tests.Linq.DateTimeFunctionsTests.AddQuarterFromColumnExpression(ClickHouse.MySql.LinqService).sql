BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toDate32(addQuarters(t.DateTimeValue, t.SmallIntValue))
FROM
	LinqDataTypes t

