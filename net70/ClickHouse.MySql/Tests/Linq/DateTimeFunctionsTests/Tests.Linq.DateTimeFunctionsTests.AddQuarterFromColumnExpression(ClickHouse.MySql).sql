BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addQuarters(t.DateTimeValue, toInt32(t.SmallIntValue))
FROM
	LinqDataTypes t

