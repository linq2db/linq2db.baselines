BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addDays(t.DateTimeValue, toInt32(5))
FROM
	LinqDataTypes t

