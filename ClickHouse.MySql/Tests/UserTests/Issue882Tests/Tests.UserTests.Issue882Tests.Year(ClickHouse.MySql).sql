-- ClickHouse.MySql ClickHouse

SELECT
	toYear(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

