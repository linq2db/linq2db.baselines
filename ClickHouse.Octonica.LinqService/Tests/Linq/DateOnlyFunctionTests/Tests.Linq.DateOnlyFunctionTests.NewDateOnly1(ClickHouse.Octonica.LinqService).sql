BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	makeDateTime(toYear(t.DateTimeValue), 10, 1, 0, 0, 0)
FROM
	LinqDataTypes t

