-- YDB Ydb
SELECT DISTINCT
	g_1.ParentID as ParentID
FROM
	Child gc
		INNER JOIN GrandChild g_1 ON gc.ParentID = g_1.ParentID AND gc.ChildID = g_1.ChildID

