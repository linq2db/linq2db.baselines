-- ClickHouse.MySql ClickHouse

SELECT
	makeDateTime(toYear(t.DateTimeValue), 10, 1, 0, 0, 0)
FROM
	LinqDataTypes t

