BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	makeDateTime(2010 + t.ID, 1, 1, 0, 0, 0)
FROM
	LinqDataTypes t

