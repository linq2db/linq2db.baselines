BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toDate32(toDateTime64(toString(d.DateTimeValue), 7))
FROM
	LinqDataTypes d
WHERE
	toDayOfMonth(toDateTime64(toString(d.DateTimeValue), 7)) > 0

