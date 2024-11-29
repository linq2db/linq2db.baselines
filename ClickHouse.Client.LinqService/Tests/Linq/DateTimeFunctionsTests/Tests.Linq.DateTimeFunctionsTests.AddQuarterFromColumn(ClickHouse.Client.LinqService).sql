BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDate32(addQuarters(t.DateTimeValue, t.SmallIntValue))
FROM
	LinqDataTypes t

