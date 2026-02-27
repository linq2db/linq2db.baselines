-- ClickHouse.MySql ClickHouse

SELECT
	toFloat64(date_diff('day', t.DateTimeValue, addHours(t.DateTimeValue, toFloat64(100))))
FROM
	LinqDataTypes t

