BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDayOfMonth(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

