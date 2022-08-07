BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDateTime64(concat(toString(YEAR(t.DateTimeValue)), '-02-24 00:00:00'), toUInt8(7))
FROM
	LinqDataTypes t
WHERE
	DAY(toDateTime64(concat(toString(YEAR(t.DateTimeValue)), '-02-24 00:00:00'), toUInt8(7))) > toInt32(0)

