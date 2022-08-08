BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addMinutes(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

