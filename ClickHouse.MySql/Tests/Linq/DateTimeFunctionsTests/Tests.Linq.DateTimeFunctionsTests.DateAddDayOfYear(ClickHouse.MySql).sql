BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addDays(t.DateTimeValue, toInt32(3))
FROM
	LinqDataTypes t

