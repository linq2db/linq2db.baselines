BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	date_diff('hour', t.DateTimeValue, addHours(t.DateTimeValue, toFloat64(100)))
FROM
	LinqDataTypes t

