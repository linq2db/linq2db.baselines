BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	addYears(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

