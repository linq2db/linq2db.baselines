BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDate(addMonths(t.DateTimeValue, -2))
FROM
	LinqDataTypes t

