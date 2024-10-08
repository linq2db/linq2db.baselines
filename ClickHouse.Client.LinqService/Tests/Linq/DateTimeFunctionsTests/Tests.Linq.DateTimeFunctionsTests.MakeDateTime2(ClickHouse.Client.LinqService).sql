BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t_1.c1
FROM
	(
		SELECT
			makeDateTime(2010, t.ID, 1, 20, 35, 44) as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	toYear(t_1.c1) = 2010

