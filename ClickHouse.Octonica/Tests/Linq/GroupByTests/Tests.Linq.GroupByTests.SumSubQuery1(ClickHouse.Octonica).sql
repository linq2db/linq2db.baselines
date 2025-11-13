-- ClickHouse.Octonica ClickHouse

SELECT
	sumOrNull(g_2.ParentID - 3)
FROM
	(
		SELECT
			g_1.ParentID + 1 as ParentID,
			g_1.ChildID as ChildID
		FROM
			Child g_1
		WHERE
			g_1.ParentID > -1
	) g_2
GROUP BY
	g_2.ParentID,
	g_2.ChildID

