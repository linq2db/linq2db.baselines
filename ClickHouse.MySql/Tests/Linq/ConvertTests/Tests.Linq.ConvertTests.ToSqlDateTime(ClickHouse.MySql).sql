-- ClickHouse.MySql ClickHouse

SELECT
	toDateTime(concat(toYear(t.DateTimeValue), '-01-01 00:20:00'))
FROM
	LinqDataTypes t

