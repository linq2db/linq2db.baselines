BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDate32(addWeeks(t.DateTimeValue, -1))
FROM
	LinqDataTypes t

