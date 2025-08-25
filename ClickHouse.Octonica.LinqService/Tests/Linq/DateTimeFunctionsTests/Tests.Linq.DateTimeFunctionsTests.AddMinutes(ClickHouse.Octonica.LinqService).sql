BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toMinute(addMinutes(t.DateTimeValue, toFloat64(-8)))
FROM
	LinqDataTypes t

