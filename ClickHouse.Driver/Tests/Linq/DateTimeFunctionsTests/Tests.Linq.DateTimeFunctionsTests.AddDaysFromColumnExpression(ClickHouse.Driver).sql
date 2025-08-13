BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	addDays(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

