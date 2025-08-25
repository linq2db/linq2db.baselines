BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toMinute(addMinutes(t.DateTimeValue, -8))
FROM
	LinqDataTypes t

