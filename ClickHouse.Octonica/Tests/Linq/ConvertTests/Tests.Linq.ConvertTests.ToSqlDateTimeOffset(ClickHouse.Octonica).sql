-- ClickHouse.Octonica ClickHouse

SELECT
	toDateTime64(concat(toYear(t.DateTimeValue), '-01-01 00:20:00'), 7)
FROM
	LinqDataTypes t

