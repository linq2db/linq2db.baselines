BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toInt32(date_diff('day', t.DateTimeValue, addHours(t.DateTimeValue, toFloat64(100))))
FROM
	LinqDataTypes t

