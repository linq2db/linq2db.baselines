-- ClickHouse.Octonica ClickHouse

SELECT
	toHour(addHours(t.DateTimeValue, toFloat64(22)))
FROM
	LinqDataTypes t

