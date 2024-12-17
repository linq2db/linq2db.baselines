BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addHours(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

