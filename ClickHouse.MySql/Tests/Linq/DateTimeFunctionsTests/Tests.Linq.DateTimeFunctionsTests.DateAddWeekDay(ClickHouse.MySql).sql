BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate(addDays(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

