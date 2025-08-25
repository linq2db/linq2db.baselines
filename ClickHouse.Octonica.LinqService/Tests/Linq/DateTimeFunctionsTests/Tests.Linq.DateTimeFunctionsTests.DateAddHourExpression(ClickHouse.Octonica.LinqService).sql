BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toHour(addHours(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

