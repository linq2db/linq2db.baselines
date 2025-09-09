BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	addSeconds(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

