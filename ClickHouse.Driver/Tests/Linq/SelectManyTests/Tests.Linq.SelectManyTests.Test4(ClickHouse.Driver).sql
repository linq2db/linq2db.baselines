-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	Parent t1
		INNER JOIN GrandChild g_1 ON t1.ParentID = g_1.ParentID
		INNER JOIN Child c_1 ON g_1.ChildID = c_1.ChildID
		INNER JOIN LinqDataTypes t ON c_1.ParentID = t.ID

