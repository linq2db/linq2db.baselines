BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	addHours(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

