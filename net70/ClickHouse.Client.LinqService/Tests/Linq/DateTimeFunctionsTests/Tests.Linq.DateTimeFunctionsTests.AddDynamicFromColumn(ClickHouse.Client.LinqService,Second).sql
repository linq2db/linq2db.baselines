BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addSeconds(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

