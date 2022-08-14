BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addQuarters(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

