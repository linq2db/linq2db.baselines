BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addDays(t.DateTimeValue, toFloat64(5))
FROM
	LinqDataTypes t

