BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	DAYOFWEEK(addDays(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

