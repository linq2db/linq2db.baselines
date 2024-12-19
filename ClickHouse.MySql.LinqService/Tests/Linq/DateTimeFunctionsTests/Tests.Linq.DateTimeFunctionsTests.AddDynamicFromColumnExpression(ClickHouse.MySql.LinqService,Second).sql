BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addSeconds(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

