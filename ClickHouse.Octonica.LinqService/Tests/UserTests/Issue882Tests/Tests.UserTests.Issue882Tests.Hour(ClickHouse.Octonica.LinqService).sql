BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toHour(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

