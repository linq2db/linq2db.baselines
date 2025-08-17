BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	date_diff('day', t.DateTimeValue, addHours(t.DateTimeValue, toFloat64(100)))
FROM
	LinqDataTypes t

