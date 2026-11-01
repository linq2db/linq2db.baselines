-- YDB Ydb
SELECT
	a_GrandChildren2.ParentID as ParentID,
	a_GrandChildren2.ChildID as ChildID,
	a_GrandChildren2.GrandChildID as GrandChildID,
	t1.ParentID as ParentID_1,
	t1.ChildID as ChildID_1,
	t1.ParentID_1 as ParentID_2,
	t1.Value1 as Value1
FROM
	Child p
		INNER JOIN GrandChild a_GrandChildren2 ON p.ParentID = a_GrandChildren2.ParentID AND p.ChildID = a_GrandChildren2.ChildID
		LEFT JOIN (
			SELECT
				a_Child.ParentID as ParentID,
				a_Child.ChildID as ChildID,
				a_Parent.ParentID as ParentID_1,
				a_Parent.Value1 as Value1
			FROM
				Child a_Child
					LEFT JOIN Parent a_Parent ON a_Child.ParentID = a_Parent.ParentID
		) t1 ON a_GrandChildren2.ParentID = t1.ParentID AND a_GrandChildren2.ChildID = t1.ChildID
LIMIT 1

