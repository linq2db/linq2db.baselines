BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	addMonths(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

