-- YDB Ydb

SELECT
	c_1.ParentID as ParentID,
	t1.GrandChildID as GrandChildID
FROM
	Child c_1
		INNER JOIN (
			SELECT
				a_Child.ParentID as ParentID,
				a_Child.ChildID as ChildID,
				g_1.GrandChildID as GrandChildID
			FROM
				GrandChild g_1
					LEFT JOIN Child a_Child ON g_1.ParentID = a_Child.ParentID AND g_1.ChildID = a_Child.ChildID
		) t1 ON c_1.ParentID = t1.ParentID AND c_1.ChildID = t1.ChildID

-- YDB Ydb

SELECT
	c_1.ParentID as ParentID,
	t1.GrandChildID as GrandChildID
FROM
	Child c_1
		INNER JOIN (
			SELECT
				a_Child.ParentID as ParentID,
				a_Child.ChildID as ChildID,
				g_1.GrandChildID as GrandChildID
			FROM
				GrandChild g_1
					LEFT JOIN Child a_Child ON g_1.ParentID = a_Child.ParentID AND g_1.ChildID = a_Child.ChildID
		) t1 ON c_1.ParentID = t1.ParentID AND c_1.ChildID = t1.ChildID

