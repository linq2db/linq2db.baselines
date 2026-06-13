-- YDB Ydb

SELECT
	a_Child.ParentID as ParentID,
	g_1.GrandChildID as GrandChildID
FROM
	GrandChild g_1
		INNER JOIN Child a_Child ON g_1.ParentID = a_Child.ParentID AND g_1.ChildID = a_Child.ChildID

