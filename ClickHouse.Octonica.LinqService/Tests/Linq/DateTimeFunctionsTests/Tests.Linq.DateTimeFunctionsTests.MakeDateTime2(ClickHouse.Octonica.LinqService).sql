BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			makeDateTime(2010, p.ID, 1, 20, 35, 44) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	toYear(t.c1) = 2010

