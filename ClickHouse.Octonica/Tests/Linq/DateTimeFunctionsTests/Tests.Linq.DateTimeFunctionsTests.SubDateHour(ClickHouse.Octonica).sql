-- ClickHouse.Octonica ClickHouse

SELECT
	toFloat64(date_diff('hour', t.DateTimeValue, addHours(t.DateTimeValue, toFloat64(100))))
FROM
	LinqDataTypes t

