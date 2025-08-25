BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toMonth(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

