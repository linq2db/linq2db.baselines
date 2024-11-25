BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate32(addMonths(t.DateTimeValue, 2))
FROM
	LinqDataTypes t

