BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toInt32(date_diff('minute', t.DateTimeValue, addMinutes(t.DateTimeValue, toFloat64(100))))
FROM
	LinqDataTypes t

