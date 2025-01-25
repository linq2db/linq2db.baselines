BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate(addDays(t.DateTimeValue, toFloat64(5)))
FROM
	LinqDataTypes t

