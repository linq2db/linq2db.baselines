BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addSeconds(t.DateTimeValue, toInt32(t.SmallIntValue))
FROM
	LinqDataTypes t

