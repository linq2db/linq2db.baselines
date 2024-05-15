BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	makeDateTime(2010, t.ID, 1, 0, 0, 0)
FROM
	LinqDataTypes t
WHERE
	toYear(makeDateTime(2010, t.ID, 1, 0, 0, 0)) = 2010

