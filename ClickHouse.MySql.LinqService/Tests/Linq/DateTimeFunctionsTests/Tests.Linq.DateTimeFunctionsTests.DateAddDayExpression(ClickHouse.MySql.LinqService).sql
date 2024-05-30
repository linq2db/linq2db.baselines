BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate(addDays(t.DateTimeValue, 5))
FROM
	LinqDataTypes t

