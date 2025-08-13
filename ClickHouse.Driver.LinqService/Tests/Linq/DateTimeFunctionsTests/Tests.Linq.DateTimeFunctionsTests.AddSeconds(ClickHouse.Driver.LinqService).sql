BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	toSecond(addSeconds(t.DateTimeValue, toFloat64(-35)))
FROM
	LinqDataTypes t

