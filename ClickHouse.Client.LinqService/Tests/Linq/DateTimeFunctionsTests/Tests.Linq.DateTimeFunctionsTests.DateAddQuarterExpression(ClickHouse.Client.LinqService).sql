BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDate(addQuarters(t.DateTimeValue, -1))
FROM
	LinqDataTypes t

