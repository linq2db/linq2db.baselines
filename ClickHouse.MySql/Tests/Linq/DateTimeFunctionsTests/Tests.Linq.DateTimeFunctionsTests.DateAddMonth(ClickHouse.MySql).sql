BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate(addMonths(t.DateTimeValue, 2))
FROM
	LinqDataTypes t

