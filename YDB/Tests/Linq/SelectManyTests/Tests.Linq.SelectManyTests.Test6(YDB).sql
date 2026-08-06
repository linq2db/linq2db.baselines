-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Parent t2
		CROSS JOIN (
			SELECT
				a_Child.ParentID as ParentID,
				a_Child.ChildID as ChildID
			FROM
				GrandChild g_1
					LEFT JOIN Child a_Child ON g_1.ParentID = a_Child.ParentID AND g_1.ChildID = a_Child.ChildID
		) t1
		CROSS JOIN Parent c_1

