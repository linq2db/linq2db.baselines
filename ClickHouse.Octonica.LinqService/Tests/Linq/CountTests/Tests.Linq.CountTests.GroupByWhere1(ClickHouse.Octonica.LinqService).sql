BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	g_2.Key_1
FROM
	(
		SELECT
			g_1.ParentID as Key_1
		FROM
			Child g_1
		GROUP BY
			g_1.ParentID
	) g_2
WHERE
	g_2.Key_1 > 2

