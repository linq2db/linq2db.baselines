-- ClickHouse.MySql ClickHouse

SELECT
	toDateTime64(concat(toYear(d.DateTimeValue), '-02-24 00:00:00'), 7)
FROM
	LinqDataTypes d
WHERE
	toDayOfMonth(toDateTime64(concat(toYear(d.DateTimeValue), '-02-24 00:00:00'), 7)) > 0

