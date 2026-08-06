-- ClickHouse.Octonica ClickHouse
SELECT
	(toFloat64(g_2.CountPercents) * toFloat64(100)) / SUM(g_2.CountPercents) OVER (),
	g_2.Sum_1
FROM
	(
		SELECT
			COUNT(*) as CountPercents,
			SUM(g_1.ParentID) as Sum_1
		FROM
			Child g_1
		GROUP BY
			g_1.ParentID
		HAVING
			SUM(g_1.ParentID) <> 36
	) g_2

