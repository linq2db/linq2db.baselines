BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toInt32(date_diff('hour', t.DateTimeValue, addHours(t.DateTimeValue, toFloat64(100))))
FROM
	LinqDataTypes t

