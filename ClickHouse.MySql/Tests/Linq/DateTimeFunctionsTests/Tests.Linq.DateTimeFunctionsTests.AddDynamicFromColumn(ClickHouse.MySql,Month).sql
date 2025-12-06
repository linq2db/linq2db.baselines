-- ClickHouse.MySql ClickHouse

SELECT
	addMonths(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

