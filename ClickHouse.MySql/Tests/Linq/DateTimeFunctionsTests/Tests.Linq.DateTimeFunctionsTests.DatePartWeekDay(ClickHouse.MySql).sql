-- ClickHouse.MySql ClickHouse

SELECT
	toDayOfWeek(addDays(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

