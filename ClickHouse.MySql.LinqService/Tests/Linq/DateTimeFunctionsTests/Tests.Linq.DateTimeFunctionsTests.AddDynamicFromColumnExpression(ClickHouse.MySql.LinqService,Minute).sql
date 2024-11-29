BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addMinutes(t.DateTimeValue, toInt32(t.SmallIntValue))
FROM
	LinqDataTypes t

