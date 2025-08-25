BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toDate32(addQuarters(t.DateTimeValue, -1))
FROM
	LinqDataTypes t

