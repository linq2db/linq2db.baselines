BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDate32(addWeeks(t.DateTimeValue, t.SmallIntValue))
FROM
	LinqDataTypes t

