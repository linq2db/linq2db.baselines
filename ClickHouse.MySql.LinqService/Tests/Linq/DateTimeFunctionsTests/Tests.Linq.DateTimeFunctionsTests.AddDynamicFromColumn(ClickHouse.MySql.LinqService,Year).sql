BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	addYears(t.DateTimeValue, t.SmallIntValue)
FROM
	LinqDataTypes t

