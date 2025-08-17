BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	toMinute(t.DateTimeValue) % 7
FROM
	LinqDataTypes t

