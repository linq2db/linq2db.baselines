-- ClickHouse.MySql ClickHouse

SELECT
	toMinute(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

