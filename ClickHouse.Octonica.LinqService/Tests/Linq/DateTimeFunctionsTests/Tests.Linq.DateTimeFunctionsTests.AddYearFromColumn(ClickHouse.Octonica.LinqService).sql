BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDate32(addYears(t.DateTimeValue, t.SmallIntValue))
FROM
	LinqDataTypes t

