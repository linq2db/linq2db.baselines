BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	maxOrNull(g_1.ChildID),
	maxOrNull(g_1.ChildID + g_1.ParentID)
FROM
	Child g_1
GROUP BY
	g_1.ParentID

