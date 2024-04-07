BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addDays(t.DateTimeValue, toInt32(1))
FROM
	LinqDataTypes t

