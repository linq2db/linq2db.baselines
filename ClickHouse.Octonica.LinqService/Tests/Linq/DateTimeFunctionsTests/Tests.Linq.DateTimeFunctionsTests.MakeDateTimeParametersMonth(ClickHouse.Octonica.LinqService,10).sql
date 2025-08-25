BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	makeDateTime(2010 + t.ID, 10, 1, 0, 0, 0)
FROM
	LinqDataTypes t

