BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	addDays(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

