BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	addDays(t.DateTimeValue, toFloat64(5))
FROM
	LinqDataTypes t

