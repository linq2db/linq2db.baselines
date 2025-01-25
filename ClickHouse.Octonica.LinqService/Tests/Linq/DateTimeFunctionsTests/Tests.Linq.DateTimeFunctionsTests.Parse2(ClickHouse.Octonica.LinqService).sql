BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDateTime64(concat(toString(toYear(d.DateTimeValue)), '-02-24 00:00:00'), toUInt8(7))
FROM
	LinqDataTypes d
WHERE
	toDayOfMonth(toDateTime64(concat(toString(toYear(d.DateTimeValue)), '-02-24 00:00:00'), toUInt8(7))) > 0

