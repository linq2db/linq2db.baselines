BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addDays(t.DateTimeValue, toFloat64(5))
FROM
	LinqDataTypes t

