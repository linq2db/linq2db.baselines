BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toISOWeek(toDateTime64(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

