BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addWeeks(t.DateTimeValue, toInt32(-1))
FROM
	LinqDataTypes t

