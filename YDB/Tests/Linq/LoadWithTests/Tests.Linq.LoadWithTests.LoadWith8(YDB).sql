-- YDB Ydb
SELECT
	a_GrandChildren.ParentID as ParentID,
	a_GrandChildren.ChildID as ChildID,
	a_GrandChildren.GrandChildID as GrandChildID,
	t1.ParentID as ParentID_1,
	t1.ChildID as ChildID_1,
	t1.ParentID_1 as ParentID_2,
	t1.Value1 as Value1
FROM
	GrandChild p
		LEFT JOIN Child a_Child ON p.ParentID = a_Child.ParentID AND p.ChildID = a_Child.ChildID
		INNER JOIN GrandChild a_GrandChildren ON a_Child.ParentID = a_GrandChildren.ParentID
		LEFT JOIN (
			SELECT
				a_Child_1.ParentID as ParentID,
				a_Child_1.ChildID as ChildID,
				a_Parent.ParentID as ParentID_1,
				a_Parent.Value1 as Value1
			FROM
				Child a_Child_1
					LEFT JOIN Parent a_Parent ON a_Child_1.ParentID = a_Parent.ParentID
		) t1 ON a_GrandChildren.ParentID = t1.ParentID AND a_GrandChildren.ChildID = t1.ChildID
WHERE
	a_Child.ChildID = a_GrandChildren.ChildID OR a_Child.ChildID IS NULL AND a_GrandChildren.ChildID IS NULL
LIMIT 1

