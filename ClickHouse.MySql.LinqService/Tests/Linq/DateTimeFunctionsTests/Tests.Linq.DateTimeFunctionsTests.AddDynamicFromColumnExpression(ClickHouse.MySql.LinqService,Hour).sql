BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addHours(t.DateTimeValue, toInt32(t.SmallIntValue))
FROM
	LinqDataTypes t

