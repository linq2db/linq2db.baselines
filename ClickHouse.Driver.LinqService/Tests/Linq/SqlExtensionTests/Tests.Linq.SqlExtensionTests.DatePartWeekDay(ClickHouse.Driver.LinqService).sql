BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	DAYOFWEEK(addDays(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

