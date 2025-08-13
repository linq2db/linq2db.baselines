BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	addMonths(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

