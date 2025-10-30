BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*),
	maxOrNull(g_1.ChildID)
FROM
	Child g_1
GROUP BY
	g_1.ParentID

