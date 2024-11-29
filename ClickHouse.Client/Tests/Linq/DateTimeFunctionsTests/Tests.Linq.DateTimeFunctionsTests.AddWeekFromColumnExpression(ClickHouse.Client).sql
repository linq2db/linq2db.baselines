BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toDate32(addWeeks(t.DateTimeValue, toInt32(t.SmallIntValue)))
FROM
	LinqDataTypes t

