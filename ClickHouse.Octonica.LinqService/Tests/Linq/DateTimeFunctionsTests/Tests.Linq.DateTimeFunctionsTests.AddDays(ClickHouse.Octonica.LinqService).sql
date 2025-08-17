BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDate32(addDays(t.DateTimeValue, toFloat64(5)))
FROM
	LinqDataTypes t

