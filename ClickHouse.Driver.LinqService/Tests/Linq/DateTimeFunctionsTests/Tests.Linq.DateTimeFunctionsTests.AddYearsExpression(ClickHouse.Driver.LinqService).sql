BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toDate32(addYears(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

