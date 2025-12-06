-- ClickHouse.MySql ClickHouse

SELECT
	toMinute(addMinutes(t.DateTimeValue, toFloat64(-8)))
FROM
	LinqDataTypes t

