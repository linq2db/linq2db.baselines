BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	g_1.ParentID,
	g_1.Value1
FROM
	Child c_1
		ALL LEFT JOIN Parent g_1 ON c_1.ParentID = g_1.ParentID

