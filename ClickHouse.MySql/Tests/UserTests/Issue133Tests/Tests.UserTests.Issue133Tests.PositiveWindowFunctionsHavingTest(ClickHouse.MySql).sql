BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	(toFloat64(t2.COUNT_1) * toFloat64(100)) / SUM(t2.COUNT_1) OVER(),
	t2.SUM_1
FROM
	(
		SELECT
			COUNT(*) as COUNT_1,
			sumOrNull(t1.ParentID) as SUM_1
		FROM
			Child t1
		GROUP BY
			t1.ParentID
		HAVING
			(sumOrNull(t1.ParentID) <> 36 OR sumOrNull(t1.ParentID) IS NULL)
	) t2

