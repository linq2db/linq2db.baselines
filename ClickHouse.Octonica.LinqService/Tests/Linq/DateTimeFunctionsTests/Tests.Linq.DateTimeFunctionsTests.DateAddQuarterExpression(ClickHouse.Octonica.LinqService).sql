BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDate32(addQuarters(t.DateTimeValue, -1))
FROM
	LinqDataTypes t

