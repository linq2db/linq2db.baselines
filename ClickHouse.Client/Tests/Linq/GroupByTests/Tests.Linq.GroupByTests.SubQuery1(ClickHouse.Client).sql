BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	g_2.c1
FROM
	(
		SELECT
			g_1.ParentID + 1 as c1
		FROM
			Child g_1
		WHERE
			g_1.ParentID > 0
	) g_2
GROUP BY
	g_2.c1

