BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	g_1.ParentID,
	g_1.Value1
FROM
	Child c_1
		LEFT OUTER JOIN Parent g_1 ON c_1.ParentID = g_1.ParentID

