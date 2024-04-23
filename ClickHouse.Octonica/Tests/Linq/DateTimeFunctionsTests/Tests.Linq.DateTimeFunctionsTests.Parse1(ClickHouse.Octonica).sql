BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDate(toDateTime64(toString(d.DateTimeValue), toUInt8(7)))
FROM
	LinqDataTypes d
WHERE
	toDayOfMonth(toDateTime64(toString(d.DateTimeValue), toUInt8(7))) > 0

