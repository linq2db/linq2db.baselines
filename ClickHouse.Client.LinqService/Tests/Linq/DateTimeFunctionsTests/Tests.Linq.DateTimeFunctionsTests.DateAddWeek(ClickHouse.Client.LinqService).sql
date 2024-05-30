BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDate(addWeeks(t.DateTimeValue, -1))
FROM
	LinqDataTypes t

