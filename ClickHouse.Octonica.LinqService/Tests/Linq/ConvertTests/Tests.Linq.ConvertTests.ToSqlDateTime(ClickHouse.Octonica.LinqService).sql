BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDateTime(concat(toString(toYear(t.DateTimeValue)), '-01-01 00:20:00'))
FROM
	LinqDataTypes t

