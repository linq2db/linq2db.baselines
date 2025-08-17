BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	toDateTime64(concat(toString(toYear(p.DateTimeValue)), '-01-01 00:00:00'), 7)
FROM
	LinqDataTypes p
WHERE
	toDayOfMonth(toDateTime64(concat(toString(toYear(p.DateTimeValue)), '-01-01 00:00:00'), 7)) > 0

