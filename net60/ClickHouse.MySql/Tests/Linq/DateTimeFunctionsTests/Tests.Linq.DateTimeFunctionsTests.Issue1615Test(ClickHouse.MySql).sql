BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addDays(t.DateTimeValue, toInt32(5))
FROM
	LinqDataTypes t

