BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addHours(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

