BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	makeDateTime(toYear(t.DateTimeValue) + 1, 10, 1, 0, 0, 0)
FROM
	LinqDataTypes t

