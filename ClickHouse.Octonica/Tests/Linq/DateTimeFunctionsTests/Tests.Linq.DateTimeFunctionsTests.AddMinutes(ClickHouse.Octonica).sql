BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addMinutes(t.DateTimeValue, toFloat64(-8))
FROM
	LinqDataTypes t

