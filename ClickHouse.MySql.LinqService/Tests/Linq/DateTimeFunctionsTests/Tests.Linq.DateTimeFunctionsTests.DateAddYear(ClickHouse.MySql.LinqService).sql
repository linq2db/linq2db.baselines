BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toDate32(addYears(t.DateTimeValue, 11))
FROM
	LinqDataTypes t

