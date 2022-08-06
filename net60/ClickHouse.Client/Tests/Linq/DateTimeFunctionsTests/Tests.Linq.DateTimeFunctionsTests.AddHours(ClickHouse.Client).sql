BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	HOUR(addHours(t.DateTimeValue, toFloat64(22)))
FROM
	LinqDataTypes t

