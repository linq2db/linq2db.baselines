BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addMinutes(t.DateTimeValue, toFloat64(-8))
FROM
	LinqDataTypes t

