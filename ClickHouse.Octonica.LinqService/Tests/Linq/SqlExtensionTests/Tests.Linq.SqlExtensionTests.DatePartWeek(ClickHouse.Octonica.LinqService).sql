BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toISOWeek(toDateTime64(t.DateTimeValue, 0))
FROM
	LinqDataTypes t

