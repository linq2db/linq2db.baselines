-- ClickHouse.MySql ClickHouse

SELECT
	toMinute(addMinutes(t.DateTimeValue, 5))
FROM
	LinqDataTypes t

