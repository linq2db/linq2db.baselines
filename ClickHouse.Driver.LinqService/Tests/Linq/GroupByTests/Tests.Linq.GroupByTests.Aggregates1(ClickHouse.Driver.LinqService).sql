BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	COUNT(*),
	sumOrNull(g_1.ChildID),
	minOrNull(g_1.ChildID),
	maxOrNull(g_1.ChildID),
	avgOrNull(g_1.ChildID)
FROM
	Child g_1
GROUP BY
	g_1.ParentID

