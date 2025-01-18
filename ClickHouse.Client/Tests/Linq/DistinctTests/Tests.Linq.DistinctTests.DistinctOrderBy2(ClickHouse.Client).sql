BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t2.F2
FROM
	(
		SELECT DISTINCT
			t1.F1 as F1,
			t1.F2 as F2
		FROM
			DistinctOrderByTable t1
	) t2
ORDER BY
	t2.F1 DESC

