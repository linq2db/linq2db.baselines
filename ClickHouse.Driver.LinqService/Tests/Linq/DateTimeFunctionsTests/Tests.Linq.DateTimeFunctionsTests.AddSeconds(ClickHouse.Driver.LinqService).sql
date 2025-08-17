BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toSecond(addSeconds(t.DateTimeValue, toFloat64(-35)))
FROM
	LinqDataTypes t

