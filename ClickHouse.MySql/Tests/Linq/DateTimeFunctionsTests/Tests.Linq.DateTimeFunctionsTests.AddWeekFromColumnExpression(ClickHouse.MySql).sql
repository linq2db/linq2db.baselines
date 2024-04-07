BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addWeeks(t.DateTimeValue, toInt32(t.SmallIntValue))
FROM
	LinqDataTypes t

