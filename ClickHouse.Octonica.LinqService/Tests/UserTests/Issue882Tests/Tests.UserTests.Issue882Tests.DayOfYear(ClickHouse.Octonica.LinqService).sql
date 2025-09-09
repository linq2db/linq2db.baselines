BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDayOfYear(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

