BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toInt32(date_diff('second', t.DateTimeValue, addMinutes(t.DateTimeValue, toFloat64(100))))
FROM
	LinqDataTypes t

