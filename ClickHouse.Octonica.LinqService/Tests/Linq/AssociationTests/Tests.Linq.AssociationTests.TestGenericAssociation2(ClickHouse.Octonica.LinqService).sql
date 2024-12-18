BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.ParentID,
	t.Value1
FROM
	Parent t
		INNER JOIN GrandChild g_1 ON t.ParentID = g_1.ParentID AND g_1.ParentID IS NOT NULL
WHERE
	g_1.ChildID > 22 AND g_1.ChildID IS NOT NULL
ORDER BY
	g_1.ParentID

