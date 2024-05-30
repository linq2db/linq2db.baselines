BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate(addDays(t.DateTimeValue, 3))
FROM
	LinqDataTypes t

