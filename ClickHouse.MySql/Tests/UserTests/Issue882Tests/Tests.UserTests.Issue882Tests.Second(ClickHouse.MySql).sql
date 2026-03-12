-- ClickHouse.MySql ClickHouse

SELECT
	toSecond(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

