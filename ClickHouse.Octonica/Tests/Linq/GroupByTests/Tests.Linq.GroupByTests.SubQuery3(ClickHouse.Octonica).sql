-- ClickHouse.Octonica ClickHouse

SELECT
	g_2.Key_1,
	sum(g_2.ParentID)
FROM
	(
		SELECT
			g_1.ChildID + 1 as Key_1,
			g_1.ParentID as ParentID
		FROM
			Child g_1
	) g_2
GROUP BY
	g_2.Key_1

