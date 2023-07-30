BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addSeconds(t.DateTimeValue, toFloat64(-35))
FROM
	LinqDataTypes t

