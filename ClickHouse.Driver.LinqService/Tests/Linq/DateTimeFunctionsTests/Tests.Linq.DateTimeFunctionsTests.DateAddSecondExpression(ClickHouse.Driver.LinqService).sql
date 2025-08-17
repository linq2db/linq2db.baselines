BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toSecond(addSeconds(t.DateTimeValue, 41))
FROM
	LinqDataTypes t

