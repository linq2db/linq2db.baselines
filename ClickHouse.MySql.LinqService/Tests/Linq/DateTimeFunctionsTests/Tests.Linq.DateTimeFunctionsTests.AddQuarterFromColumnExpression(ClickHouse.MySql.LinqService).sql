BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate32(addQuarters(t.DateTimeValue, toInt32(t.SmallIntValue)))
FROM
	LinqDataTypes t

