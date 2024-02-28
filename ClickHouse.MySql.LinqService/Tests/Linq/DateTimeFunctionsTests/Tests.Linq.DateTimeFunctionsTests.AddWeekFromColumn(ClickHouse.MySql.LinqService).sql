BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addWeeks(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

