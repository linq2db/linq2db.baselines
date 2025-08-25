BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	DAYOFWEEK(addDays(t.DateTimeValue, 1))
FROM
	LinqDataTypes t

