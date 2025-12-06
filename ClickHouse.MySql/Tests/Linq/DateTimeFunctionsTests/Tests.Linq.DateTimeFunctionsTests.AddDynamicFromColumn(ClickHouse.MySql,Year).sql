-- ClickHouse.MySql ClickHouse

SELECT
	addYears(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

