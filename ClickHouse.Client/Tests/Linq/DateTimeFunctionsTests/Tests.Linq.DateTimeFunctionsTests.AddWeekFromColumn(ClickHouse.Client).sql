BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDate(addWeeks(t.DateTimeValue, t.SmallIntValue))
FROM
	LinqDataTypes t

