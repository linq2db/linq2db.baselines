BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate(addWeeks(t.DateTimeValue, t.SmallIntValue))
FROM
	LinqDataTypes t

