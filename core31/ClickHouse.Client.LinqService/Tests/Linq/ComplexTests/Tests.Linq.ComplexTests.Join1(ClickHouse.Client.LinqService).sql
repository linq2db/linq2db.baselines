BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1,
	c_1.ParentID,
	c_1.ChildID,
	g_1.ParentID,
	g_1.ChildID,
	g_1.GrandChildID
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
		INNER JOIN GrandChild g_1 ON p.ParentID = g_1.ParentID
WHERE
	(((c_1.ParentID = toInt32(2) OR c_1.ParentID = toInt32(3)) AND (g_1.ChildID <> toInt32(21) OR g_1.ChildID IS NULL) AND (g_1.ChildID <> toInt32(33) OR g_1.ChildID IS NULL) OR g_1.ParentID = toInt32(3) AND g_1.ChildID = toInt32(32)) OR g_1.ChildID = toInt32(11))

