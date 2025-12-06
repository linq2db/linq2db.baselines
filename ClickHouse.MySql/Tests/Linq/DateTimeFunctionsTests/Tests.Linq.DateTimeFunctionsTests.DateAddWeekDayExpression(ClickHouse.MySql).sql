-- ClickHouse.MySql ClickHouse

SELECT
	toDate32(addDays(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

