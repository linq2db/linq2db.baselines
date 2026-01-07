-- ClickHouse.Driver ClickHouse

SELECT
	toDate(concat(toYear(t.DateTimeValue), '-01-01'))
FROM
	LinqDataTypes t

