BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	g_2.c1
FROM
	(
		SELECT
			minOrNull(CASE
				WHEN g_1.ParentID > 2 THEN g_1.ChildID
				ELSE NULL
			END) as cond,
			minOrNull(CASE
				WHEN g_1.ParentID > 2 THEN g_1.ChildID
				ELSE NULL
			END) as c1
		FROM
			Child g_1
		GROUP BY
			g_1.ParentID
	) g_2
WHERE
	g_2.cond IS NOT NULL

