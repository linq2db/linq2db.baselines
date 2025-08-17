BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	o.ParentID,
	o.Value1,
	c_1.ParentID,
	c_1.ChildID,
	g_1.ParentID,
	g_1.ChildID,
	g_1.GrandChildID
FROM
	Parent o
		INNER JOIN Child c_1 ON o.ParentID = c_1.ChildID
		INNER JOIN GrandChild g_1 ON o.ParentID = g_1.ParentID
WHERE
	o.ParentID = 1 AND c_1.ChildID > 0

