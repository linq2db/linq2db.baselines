-- ClickHouse.MySql ClickHouse

SELECT
	toMonth(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

