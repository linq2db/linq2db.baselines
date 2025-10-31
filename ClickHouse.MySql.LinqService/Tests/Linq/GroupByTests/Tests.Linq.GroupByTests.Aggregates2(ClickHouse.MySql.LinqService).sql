BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	sumOrNull(g_1.ChildID),
	minOrNull(g_1.ChildID),
	maxOrNull(g_1.ChildID),
	avgOrNull(g_1.ChildID),
	COUNT(*)
FROM
	Child g_1
GROUP BY
	g_1.ParentID

