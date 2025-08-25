BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toSecond(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

