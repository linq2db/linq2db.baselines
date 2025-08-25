BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	date_diff('second', t.DateTimeValue, addMinutes(t.DateTimeValue, toFloat64(100)))
FROM
	LinqDataTypes t

