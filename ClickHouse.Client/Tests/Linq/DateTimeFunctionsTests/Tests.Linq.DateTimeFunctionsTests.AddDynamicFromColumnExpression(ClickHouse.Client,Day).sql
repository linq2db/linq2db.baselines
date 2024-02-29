BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addDays(t.DateTimeValue, toInt32(t.SmallIntValue))
FROM
	LinqDataTypes t

