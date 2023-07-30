BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addMonths(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

