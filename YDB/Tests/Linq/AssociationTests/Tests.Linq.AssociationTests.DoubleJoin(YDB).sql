-- YDB Ydb
SELECT
	g_1.ParentID as ParentID,
	g_1.ChildID as ChildID,
	g_1.GrandChildID as GrandChildID
FROM
	GrandChild g_1
		LEFT JOIN (
			SELECT
				a_Parent.Value1 as Value1,
				a_Child.ParentID as ParentID,
				a_Child.ChildID as ChildID
			FROM
				Child a_Child
					LEFT JOIN Parent a_Parent ON a_Child.ParentID = a_Parent.ParentID
		) t1 ON g_1.ParentID = t1.ParentID AND g_1.ChildID = t1.ChildID
WHERE
	t1.Value1 = 1

