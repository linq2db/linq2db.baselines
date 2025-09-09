BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDate32(addWeeks(t.DateTimeValue, -1))
FROM
	LinqDataTypes t

