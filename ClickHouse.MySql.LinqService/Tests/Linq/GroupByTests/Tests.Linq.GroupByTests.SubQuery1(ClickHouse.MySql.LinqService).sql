BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	g_2.Key_1
FROM
	(
		SELECT
			g_1.ParentID + 1 as Key_1
		FROM
			Child g_1
		WHERE
			g_1.ParentID > 0
	) g_2
GROUP BY
	g_2.Key_1

