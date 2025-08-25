BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDate32(addDays(t.DateTimeValue, 5))
FROM
	LinqDataTypes t

