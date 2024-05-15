BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate(addQuarters(t.DateTimeValue, -1))
FROM
	LinqDataTypes t

