BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	HOUR(addHours(t.DateTimeValue, toFloat64(22)))
FROM
	LinqDataTypes t

