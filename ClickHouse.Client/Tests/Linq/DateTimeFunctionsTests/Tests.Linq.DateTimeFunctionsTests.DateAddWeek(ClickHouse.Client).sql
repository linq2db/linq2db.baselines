BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addWeeks(t.DateTimeValue, toInt32(-1))
FROM
	LinqDataTypes t

