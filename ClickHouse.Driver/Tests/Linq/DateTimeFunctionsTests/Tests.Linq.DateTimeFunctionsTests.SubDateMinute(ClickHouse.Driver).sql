-- ClickHouse.Driver ClickHouse

SELECT
	toFloat64(date_diff('minute', t.DateTimeValue, addMinutes(t.DateTimeValue, toFloat64(100))))
FROM
	LinqDataTypes t

