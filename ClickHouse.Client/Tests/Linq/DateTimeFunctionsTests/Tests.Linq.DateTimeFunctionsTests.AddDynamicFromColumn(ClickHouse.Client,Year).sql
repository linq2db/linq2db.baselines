BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addYears(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

