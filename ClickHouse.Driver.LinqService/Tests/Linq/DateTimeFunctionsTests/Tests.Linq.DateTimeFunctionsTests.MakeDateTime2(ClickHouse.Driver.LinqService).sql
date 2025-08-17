BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	makeDateTime(2010, t.ID, 1, 20, 35, 44)
FROM
	LinqDataTypes t
WHERE
	toYear(makeDateTime(2010, t.ID, 1, 20, 35, 44)) = 2010

