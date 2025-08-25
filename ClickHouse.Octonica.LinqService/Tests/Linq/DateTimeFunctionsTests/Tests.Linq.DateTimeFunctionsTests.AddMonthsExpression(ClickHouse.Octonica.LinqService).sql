BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDate32(addMonths(t.DateTimeValue, -2))
FROM
	LinqDataTypes t

