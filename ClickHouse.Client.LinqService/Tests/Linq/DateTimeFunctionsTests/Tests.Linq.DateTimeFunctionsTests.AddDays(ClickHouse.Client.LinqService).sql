BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDate32(addDays(t.DateTimeValue, toFloat64(5)))
FROM
	LinqDataTypes t

