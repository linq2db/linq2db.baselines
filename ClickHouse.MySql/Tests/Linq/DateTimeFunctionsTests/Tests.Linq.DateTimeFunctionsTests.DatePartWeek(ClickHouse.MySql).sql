-- ClickHouse.MySql ClickHouse

SELECT
	toISOWeek(toDateTime64(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

