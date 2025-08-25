BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	makeDateTime(toYear(p.DateTimeValue), 10, 1, 0, 0, 0)
FROM
	LinqDataTypes p

