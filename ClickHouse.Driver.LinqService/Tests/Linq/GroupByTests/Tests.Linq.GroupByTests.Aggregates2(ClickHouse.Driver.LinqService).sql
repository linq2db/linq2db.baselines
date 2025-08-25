BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	sum(g_1.ChildID),
	min(g_1.ChildID),
	max(g_1.ChildID),
	avg(g_1.ChildID),
	COUNT(*)
FROM
	Child g_1
GROUP BY
	g_1.ParentID

