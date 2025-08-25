BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toYear(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

