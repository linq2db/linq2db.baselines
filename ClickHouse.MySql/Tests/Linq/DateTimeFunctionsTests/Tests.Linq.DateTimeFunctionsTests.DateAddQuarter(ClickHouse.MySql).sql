-- ClickHouse.MySql ClickHouse

SELECT
	toDate32(addQuarters(t.DateTimeValue, -1))
FROM
	LinqDataTypes t

