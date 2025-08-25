BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	addMinutes(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

