BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	toSecond(addSeconds(t.DateTimeValue, -35))
FROM
	LinqDataTypes t

