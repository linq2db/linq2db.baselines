BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toYear(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

