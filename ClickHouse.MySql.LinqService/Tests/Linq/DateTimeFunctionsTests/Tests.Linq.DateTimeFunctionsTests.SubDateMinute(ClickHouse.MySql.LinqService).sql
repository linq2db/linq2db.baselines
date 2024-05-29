BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	date_diff('minute', t.DateTimeValue, addMinutes(t.DateTimeValue, toFloat64(100)))
FROM
	LinqDataTypes t

